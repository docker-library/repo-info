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
-	[`docker:29.7.0`](#docker2970)
-	[`docker:29.7.0-alpine3.24`](#docker2970-alpine324)
-	[`docker:29.7.0-cli`](#docker2970-cli)
-	[`docker:29.7.0-cli-alpine3.24`](#docker2970-cli-alpine324)
-	[`docker:29.7.0-dind`](#docker2970-dind)
-	[`docker:29.7.0-dind-alpine3.24`](#docker2970-dind-alpine324)
-	[`docker:29.7.0-dind-rootless`](#docker2970-dind-rootless)
-	[`docker:29.7.0-windowsservercore`](#docker2970-windowsservercore)
-	[`docker:29.7.0-windowsservercore-ltsc2022`](#docker2970-windowsservercore-ltsc2022)
-	[`docker:29.7.0-windowsservercore-ltsc2025`](#docker2970-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:206ae9cc405101ab0cf97d4b515d21bf6aae961f98f7f9d8de6c111718fef335
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
$ docker pull docker@sha256:f1069150feb2fb4e09ed208e066c72518bda2fb6782266e294b359fa09408617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e343a1f8bc5fd359689d51bbf89480ae80ecdd370d011c723a3dd5df99a1e9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:f5915b9593bea9be7583a08eaa9c7af409aba68ebcc1408260454283bafbbc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c35753fd2a16f074d0387541243d71592298e44afbfab6bffc114dc008dafb`

```dockerfile
```

-	Layers:
	-	`sha256:3c783a962f9748ca6839e193ab465e19013cd6c4517b0a97622bedae4565a380`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:2a132c1feac0743bcd0ea63b4494a63db75986e32a72a0a674cd83feb799fe31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62040145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425a379de68fd272f715201dda75d1a9e146434215021c97485d4bbd75830bfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:4db770e4d2ec0b64818dfccf1e6a6347d9db2534c234ece017ffdf076eb8a48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09db817b5d8f0d41f2211c74b057908a1eee4d580d8579f65b35ce3a0ee01747`

```dockerfile
```

-	Layers:
	-	`sha256:849c46f147802085723dfa61160b6f64dc1b0935c0f08743935dada09843b6bc`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4a500ea980f7ab09bef93e39baa8f4acfb6041ba07ea281bdba7e78292d0a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60999466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f73093d1c9a96a7726a0cffedd3a44f7021b6a0954d574c3a768ac46ad32440`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:67c897cf0ac713eb7f70df139741fbbf3a0944dcc21580a38470685f4ddfb04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a61aeccf2a1b36343e2e5de0c0054e1193f7c94a646e655a7db167266ca6d31`

```dockerfile
```

-	Layers:
	-	`sha256:bef528d98cac2a6c0f1a47cdd9d2238b4ec347513e38dacbc85a9b0f11bcc96b`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c1f88946de93f65e482b7559d2f3db8d2acf726478bc3cde231138f481a3c393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61410124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0140b790251737858d352380a6daa51c7e251286ea72663595b559c2fd2ffc9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:205690000e4fe4f931ec88ade6bba3427e5fe2ce3e9e6e0acb67ea4e277fc2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd2719aacb1a1368a0b1fac9c0750580d58c8b190854e9fab8875fc0b13b105`

```dockerfile
```

-	Layers:
	-	`sha256:19a1fe27e6a95ecfbc17a7a2ce6c4dfd1ca08154d84cc459d810dd722ad1eec6`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:9da1f7d442f2de6cd9a0b70162117120273c0fbcca7fcc30f6be6eae24746819
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:85915c98630998ed1f49320cdf5b72c01696835d2091fb9f6e7c7e53ac4592c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155818811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f838bad6d38e8f053e2539e9f9d82df123ef45feea11514aff4d2c151c1440`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
# Fri, 31 Jul 2026 18:10:27 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 31 Jul 2026 18:10:27 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbd585421a0d28052ac5a643cf0320766103f124b405e29ec6b27743073fad5`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 3.5 MB (3471308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd95c36bb4ae0e7cbed92688cd9baca8745a15165a57c03bb389bcd722aaacc`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224738e03992c81f59ac2d33cd37b3cb2f58adbfccdcdd66e3e105c963dd283d`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7327344bb1a6254c69df9192388c651f1da0d23e75bea029204055a2972aab9d`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 12.1 MB (12107033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e869dc1a1e590268087d0a579f881b344f37908a8c1979e9441737f5ff6a3fd6`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:38aee032d56a91d779043121edc1b0fae4d67f54e6f76536f6254a477d68457f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74271f37194c2020501aa5857807e9bab4af78a529de1a521a4dd766bfe2a5`

```dockerfile
```

-	Layers:
	-	`sha256:726312fa364c224bdc33b6e4a7bb45ef69544f2437a39d57a38c265e65f2ac9a`  
		Last Modified: Fri, 31 Jul 2026 18:10:32 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:26e7513dbec377d23f7ba478ddd368bf4bd53a5c92a5b5345156f22edf68779a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144529091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d83171d4b1006ef13c538ac7e281716b7f9f91e2ffbc9c800270a7b12828f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
# Fri, 31 Jul 2026 18:10:27 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 31 Jul 2026 18:10:28 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1e406938e474acb54c0d298b1c1b3d7bac7adf29e0f82d5d98f89deb769502`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 3.4 MB (3448904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd95c36bb4ae0e7cbed92688cd9baca8745a15165a57c03bb389bcd722aaacc`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951ad2a302c8e41c0908fb49557399fa6382c19e93a8e36f8e4f5f5edbb3087c`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1814215c83a94e565bb3cfc76e1613ba7525f5dd2b339002e6418388db04b9e5`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 11.2 MB (11240090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154103e60614e61c0615163f578cbc9563580b5e1ca33eee332b0e4d6401a67a`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:ed739249447f189cca6ad146404db16256a6699b78d649f7d355a6f60dae9894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a00e041692844afb93f702bf9606b5df2dde74ddabb2f2d04c5540f61da7bc`

```dockerfile
```

-	Layers:
	-	`sha256:8a8300d8f5bb61024b938c2524099f60193637412ea689fdc275ab81d57d2368`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:867bc4c9e8cf64d73ae1676ea1f124035a4b58c5bf2774560d5fbe0af016d6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9bdcd882f8835060628c368bb52f81bc552a40b23b4ef7e5bd05b4b07ef4e841
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411476156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7920d8375f0f42316f4cb9c8b86590a8d288acfbb20b26f5781d3eb260e3c80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 16:30:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:31:58 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:31:58 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:31:59 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:32:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:18 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:32:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:32:39 GMT
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
	-	`sha256:e3ca9754f76738fde5151a13e0ed40584bf9323baf53a272c0df9c6f7e03fbcb`  
		Last Modified: Fri, 31 Jul 2026 16:32:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae37f855d4c5ea566501c403c5cb3f67d9b149838ead3bbed0fbb8e1fae3ece`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 383.0 KB (382981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d533c67ab95a14619f85cca421f528e96b862b791cd0bf21cc026008b374c`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745516846e343e8720bb6b7501d64f046aea13fb46108861085979f3d264dcf5`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90931dc7680a5304d2304c52243f204f0735b7711026c57490c8e11ea8d65f2`  
		Last Modified: Fri, 31 Jul 2026 16:32:50 GMT  
		Size: 20.2 MB (20214108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab96640ea0853c0764d57e9965c2b4ca47a136de1d6cc4b1950b6028880fca4`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91fe2367e8b28192c1fe78661c0ce248f1a3b7b77da1f6884de57612d0f374`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59194e8073320790f2a730b86174561b88f92933a4a79a01f939b9f0494a9fa`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d545ba1200cf2090bda893bc76f3696abf73c0972c64aa1b5ff3d62bcdc48f2e`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 23.8 MB (23831314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a64050a426942cac116241920b5fb2c14cdbb7856e8160daa84032886d997`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4ed4c1190051d6649214f34035aafed07e37abc1d305ee0ee34d5ca404ba`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408924cb33c76dc6f7d8d244b9fd6f7e4fa81bd74926a9138849f10d3f9835bc`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f792bb7ac889191f625a399a2ef22c786a8ce59d631e9b14e43ea0c626a4ffe`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 12.0 MB (12027910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
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
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:acff7e7ef34c79e30ae6653f05d15b433ba86f8c3cdd3e08f33cd7908ee96e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
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
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:0eb9c1bfe0a2086b039e6d0556ec5b0b5ee614ff0b64ee9fd7ec4de7f40a4512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9bdcd882f8835060628c368bb52f81bc552a40b23b4ef7e5bd05b4b07ef4e841
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411476156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7920d8375f0f42316f4cb9c8b86590a8d288acfbb20b26f5781d3eb260e3c80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 16:30:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:31:58 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:31:58 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:31:59 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:32:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:18 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:32:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:32:39 GMT
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
	-	`sha256:e3ca9754f76738fde5151a13e0ed40584bf9323baf53a272c0df9c6f7e03fbcb`  
		Last Modified: Fri, 31 Jul 2026 16:32:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae37f855d4c5ea566501c403c5cb3f67d9b149838ead3bbed0fbb8e1fae3ece`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 383.0 KB (382981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d533c67ab95a14619f85cca421f528e96b862b791cd0bf21cc026008b374c`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745516846e343e8720bb6b7501d64f046aea13fb46108861085979f3d264dcf5`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90931dc7680a5304d2304c52243f204f0735b7711026c57490c8e11ea8d65f2`  
		Last Modified: Fri, 31 Jul 2026 16:32:50 GMT  
		Size: 20.2 MB (20214108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab96640ea0853c0764d57e9965c2b4ca47a136de1d6cc4b1950b6028880fca4`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91fe2367e8b28192c1fe78661c0ce248f1a3b7b77da1f6884de57612d0f374`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59194e8073320790f2a730b86174561b88f92933a4a79a01f939b9f0494a9fa`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d545ba1200cf2090bda893bc76f3696abf73c0972c64aa1b5ff3d62bcdc48f2e`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 23.8 MB (23831314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a64050a426942cac116241920b5fb2c14cdbb7856e8160daa84032886d997`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4ed4c1190051d6649214f34035aafed07e37abc1d305ee0ee34d5ca404ba`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408924cb33c76dc6f7d8d244b9fd6f7e4fa81bd74926a9138849f10d3f9835bc`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f792bb7ac889191f625a399a2ef22c786a8ce59d631e9b14e43ea0c626a4ffe`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 12.0 MB (12027910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-cli`

```console
$ docker pull docker@sha256:206ae9cc405101ab0cf97d4b515d21bf6aae961f98f7f9d8de6c111718fef335
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
$ docker pull docker@sha256:f1069150feb2fb4e09ed208e066c72518bda2fb6782266e294b359fa09408617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e343a1f8bc5fd359689d51bbf89480ae80ecdd370d011c723a3dd5df99a1e9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:f5915b9593bea9be7583a08eaa9c7af409aba68ebcc1408260454283bafbbc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c35753fd2a16f074d0387541243d71592298e44afbfab6bffc114dc008dafb`

```dockerfile
```

-	Layers:
	-	`sha256:3c783a962f9748ca6839e193ab465e19013cd6c4517b0a97622bedae4565a380`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:2a132c1feac0743bcd0ea63b4494a63db75986e32a72a0a674cd83feb799fe31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62040145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425a379de68fd272f715201dda75d1a9e146434215021c97485d4bbd75830bfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:4db770e4d2ec0b64818dfccf1e6a6347d9db2534c234ece017ffdf076eb8a48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09db817b5d8f0d41f2211c74b057908a1eee4d580d8579f65b35ce3a0ee01747`

```dockerfile
```

-	Layers:
	-	`sha256:849c46f147802085723dfa61160b6f64dc1b0935c0f08743935dada09843b6bc`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4a500ea980f7ab09bef93e39baa8f4acfb6041ba07ea281bdba7e78292d0a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60999466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f73093d1c9a96a7726a0cffedd3a44f7021b6a0954d574c3a768ac46ad32440`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:67c897cf0ac713eb7f70df139741fbbf3a0944dcc21580a38470685f4ddfb04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a61aeccf2a1b36343e2e5de0c0054e1193f7c94a646e655a7db167266ca6d31`

```dockerfile
```

-	Layers:
	-	`sha256:bef528d98cac2a6c0f1a47cdd9d2238b4ec347513e38dacbc85a9b0f11bcc96b`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c1f88946de93f65e482b7559d2f3db8d2acf726478bc3cde231138f481a3c393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61410124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0140b790251737858d352380a6daa51c7e251286ea72663595b559c2fd2ffc9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:205690000e4fe4f931ec88ade6bba3427e5fe2ce3e9e6e0acb67ea4e277fc2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd2719aacb1a1368a0b1fac9c0750580d58c8b190854e9fab8875fc0b13b105`

```dockerfile
```

-	Layers:
	-	`sha256:19a1fe27e6a95ecfbc17a7a2ce6c4dfd1ca08154d84cc459d810dd722ad1eec6`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-dind`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-dind-rootless`

```console
$ docker pull docker@sha256:9da1f7d442f2de6cd9a0b70162117120273c0fbcca7fcc30f6be6eae24746819
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.7-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:85915c98630998ed1f49320cdf5b72c01696835d2091fb9f6e7c7e53ac4592c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155818811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f838bad6d38e8f053e2539e9f9d82df123ef45feea11514aff4d2c151c1440`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
# Fri, 31 Jul 2026 18:10:27 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 31 Jul 2026 18:10:27 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbd585421a0d28052ac5a643cf0320766103f124b405e29ec6b27743073fad5`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 3.5 MB (3471308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd95c36bb4ae0e7cbed92688cd9baca8745a15165a57c03bb389bcd722aaacc`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224738e03992c81f59ac2d33cd37b3cb2f58adbfccdcdd66e3e105c963dd283d`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7327344bb1a6254c69df9192388c651f1da0d23e75bea029204055a2972aab9d`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 12.1 MB (12107033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e869dc1a1e590268087d0a579f881b344f37908a8c1979e9441737f5ff6a3fd6`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:38aee032d56a91d779043121edc1b0fae4d67f54e6f76536f6254a477d68457f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74271f37194c2020501aa5857807e9bab4af78a529de1a521a4dd766bfe2a5`

```dockerfile
```

-	Layers:
	-	`sha256:726312fa364c224bdc33b6e4a7bb45ef69544f2437a39d57a38c265e65f2ac9a`  
		Last Modified: Fri, 31 Jul 2026 18:10:32 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:26e7513dbec377d23f7ba478ddd368bf4bd53a5c92a5b5345156f22edf68779a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144529091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d83171d4b1006ef13c538ac7e281716b7f9f91e2ffbc9c800270a7b12828f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
# Fri, 31 Jul 2026 18:10:27 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 31 Jul 2026 18:10:28 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1e406938e474acb54c0d298b1c1b3d7bac7adf29e0f82d5d98f89deb769502`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 3.4 MB (3448904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd95c36bb4ae0e7cbed92688cd9baca8745a15165a57c03bb389bcd722aaacc`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951ad2a302c8e41c0908fb49557399fa6382c19e93a8e36f8e4f5f5edbb3087c`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1814215c83a94e565bb3cfc76e1613ba7525f5dd2b339002e6418388db04b9e5`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 11.2 MB (11240090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154103e60614e61c0615163f578cbc9563580b5e1ca33eee332b0e4d6401a67a`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:ed739249447f189cca6ad146404db16256a6699b78d649f7d355a6f60dae9894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a00e041692844afb93f702bf9606b5df2dde74ddabb2f2d04c5540f61da7bc`

```dockerfile
```

-	Layers:
	-	`sha256:8a8300d8f5bb61024b938c2524099f60193637412ea689fdc275ab81d57d2368`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-windowsservercore`

```console
$ docker pull docker@sha256:867bc4c9e8cf64d73ae1676ea1f124035a4b58c5bf2774560d5fbe0af016d6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9bdcd882f8835060628c368bb52f81bc552a40b23b4ef7e5bd05b4b07ef4e841
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411476156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7920d8375f0f42316f4cb9c8b86590a8d288acfbb20b26f5781d3eb260e3c80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 16:30:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:31:58 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:31:58 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:31:59 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:32:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:18 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:32:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:32:39 GMT
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
	-	`sha256:e3ca9754f76738fde5151a13e0ed40584bf9323baf53a272c0df9c6f7e03fbcb`  
		Last Modified: Fri, 31 Jul 2026 16:32:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae37f855d4c5ea566501c403c5cb3f67d9b149838ead3bbed0fbb8e1fae3ece`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 383.0 KB (382981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d533c67ab95a14619f85cca421f528e96b862b791cd0bf21cc026008b374c`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745516846e343e8720bb6b7501d64f046aea13fb46108861085979f3d264dcf5`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90931dc7680a5304d2304c52243f204f0735b7711026c57490c8e11ea8d65f2`  
		Last Modified: Fri, 31 Jul 2026 16:32:50 GMT  
		Size: 20.2 MB (20214108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab96640ea0853c0764d57e9965c2b4ca47a136de1d6cc4b1950b6028880fca4`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91fe2367e8b28192c1fe78661c0ce248f1a3b7b77da1f6884de57612d0f374`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59194e8073320790f2a730b86174561b88f92933a4a79a01f939b9f0494a9fa`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d545ba1200cf2090bda893bc76f3696abf73c0972c64aa1b5ff3d62bcdc48f2e`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 23.8 MB (23831314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a64050a426942cac116241920b5fb2c14cdbb7856e8160daa84032886d997`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4ed4c1190051d6649214f34035aafed07e37abc1d305ee0ee34d5ca404ba`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408924cb33c76dc6f7d8d244b9fd6f7e4fa81bd74926a9138849f10d3f9835bc`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f792bb7ac889191f625a399a2ef22c786a8ce59d631e9b14e43ea0c626a4ffe`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 12.0 MB (12027910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.7-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
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
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:acff7e7ef34c79e30ae6653f05d15b433ba86f8c3cdd3e08f33cd7908ee96e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
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
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:0eb9c1bfe0a2086b039e6d0556ec5b0b5ee614ff0b64ee9fd7ec4de7f40a4512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29.7-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9bdcd882f8835060628c368bb52f81bc552a40b23b4ef7e5bd05b4b07ef4e841
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411476156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7920d8375f0f42316f4cb9c8b86590a8d288acfbb20b26f5781d3eb260e3c80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 16:30:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:31:58 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:31:58 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:31:59 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:32:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:18 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:32:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:32:39 GMT
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
	-	`sha256:e3ca9754f76738fde5151a13e0ed40584bf9323baf53a272c0df9c6f7e03fbcb`  
		Last Modified: Fri, 31 Jul 2026 16:32:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae37f855d4c5ea566501c403c5cb3f67d9b149838ead3bbed0fbb8e1fae3ece`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 383.0 KB (382981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d533c67ab95a14619f85cca421f528e96b862b791cd0bf21cc026008b374c`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745516846e343e8720bb6b7501d64f046aea13fb46108861085979f3d264dcf5`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90931dc7680a5304d2304c52243f204f0735b7711026c57490c8e11ea8d65f2`  
		Last Modified: Fri, 31 Jul 2026 16:32:50 GMT  
		Size: 20.2 MB (20214108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab96640ea0853c0764d57e9965c2b4ca47a136de1d6cc4b1950b6028880fca4`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91fe2367e8b28192c1fe78661c0ce248f1a3b7b77da1f6884de57612d0f374`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59194e8073320790f2a730b86174561b88f92933a4a79a01f939b9f0494a9fa`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d545ba1200cf2090bda893bc76f3696abf73c0972c64aa1b5ff3d62bcdc48f2e`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 23.8 MB (23831314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a64050a426942cac116241920b5fb2c14cdbb7856e8160daa84032886d997`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4ed4c1190051d6649214f34035aafed07e37abc1d305ee0ee34d5ca404ba`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408924cb33c76dc6f7d8d244b9fd6f7e4fa81bd74926a9138849f10d3f9835bc`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f792bb7ac889191f625a399a2ef22c786a8ce59d631e9b14e43ea0c626a4ffe`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 12.0 MB (12027910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7.0`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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

### `docker:29.7.0` - linux; amd64

```console
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.0-alpine3.24`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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

### `docker:29.7.0-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.0-cli`

```console
$ docker pull docker@sha256:206ae9cc405101ab0cf97d4b515d21bf6aae961f98f7f9d8de6c111718fef335
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

### `docker:29.7.0-cli` - linux; amd64

```console
$ docker pull docker@sha256:f1069150feb2fb4e09ed208e066c72518bda2fb6782266e294b359fa09408617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e343a1f8bc5fd359689d51bbf89480ae80ecdd370d011c723a3dd5df99a1e9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-cli` - unknown; unknown

```console
$ docker pull docker@sha256:f5915b9593bea9be7583a08eaa9c7af409aba68ebcc1408260454283bafbbc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c35753fd2a16f074d0387541243d71592298e44afbfab6bffc114dc008dafb`

```dockerfile
```

-	Layers:
	-	`sha256:3c783a962f9748ca6839e193ab465e19013cd6c4517b0a97622bedae4565a380`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:2a132c1feac0743bcd0ea63b4494a63db75986e32a72a0a674cd83feb799fe31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62040145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425a379de68fd272f715201dda75d1a9e146434215021c97485d4bbd75830bfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-cli` - unknown; unknown

```console
$ docker pull docker@sha256:4db770e4d2ec0b64818dfccf1e6a6347d9db2534c234ece017ffdf076eb8a48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09db817b5d8f0d41f2211c74b057908a1eee4d580d8579f65b35ce3a0ee01747`

```dockerfile
```

-	Layers:
	-	`sha256:849c46f147802085723dfa61160b6f64dc1b0935c0f08743935dada09843b6bc`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4a500ea980f7ab09bef93e39baa8f4acfb6041ba07ea281bdba7e78292d0a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60999466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f73093d1c9a96a7726a0cffedd3a44f7021b6a0954d574c3a768ac46ad32440`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-cli` - unknown; unknown

```console
$ docker pull docker@sha256:67c897cf0ac713eb7f70df139741fbbf3a0944dcc21580a38470685f4ddfb04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a61aeccf2a1b36343e2e5de0c0054e1193f7c94a646e655a7db167266ca6d31`

```dockerfile
```

-	Layers:
	-	`sha256:bef528d98cac2a6c0f1a47cdd9d2238b4ec347513e38dacbc85a9b0f11bcc96b`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c1f88946de93f65e482b7559d2f3db8d2acf726478bc3cde231138f481a3c393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61410124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0140b790251737858d352380a6daa51c7e251286ea72663595b559c2fd2ffc9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-cli` - unknown; unknown

```console
$ docker pull docker@sha256:205690000e4fe4f931ec88ade6bba3427e5fe2ce3e9e6e0acb67ea4e277fc2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd2719aacb1a1368a0b1fac9c0750580d58c8b190854e9fab8875fc0b13b105`

```dockerfile
```

-	Layers:
	-	`sha256:19a1fe27e6a95ecfbc17a7a2ce6c4dfd1ca08154d84cc459d810dd722ad1eec6`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.0-cli-alpine3.24`

```console
$ docker pull docker@sha256:206ae9cc405101ab0cf97d4b515d21bf6aae961f98f7f9d8de6c111718fef335
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

### `docker:29.7.0-cli-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:f1069150feb2fb4e09ed208e066c72518bda2fb6782266e294b359fa09408617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e343a1f8bc5fd359689d51bbf89480ae80ecdd370d011c723a3dd5df99a1e9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:f5915b9593bea9be7583a08eaa9c7af409aba68ebcc1408260454283bafbbc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c35753fd2a16f074d0387541243d71592298e44afbfab6bffc114dc008dafb`

```dockerfile
```

-	Layers:
	-	`sha256:3c783a962f9748ca6839e193ab465e19013cd6c4517b0a97622bedae4565a380`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-cli-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:2a132c1feac0743bcd0ea63b4494a63db75986e32a72a0a674cd83feb799fe31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62040145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425a379de68fd272f715201dda75d1a9e146434215021c97485d4bbd75830bfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:4db770e4d2ec0b64818dfccf1e6a6347d9db2534c234ece017ffdf076eb8a48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09db817b5d8f0d41f2211c74b057908a1eee4d580d8579f65b35ce3a0ee01747`

```dockerfile
```

-	Layers:
	-	`sha256:849c46f147802085723dfa61160b6f64dc1b0935c0f08743935dada09843b6bc`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-cli-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4a500ea980f7ab09bef93e39baa8f4acfb6041ba07ea281bdba7e78292d0a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60999466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f73093d1c9a96a7726a0cffedd3a44f7021b6a0954d574c3a768ac46ad32440`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:67c897cf0ac713eb7f70df139741fbbf3a0944dcc21580a38470685f4ddfb04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a61aeccf2a1b36343e2e5de0c0054e1193f7c94a646e655a7db167266ca6d31`

```dockerfile
```

-	Layers:
	-	`sha256:bef528d98cac2a6c0f1a47cdd9d2238b4ec347513e38dacbc85a9b0f11bcc96b`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-cli-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c1f88946de93f65e482b7559d2f3db8d2acf726478bc3cde231138f481a3c393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61410124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0140b790251737858d352380a6daa51c7e251286ea72663595b559c2fd2ffc9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:205690000e4fe4f931ec88ade6bba3427e5fe2ce3e9e6e0acb67ea4e277fc2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd2719aacb1a1368a0b1fac9c0750580d58c8b190854e9fab8875fc0b13b105`

```dockerfile
```

-	Layers:
	-	`sha256:19a1fe27e6a95ecfbc17a7a2ce6c4dfd1ca08154d84cc459d810dd722ad1eec6`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.0-dind`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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

### `docker:29.7.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.0-dind-alpine3.24`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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

### `docker:29.7.0-dind-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-dind-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.0-dind-rootless`

```console
$ docker pull docker@sha256:9da1f7d442f2de6cd9a0b70162117120273c0fbcca7fcc30f6be6eae24746819
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.7.0-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:85915c98630998ed1f49320cdf5b72c01696835d2091fb9f6e7c7e53ac4592c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155818811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f838bad6d38e8f053e2539e9f9d82df123ef45feea11514aff4d2c151c1440`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
# Fri, 31 Jul 2026 18:10:27 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 31 Jul 2026 18:10:27 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbd585421a0d28052ac5a643cf0320766103f124b405e29ec6b27743073fad5`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 3.5 MB (3471308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd95c36bb4ae0e7cbed92688cd9baca8745a15165a57c03bb389bcd722aaacc`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224738e03992c81f59ac2d33cd37b3cb2f58adbfccdcdd66e3e105c963dd283d`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7327344bb1a6254c69df9192388c651f1da0d23e75bea029204055a2972aab9d`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 12.1 MB (12107033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e869dc1a1e590268087d0a579f881b344f37908a8c1979e9441737f5ff6a3fd6`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:38aee032d56a91d779043121edc1b0fae4d67f54e6f76536f6254a477d68457f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74271f37194c2020501aa5857807e9bab4af78a529de1a521a4dd766bfe2a5`

```dockerfile
```

-	Layers:
	-	`sha256:726312fa364c224bdc33b6e4a7bb45ef69544f2437a39d57a38c265e65f2ac9a`  
		Last Modified: Fri, 31 Jul 2026 18:10:32 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.0-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:26e7513dbec377d23f7ba478ddd368bf4bd53a5c92a5b5345156f22edf68779a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144529091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d83171d4b1006ef13c538ac7e281716b7f9f91e2ffbc9c800270a7b12828f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
# Fri, 31 Jul 2026 18:10:27 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 31 Jul 2026 18:10:28 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1e406938e474acb54c0d298b1c1b3d7bac7adf29e0f82d5d98f89deb769502`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 3.4 MB (3448904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd95c36bb4ae0e7cbed92688cd9baca8745a15165a57c03bb389bcd722aaacc`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951ad2a302c8e41c0908fb49557399fa6382c19e93a8e36f8e4f5f5edbb3087c`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1814215c83a94e565bb3cfc76e1613ba7525f5dd2b339002e6418388db04b9e5`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 11.2 MB (11240090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154103e60614e61c0615163f578cbc9563580b5e1ca33eee332b0e4d6401a67a`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.0-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:ed739249447f189cca6ad146404db16256a6699b78d649f7d355a6f60dae9894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a00e041692844afb93f702bf9606b5df2dde74ddabb2f2d04c5540f61da7bc`

```dockerfile
```

-	Layers:
	-	`sha256:8a8300d8f5bb61024b938c2524099f60193637412ea689fdc275ab81d57d2368`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.0-windowsservercore`

```console
$ docker pull docker@sha256:867bc4c9e8cf64d73ae1676ea1f124035a4b58c5bf2774560d5fbe0af016d6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7.0-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9bdcd882f8835060628c368bb52f81bc552a40b23b4ef7e5bd05b4b07ef4e841
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411476156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7920d8375f0f42316f4cb9c8b86590a8d288acfbb20b26f5781d3eb260e3c80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 16:30:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:31:58 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:31:58 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:31:59 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:32:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:18 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:32:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:32:39 GMT
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
	-	`sha256:e3ca9754f76738fde5151a13e0ed40584bf9323baf53a272c0df9c6f7e03fbcb`  
		Last Modified: Fri, 31 Jul 2026 16:32:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae37f855d4c5ea566501c403c5cb3f67d9b149838ead3bbed0fbb8e1fae3ece`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 383.0 KB (382981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d533c67ab95a14619f85cca421f528e96b862b791cd0bf21cc026008b374c`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745516846e343e8720bb6b7501d64f046aea13fb46108861085979f3d264dcf5`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90931dc7680a5304d2304c52243f204f0735b7711026c57490c8e11ea8d65f2`  
		Last Modified: Fri, 31 Jul 2026 16:32:50 GMT  
		Size: 20.2 MB (20214108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab96640ea0853c0764d57e9965c2b4ca47a136de1d6cc4b1950b6028880fca4`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91fe2367e8b28192c1fe78661c0ce248f1a3b7b77da1f6884de57612d0f374`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59194e8073320790f2a730b86174561b88f92933a4a79a01f939b9f0494a9fa`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d545ba1200cf2090bda893bc76f3696abf73c0972c64aa1b5ff3d62bcdc48f2e`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 23.8 MB (23831314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a64050a426942cac116241920b5fb2c14cdbb7856e8160daa84032886d997`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4ed4c1190051d6649214f34035aafed07e37abc1d305ee0ee34d5ca404ba`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408924cb33c76dc6f7d8d244b9fd6f7e4fa81bd74926a9138849f10d3f9835bc`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f792bb7ac889191f625a399a2ef22c786a8ce59d631e9b14e43ea0c626a4ffe`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 12.0 MB (12027910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.7.0-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
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
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7.0-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:acff7e7ef34c79e30ae6653f05d15b433ba86f8c3cdd3e08f33cd7908ee96e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
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
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7.0-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:0eb9c1bfe0a2086b039e6d0556ec5b0b5ee614ff0b64ee9fd7ec4de7f40a4512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29.7.0-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9bdcd882f8835060628c368bb52f81bc552a40b23b4ef7e5bd05b4b07ef4e841
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411476156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7920d8375f0f42316f4cb9c8b86590a8d288acfbb20b26f5781d3eb260e3c80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 16:30:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:31:58 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:31:58 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:31:59 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:32:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:18 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:32:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:32:39 GMT
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
	-	`sha256:e3ca9754f76738fde5151a13e0ed40584bf9323baf53a272c0df9c6f7e03fbcb`  
		Last Modified: Fri, 31 Jul 2026 16:32:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae37f855d4c5ea566501c403c5cb3f67d9b149838ead3bbed0fbb8e1fae3ece`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 383.0 KB (382981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d533c67ab95a14619f85cca421f528e96b862b791cd0bf21cc026008b374c`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745516846e343e8720bb6b7501d64f046aea13fb46108861085979f3d264dcf5`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90931dc7680a5304d2304c52243f204f0735b7711026c57490c8e11ea8d65f2`  
		Last Modified: Fri, 31 Jul 2026 16:32:50 GMT  
		Size: 20.2 MB (20214108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab96640ea0853c0764d57e9965c2b4ca47a136de1d6cc4b1950b6028880fca4`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91fe2367e8b28192c1fe78661c0ce248f1a3b7b77da1f6884de57612d0f374`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59194e8073320790f2a730b86174561b88f92933a4a79a01f939b9f0494a9fa`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d545ba1200cf2090bda893bc76f3696abf73c0972c64aa1b5ff3d62bcdc48f2e`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 23.8 MB (23831314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a64050a426942cac116241920b5fb2c14cdbb7856e8160daa84032886d997`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4ed4c1190051d6649214f34035aafed07e37abc1d305ee0ee34d5ca404ba`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408924cb33c76dc6f7d8d244b9fd6f7e4fa81bd74926a9138849f10d3f9835bc`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f792bb7ac889191f625a399a2ef22c786a8ce59d631e9b14e43ea0c626a4ffe`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 12.0 MB (12027910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:cli`

```console
$ docker pull docker@sha256:206ae9cc405101ab0cf97d4b515d21bf6aae961f98f7f9d8de6c111718fef335
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
$ docker pull docker@sha256:f1069150feb2fb4e09ed208e066c72518bda2fb6782266e294b359fa09408617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e343a1f8bc5fd359689d51bbf89480ae80ecdd370d011c723a3dd5df99a1e9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:f5915b9593bea9be7583a08eaa9c7af409aba68ebcc1408260454283bafbbc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c35753fd2a16f074d0387541243d71592298e44afbfab6bffc114dc008dafb`

```dockerfile
```

-	Layers:
	-	`sha256:3c783a962f9748ca6839e193ab465e19013cd6c4517b0a97622bedae4565a380`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:2a132c1feac0743bcd0ea63b4494a63db75986e32a72a0a674cd83feb799fe31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62040145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425a379de68fd272f715201dda75d1a9e146434215021c97485d4bbd75830bfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:4db770e4d2ec0b64818dfccf1e6a6347d9db2534c234ece017ffdf076eb8a48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09db817b5d8f0d41f2211c74b057908a1eee4d580d8579f65b35ce3a0ee01747`

```dockerfile
```

-	Layers:
	-	`sha256:849c46f147802085723dfa61160b6f64dc1b0935c0f08743935dada09843b6bc`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4a500ea980f7ab09bef93e39baa8f4acfb6041ba07ea281bdba7e78292d0a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60999466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f73093d1c9a96a7726a0cffedd3a44f7021b6a0954d574c3a768ac46ad32440`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:67c897cf0ac713eb7f70df139741fbbf3a0944dcc21580a38470685f4ddfb04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a61aeccf2a1b36343e2e5de0c0054e1193f7c94a646e655a7db167266ca6d31`

```dockerfile
```

-	Layers:
	-	`sha256:bef528d98cac2a6c0f1a47cdd9d2238b4ec347513e38dacbc85a9b0f11bcc96b`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c1f88946de93f65e482b7559d2f3db8d2acf726478bc3cde231138f481a3c393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61410124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0140b790251737858d352380a6daa51c7e251286ea72663595b559c2fd2ffc9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:205690000e4fe4f931ec88ade6bba3427e5fe2ce3e9e6e0acb67ea4e277fc2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd2719aacb1a1368a0b1fac9c0750580d58c8b190854e9fab8875fc0b13b105`

```dockerfile
```

-	Layers:
	-	`sha256:19a1fe27e6a95ecfbc17a7a2ce6c4dfd1ca08154d84cc459d810dd722ad1eec6`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:9da1f7d442f2de6cd9a0b70162117120273c0fbcca7fcc30f6be6eae24746819
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:85915c98630998ed1f49320cdf5b72c01696835d2091fb9f6e7c7e53ac4592c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155818811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f838bad6d38e8f053e2539e9f9d82df123ef45feea11514aff4d2c151c1440`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
# Fri, 31 Jul 2026 18:10:27 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 31 Jul 2026 18:10:27 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbd585421a0d28052ac5a643cf0320766103f124b405e29ec6b27743073fad5`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 3.5 MB (3471308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd95c36bb4ae0e7cbed92688cd9baca8745a15165a57c03bb389bcd722aaacc`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224738e03992c81f59ac2d33cd37b3cb2f58adbfccdcdd66e3e105c963dd283d`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7327344bb1a6254c69df9192388c651f1da0d23e75bea029204055a2972aab9d`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 12.1 MB (12107033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e869dc1a1e590268087d0a579f881b344f37908a8c1979e9441737f5ff6a3fd6`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:38aee032d56a91d779043121edc1b0fae4d67f54e6f76536f6254a477d68457f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74271f37194c2020501aa5857807e9bab4af78a529de1a521a4dd766bfe2a5`

```dockerfile
```

-	Layers:
	-	`sha256:726312fa364c224bdc33b6e4a7bb45ef69544f2437a39d57a38c265e65f2ac9a`  
		Last Modified: Fri, 31 Jul 2026 18:10:32 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:26e7513dbec377d23f7ba478ddd368bf4bd53a5c92a5b5345156f22edf68779a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144529091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d83171d4b1006ef13c538ac7e281716b7f9f91e2ffbc9c800270a7b12828f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
# Fri, 31 Jul 2026 18:10:27 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 31 Jul 2026 18:10:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 31 Jul 2026 18:10:28 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 31 Jul 2026 18:10:28 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1e406938e474acb54c0d298b1c1b3d7bac7adf29e0f82d5d98f89deb769502`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 3.4 MB (3448904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd95c36bb4ae0e7cbed92688cd9baca8745a15165a57c03bb389bcd722aaacc`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951ad2a302c8e41c0908fb49557399fa6382c19e93a8e36f8e4f5f5edbb3087c`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1814215c83a94e565bb3cfc76e1613ba7525f5dd2b339002e6418388db04b9e5`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 11.2 MB (11240090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154103e60614e61c0615163f578cbc9563580b5e1ca33eee332b0e4d6401a67a`  
		Last Modified: Fri, 31 Jul 2026 18:10:34 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:ed739249447f189cca6ad146404db16256a6699b78d649f7d355a6f60dae9894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a00e041692844afb93f702bf9606b5df2dde74ddabb2f2d04c5540f61da7bc`

```dockerfile
```

-	Layers:
	-	`sha256:8a8300d8f5bb61024b938c2524099f60193637412ea689fdc275ab81d57d2368`  
		Last Modified: Fri, 31 Jul 2026 18:10:33 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:084e385b0c9b7ab35d5a46dfedd033721448c000dbec71adcf13da8a9e71baa8
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
$ docker pull docker@sha256:8eac6db1817b5682472e20fe1d6e19831c82e5da0938961b69b98351e98def90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140239128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92aec0c15d05febbe77f3edb3998401504c8d7e40b19b8a466d34940378966`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:26 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cbbb3a464b1d592cf9324611fb8d1742355d9f55ed2ef9298666cc007ec06b`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 7.0 MB (6965235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e3eb2d207b3efbec5c222b29f872b25fa44a3c5b103c215ffde3eb7cf2113`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bd3a237f6eb50e58dfd4ffad80a224dce52f2e056d2794ee07d82d87fff23a`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e24d5bb9e1dc7449839384993aa15f292efa94efb497ef17212f02865cb0e`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 67.4 MB (67403306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3680948664cb7e135c6a17316e557385f6dc8fb82b23d1a589d0b4038407a6`  
		Last Modified: Fri, 31 Jul 2026 17:10:38 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074099104ca61b8d07cafde01dce1593b7eb36c67f1782876c46aee182287dc0`  
		Last Modified: Fri, 31 Jul 2026 17:10:39 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:3ea554e8a02f9dd31242389412cc7f8b218eb1c91d0579bf7ab15fc18183800b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e10b85556baf99738653557c5dc17b31b6fad7bb72724e78d1619fb5ec51b4`

```dockerfile
```

-	Layers:
	-	`sha256:57e97d2f5032f0288af4000d89e37aba2ffb9817f81b4b9948e19856804fbe57`  
		Last Modified: Fri, 31 Jul 2026 17:10:37 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:358e40092943a6ade768b9311a289d767f1e53920f03f5707bca517db014e104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132119054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923b010adfe7b235858bea84ecd3e13070455edbcd55f17a37560f4702b5c3d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:01 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:01 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:01 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21660aae1d74ce8b22605b9a4d3c16bb02167704f78bb0be46794d0c2a095a91`  
		Last Modified: Fri, 31 Jul 2026 17:10:12 GMT  
		Size: 7.3 MB (7304321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9da48961cacfd5e78e9d87352bb651ddf9fb03f1427736bd9dcbfd3fd6d3a`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 90.7 KB (90710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b0a7840cf8a5e8aedb4fc80ae35acd60037b88c201a71f056bba39f4fac3`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7123bb575f45ce63c56b378bc74ea6da4fd5a69977871b1c116a2762abc04b8b`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 62.7 MB (62677874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe44f0d9719569ac222332d741d779927e473adbf2a6838b0876dd862b412e2`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263478e378c8b4e237ba81189dcb5cbbe4286ccc6bb523276d54963aa67a16bf`  
		Last Modified: Fri, 31 Jul 2026 17:10:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:5e936ae3ca4403dd2b49e67c1a56483f5aaa657aef235577ffd69dc37760702f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6cad4f989a03085338ee1901520c1d992a7dd079344056788fb9cedd31f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:c6750408a19d1086561f48a296d20c8334331eeecfdf02cb0453d26262d7a76b`  
		Last Modified: Fri, 31 Jul 2026 17:10:11 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:8b0f00344befdfa425b25abb978aec0df22055c00882d503665129fe9e387074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130201106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994d87d4cea94ecb9d0e14db5ede69c18c491adb192f2108623232eb0b8bb5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:09:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:09:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:09:22 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:09:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:09:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:09:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef4794973bae2e4fc40186aec3ac3061ab433bd67816524ac4bd12a298f78c7`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 6.6 MB (6598797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6a27f494c621d245619d1326dba45d78a9ef2b58d0b1daf40f808b5b5afa23`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 87.0 KB (86970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b85db70725f49020bf1f4ef0bcee98ca777a7bb5a6aed20456b8c2703aac27`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd43e9cb118dabc6bc9d58a8dd2eebd1df3b61cea3b13e4c5d19ce2c9ff489`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 62.5 MB (62509868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631be35cd9ee022dc03208597dc19eb0dfc2f88c2426964ff572d3496a47a30`  
		Last Modified: Fri, 31 Jul 2026 17:09:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9912ecaa80dee3783574185f55c0371168a53d397e0d3ee20636bce813f4b0d5`  
		Last Modified: Fri, 31 Jul 2026 17:09:34 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:44035f010735d611e043be3f47c1e243f38aa817b629900cb8876f4ed2ebe520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458ec8043f8e9d34d90a5454ee586422758706981dfc08a2244eafa845fa35d7`

```dockerfile
```

-	Layers:
	-	`sha256:753f2e1f364977391ebc421807f966672fef49b8d43faa5179545f3a4210593b`  
		Last Modified: Fri, 31 Jul 2026 17:09:32 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9fbba7593a31a69628c2807b17e7dd95030847f2f4799e05a8a1eb4a568ceacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129838752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee6d44439eb245d952d1a69bb9af7d0ffb4894b2a0237ce712175d63eb00a85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 31 Jul 2026 17:10:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 31 Jul 2026 17:10:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 17:10:15 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Jul 2026 17:10:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 31 Jul 2026 17:10:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Jul 2026 17:10:15 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a8e355b8de86f1a4053a8bc0e7a300241fea4db0373811fc20fb65990a881`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 7.2 MB (7240376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b85b10da7a98c9f848ff3b4d638c643df51251e41862ea691027227ea1d24`  
		Last Modified: Fri, 31 Jul 2026 17:10:25 GMT  
		Size: 99.9 KB (99938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89ad1116ba6b9b2381ff6e1ea2bbe679e84ff0bc217e6d4b3da2aa113f4acda`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe9a7c791d140fdc49e006a85d0b15a1c515bb7595ab7b31086cc0dfbc423f`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 61.1 MB (61082312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206dae231aa9545e188a845c3f4bf2bdcde399386d8368e584aff18f580255ca`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9322ac3045001963a35849cba7df8d20ed0d81050cc646f0dd56d8fe3ae281c`  
		Last Modified: Fri, 31 Jul 2026 17:10:26 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:aa55a81e79a5fd3a439a5b7b20d5ddfb7da3af7d3b097040cac6a06ada279c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38721da787d2b4323e7b3a067bb83ef91027c5a08378f7de5b82bac99061f6df`

```dockerfile
```

-	Layers:
	-	`sha256:53d4f0d4142255fbf0aa9c965ec5bda4a1041c3e4d3eed90f6a301cc834b872f`  
		Last Modified: Fri, 31 Jul 2026 17:10:24 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:867bc4c9e8cf64d73ae1676ea1f124035a4b58c5bf2774560d5fbe0af016d6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9bdcd882f8835060628c368bb52f81bc552a40b23b4ef7e5bd05b4b07ef4e841
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411476156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7920d8375f0f42316f4cb9c8b86590a8d288acfbb20b26f5781d3eb260e3c80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 16:30:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:31:58 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:31:58 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:31:59 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:32:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:18 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:32:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:32:39 GMT
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
	-	`sha256:e3ca9754f76738fde5151a13e0ed40584bf9323baf53a272c0df9c6f7e03fbcb`  
		Last Modified: Fri, 31 Jul 2026 16:32:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae37f855d4c5ea566501c403c5cb3f67d9b149838ead3bbed0fbb8e1fae3ece`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 383.0 KB (382981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d533c67ab95a14619f85cca421f528e96b862b791cd0bf21cc026008b374c`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745516846e343e8720bb6b7501d64f046aea13fb46108861085979f3d264dcf5`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90931dc7680a5304d2304c52243f204f0735b7711026c57490c8e11ea8d65f2`  
		Last Modified: Fri, 31 Jul 2026 16:32:50 GMT  
		Size: 20.2 MB (20214108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab96640ea0853c0764d57e9965c2b4ca47a136de1d6cc4b1950b6028880fca4`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91fe2367e8b28192c1fe78661c0ce248f1a3b7b77da1f6884de57612d0f374`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59194e8073320790f2a730b86174561b88f92933a4a79a01f939b9f0494a9fa`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d545ba1200cf2090bda893bc76f3696abf73c0972c64aa1b5ff3d62bcdc48f2e`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 23.8 MB (23831314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a64050a426942cac116241920b5fb2c14cdbb7856e8160daa84032886d997`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4ed4c1190051d6649214f34035aafed07e37abc1d305ee0ee34d5ca404ba`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408924cb33c76dc6f7d8d244b9fd6f7e4fa81bd74926a9138849f10d3f9835bc`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f792bb7ac889191f625a399a2ef22c786a8ce59d631e9b14e43ea0c626a4ffe`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 12.0 MB (12027910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
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
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:acff7e7ef34c79e30ae6653f05d15b433ba86f8c3cdd3e08f33cd7908ee96e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
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
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:0eb9c1bfe0a2086b039e6d0556ec5b0b5ee614ff0b64ee9fd7ec4de7f40a4512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9bdcd882f8835060628c368bb52f81bc552a40b23b4ef7e5bd05b4b07ef4e841
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411476156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7920d8375f0f42316f4cb9c8b86590a8d288acfbb20b26f5781d3eb260e3c80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 16:30:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:31:58 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:31:58 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:31:59 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:32:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:18 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:32:19 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:32:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:32:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:32:30 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:32:39 GMT
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
	-	`sha256:e3ca9754f76738fde5151a13e0ed40584bf9323baf53a272c0df9c6f7e03fbcb`  
		Last Modified: Fri, 31 Jul 2026 16:32:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae37f855d4c5ea566501c403c5cb3f67d9b149838ead3bbed0fbb8e1fae3ece`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 383.0 KB (382981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d533c67ab95a14619f85cca421f528e96b862b791cd0bf21cc026008b374c`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745516846e343e8720bb6b7501d64f046aea13fb46108861085979f3d264dcf5`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90931dc7680a5304d2304c52243f204f0735b7711026c57490c8e11ea8d65f2`  
		Last Modified: Fri, 31 Jul 2026 16:32:50 GMT  
		Size: 20.2 MB (20214108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab96640ea0853c0764d57e9965c2b4ca47a136de1d6cc4b1950b6028880fca4`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91fe2367e8b28192c1fe78661c0ce248f1a3b7b77da1f6884de57612d0f374`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59194e8073320790f2a730b86174561b88f92933a4a79a01f939b9f0494a9fa`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d545ba1200cf2090bda893bc76f3696abf73c0972c64aa1b5ff3d62bcdc48f2e`  
		Last Modified: Fri, 31 Jul 2026 16:32:48 GMT  
		Size: 23.8 MB (23831314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a64050a426942cac116241920b5fb2c14cdbb7856e8160daa84032886d997`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4ed4c1190051d6649214f34035aafed07e37abc1d305ee0ee34d5ca404ba`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408924cb33c76dc6f7d8d244b9fd6f7e4fa81bd74926a9138849f10d3f9835bc`  
		Last Modified: Fri, 31 Jul 2026 16:32:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f792bb7ac889191f625a399a2ef22c786a8ce59d631e9b14e43ea0c626a4ffe`  
		Last Modified: Fri, 31 Jul 2026 16:32:46 GMT  
		Size: 12.0 MB (12027910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
