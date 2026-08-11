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
$ docker pull docker@sha256:e8faad5a8dc5279dff929afc5449f2791736912fff9f99351d742db2fad01b4c
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
$ docker pull docker@sha256:66fd272fc375aad4c8fa06351c414e15bffe8cb015c171e1b8a8efe36a72cc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144697597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1313f791fe53991cf72e89e5a65bcbdae561d63d520f99a7a760eae495ee02`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:28473ead06136b9958cc1a1bd70bed1188d809f0f25c484db291f1956ca9e1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ced95bfde8a7bbf10e34d3fb4f89fc18d330f34bf7e660350d3d2b0b5728256`

```dockerfile
```

-	Layers:
	-	`sha256:49c60a3b91135fb9584b9d3e51480be749752c97059e8625703c6c19127fe12d`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 34.5 KB (34541 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:a19c72a37f00de350731a5010c2053075ec25b18f53f1b6314ae25390da78357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136326839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f80bd56636d7ff34a6c7ab6949df32fcea6bcab745c3a1872fc063dc432ecb6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:44 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:44 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3dc8a54644d062c6b33fd24c580ecc105b51cc5ce356debc0929520e4b0b05`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 7.3 MB (7304287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bc999f6f725d4837a27aa10fa9df85ccc09abd32abf8f33cd5c4b5f4a41f42`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 90.7 KB (90719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d48ca054ccc9d4dd4d18e965fc5470f2d06536a09ab0b7012422738cd4b1ca`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b77d9cdf7da439824dee2f5532bc3a7330bdf4886d653abd85413ee9796fc32`  
		Last Modified: Tue, 04 Aug 2026 01:11:57 GMT  
		Size: 62.7 MB (62680396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4254ef26909eaafbb7aad3c5d8642b5f354cd6fc91a31944740ebfd0548c30c`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384095bbdbbc699d6cf2d9c6c933dcd77f35edcfb5efd00365fea947343655eb`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:b5d5407bec15e8de669daf677d610bba0b39fe5307276e0e4976d34c38724a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1ce24de9c643d58b0bc9712978d83fd2abaa13f5067953fb125c9372ecc401`

```dockerfile
```

-	Layers:
	-	`sha256:730a80617729435674b3e89f8112d751e4d50195fa34861f5806cc5143d66e19`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:cc27f04af4655abcad05a2d8748c22b611edb31990047c0785e6568ce139cce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134403049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2ac0e0ad4edd4919bad646f52e6d0429b545836925a43e452edfef8073e4ff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:06 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a2a93b38a685cc5eb6c5bcff47d5488934f20bf066436820dc020de9b9638`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 6.6 MB (6598779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a6238af14963d1dc22cb7cd1b9dc2b92fe4d6717bfae03be9e5082eb4c4f7`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 87.0 KB (86967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0386fa02653d83bd699ade4b5fc3c00d6a9f09401aab8785914c95ad07a4b04a`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98aa5a644000cc4dbee0dce92ca224292d88675aff4c1baeef36cf852027f3`  
		Last Modified: Tue, 04 Aug 2026 01:11:18 GMT  
		Size: 62.5 MB (62512204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39d0182e93f6e7e95d430a1d6a1e04fb7028147ad01a1d61e56495de5034b2c`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b7eab1fac32e19ec71ff7e821555b644641ecc61cbf460cd513d57bfb4cdc9`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:ab56260e36efbe852b42db675498beb7ebfd17f43be23680e52bcdd23ad225f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f071f9741106115c5e5e16179adaee896f61ef3e659cfee61b43ff723262bd`

```dockerfile
```

-	Layers:
	-	`sha256:92deaa2d75cb112c2bef71b24799bf1ca37311e1d19646d7cb58959f535ecbad`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c3d2ec83b21eb5c7d856b7ef8dc3e4d5642e73cc09bd35a4149bd6d3d16916d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133842396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22ec39b0663b0691c93beecd0ea78994ab5cbebfd6ffa1ce0e3e4fd93efe2b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:e08a0abc409d35d3bfd90ea72e770b746f5133fc4a7827615b4fd87638c76fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e97919f050be2011d1dfc5a61473292c28dc0f67afbc18dce74771de09ad3ef`

```dockerfile
```

-	Layers:
	-	`sha256:526f1ed52706e03d43e3110602abe29f8bcbab116c1c8d3b0e574042653f477a`  
		Last Modified: Tue, 04 Aug 2026 01:12:08 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:27a51d5ab1cd38d9eeaba7b415b8c07bc10c31e1cf1ec8d78f6413fcfab3f44f
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
$ docker pull docker@sha256:8e7f8c848f46647a532833619f894480f54cd20c0057e1b552d8b46bf3efddb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70225727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de32b1507d27aa8d8e727d6580f67f5043bd27f8d85e3303f5786a3f84f6027`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:ed7d6828dffe019a3f4c20df8e78f358aa5341c9af4a8953eefe6434cf0c00dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95797396a95cad2fb54725513864669a13d1653dcb3c2806caf30a40fc5be634`

```dockerfile
```

-	Layers:
	-	`sha256:41ee1380150a956617a044aa975543e79536a54f15d1fdd86aebfc1c563d3cac`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 38.1 KB (38054 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:6f92285bf665869d3b863b2f517a913066fef9dc9c9bcacf0b541f2dc10b50b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66245436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f2738948c605c47c4c3f8f490f1d27260918431d354008f058dc6f232947b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:e5c927589a930490367090e422879b7e49d61e067c2806349afa36a4b2500625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1379550c6c90a39a8f03184dd316386b66f50bba8378eeffd3dd8f2c64bbf9`

```dockerfile
```

-	Layers:
	-	`sha256:c6ce26fe6e040872b8acb76fcd3d5a2b39ed9eff08b8fe361cde55edb7b73142`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:cf045e4265177e4b8ea0b3f261d4317ab4d901a7df42b4d447fd98b869bdc751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65199097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917335f792506265111e38f6e31d093efa51ccb86783d079d221818b4dd9630d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:08836b0e39f63068d60a092c4a5de25c524ba073fd80d976646d9e8c609df34c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4f6f7ca7783cb35a11989ad65673094f16c7f024735ba250a67ffc7e274733`

```dockerfile
```

-	Layers:
	-	`sha256:4dd4d839c28014aa0f0ca26fadbc51211df6577bb5bbb55a874272126eaae65b`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:aefe5283132980ecb8c737c02360f1b40b0f6f61258e57f3996f15e6bff04011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65409771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f480e12fcca158293259ad16bdbba360bbc94e5233c53cdbdf3957974f8ab059`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:4155e31c6d4fb10db7f6a61d8ca20135447bd5ebdf8f704fd40acc60476a24d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc9ff1536fdbb452042bed28b362978a109f3077143a4905aa74a7178bb39a4`

```dockerfile
```

-	Layers:
	-	`sha256:2194ccd4d7a4d7d1642997afee7df3809d03919d3b12de88dcff9464ded7f6ea`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:e8faad5a8dc5279dff929afc5449f2791736912fff9f99351d742db2fad01b4c
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
$ docker pull docker@sha256:66fd272fc375aad4c8fa06351c414e15bffe8cb015c171e1b8a8efe36a72cc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144697597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1313f791fe53991cf72e89e5a65bcbdae561d63d520f99a7a760eae495ee02`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:28473ead06136b9958cc1a1bd70bed1188d809f0f25c484db291f1956ca9e1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ced95bfde8a7bbf10e34d3fb4f89fc18d330f34bf7e660350d3d2b0b5728256`

```dockerfile
```

-	Layers:
	-	`sha256:49c60a3b91135fb9584b9d3e51480be749752c97059e8625703c6c19127fe12d`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 34.5 KB (34541 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:a19c72a37f00de350731a5010c2053075ec25b18f53f1b6314ae25390da78357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136326839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f80bd56636d7ff34a6c7ab6949df32fcea6bcab745c3a1872fc063dc432ecb6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:44 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:44 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3dc8a54644d062c6b33fd24c580ecc105b51cc5ce356debc0929520e4b0b05`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 7.3 MB (7304287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bc999f6f725d4837a27aa10fa9df85ccc09abd32abf8f33cd5c4b5f4a41f42`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 90.7 KB (90719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d48ca054ccc9d4dd4d18e965fc5470f2d06536a09ab0b7012422738cd4b1ca`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b77d9cdf7da439824dee2f5532bc3a7330bdf4886d653abd85413ee9796fc32`  
		Last Modified: Tue, 04 Aug 2026 01:11:57 GMT  
		Size: 62.7 MB (62680396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4254ef26909eaafbb7aad3c5d8642b5f354cd6fc91a31944740ebfd0548c30c`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384095bbdbbc699d6cf2d9c6c933dcd77f35edcfb5efd00365fea947343655eb`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b5d5407bec15e8de669daf677d610bba0b39fe5307276e0e4976d34c38724a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1ce24de9c643d58b0bc9712978d83fd2abaa13f5067953fb125c9372ecc401`

```dockerfile
```

-	Layers:
	-	`sha256:730a80617729435674b3e89f8112d751e4d50195fa34861f5806cc5143d66e19`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:cc27f04af4655abcad05a2d8748c22b611edb31990047c0785e6568ce139cce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134403049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2ac0e0ad4edd4919bad646f52e6d0429b545836925a43e452edfef8073e4ff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:06 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a2a93b38a685cc5eb6c5bcff47d5488934f20bf066436820dc020de9b9638`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 6.6 MB (6598779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a6238af14963d1dc22cb7cd1b9dc2b92fe4d6717bfae03be9e5082eb4c4f7`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 87.0 KB (86967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0386fa02653d83bd699ade4b5fc3c00d6a9f09401aab8785914c95ad07a4b04a`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98aa5a644000cc4dbee0dce92ca224292d88675aff4c1baeef36cf852027f3`  
		Last Modified: Tue, 04 Aug 2026 01:11:18 GMT  
		Size: 62.5 MB (62512204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39d0182e93f6e7e95d430a1d6a1e04fb7028147ad01a1d61e56495de5034b2c`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b7eab1fac32e19ec71ff7e821555b644641ecc61cbf460cd513d57bfb4cdc9`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:ab56260e36efbe852b42db675498beb7ebfd17f43be23680e52bcdd23ad225f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f071f9741106115c5e5e16179adaee896f61ef3e659cfee61b43ff723262bd`

```dockerfile
```

-	Layers:
	-	`sha256:92deaa2d75cb112c2bef71b24799bf1ca37311e1d19646d7cb58959f535ecbad`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c3d2ec83b21eb5c7d856b7ef8dc3e4d5642e73cc09bd35a4149bd6d3d16916d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133842396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22ec39b0663b0691c93beecd0ea78994ab5cbebfd6ffa1ce0e3e4fd93efe2b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:e08a0abc409d35d3bfd90ea72e770b746f5133fc4a7827615b4fd87638c76fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e97919f050be2011d1dfc5a61473292c28dc0f67afbc18dce74771de09ad3ef`

```dockerfile
```

-	Layers:
	-	`sha256:526f1ed52706e03d43e3110602abe29f8bcbab116c1c8d3b0e574042653f477a`  
		Last Modified: Tue, 04 Aug 2026 01:12:08 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:7451e3dc398b11ba2d8183bb7915402683e3d32e5ec8cef835c215f314a65fef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:2018be78d999440ed6bd3d156552d6ebc22477471ee58fec5183e1af8d575d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160277261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bb13ac01fa121f374d1780017ff3d755237adac6f9e0de27f16d63b14eeecd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
# Tue, 04 Aug 2026 02:17:51 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Tue, 04 Aug 2026 02:17:51 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Tue, 04 Aug 2026 02:17:51 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
VOLUME [/home/rootless/.local/share/docker]
# Tue, 04 Aug 2026 02:17:52 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb75d12a625bf819caa3d51b8d1c879e51897c6676b2ee63833a70859e4b0efd`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 3.5 MB (3471287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817ad376008c4f28140d1be13fb69b688cb065e193e63c638b8d47a1d88ca5fe`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7983c29b47751363ae7153dd058b1476a6a79d41cfc32d84b8b9fd7747540d`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d050e5de5687dfd22fb8ca17906c577a9d73f46465bcf9d76955957b08278e7`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 12.1 MB (12107033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e857ae8ed0c4472c13c19280ecbf835b26bd2b4ae79db872bd98c5a22fa78143`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:49ced0e0be3bedc4f1e7de380bed20390a71b4fa6bbbc80f5050c952220bf41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9727c290281531783ac031e2b4406730a07ab2d83a36e4b6322f3bf6e22936f`

```dockerfile
```

-	Layers:
	-	`sha256:e69bdf4386fd9901b32652df5bcae6150191f756443488f428f9423af5f6adab`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d2d79f57b79aac9d4901c2854654290b6eb9a33d3dd5ece7352ab97ff9952041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.5 MB (148532723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc9d8390b6c09f74a43a00bb39c675e102bfade78f11c3fbfe2536cd0156956`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
# Tue, 04 Aug 2026 02:17:52 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
VOLUME [/home/rootless/.local/share/docker]
# Tue, 04 Aug 2026 02:17:54 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf40b7c98a453376cad6ae84df1136ae24a51a28c50f92b7846c9b1bff0db36`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 3.4 MB (3448902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead6d99e0d94ea8f397343f7834db911160e2832faa18c68f213d525848e26c2`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9d33c19ad14478ed81579bbca3535607e2e831b480d42dc4dc6c834f2e4ded`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6700f8416c99a200410ce75cfe1a953c3ff86fe4b1676d8533a5530a189a8a7`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 11.2 MB (11240087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecea130fd9c9b0336b40c01c824d298dd4542d8f0b436dc42a5af538d7969d6`  
		Last Modified: Tue, 04 Aug 2026 02:18:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:212b712621298e713fd0e9f09050c73260838f2cccc9ba5085971db882d57f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b5ec631da61ec408593e26269fefa5fdad28e9bed38ec40e5e24045cb10dc8`

```dockerfile
```

-	Layers:
	-	`sha256:2896620642be018449d45394b6b4424f4443298453e1d6d7e7ec57fffd7f4c0c`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:82446516ed2a7be925096b1c281a22f35d23b4d54acac87c94212ab37e1b4e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:00b8f19e6736a545c08e2146ae42229f6c9f994ed5ee05b2d4b82cabfc72c65e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416072513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fd5f2b3aedca6aa8b5fe35fb57f05c159b080f79cff850d5dc74b45dc9dd79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:58:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:42 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 01:00:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 01:00:01 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:21 GMT
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
	-	`sha256:46b58d161a09b7b87b23ddb007fd7769db7903f300ec19140f0ba87bdc0d78c5`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7444cbbd41b3ba406fae5ce2647ac34733c17050e0a5b5c205d7602c408bbb75`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 404.2 KB (404245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde98e179a3be9692afcaed5b6e30f14d31141057b6b2455d2075399d3a7074`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a5afa79f915ff1b3b8db9e563f57da0585a49e4d657b0e5641005e4019ad8`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38c21ad3178d34f678469e103e63a222544e8bda97ae1f9114867c420f9439e`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 20.2 MB (20240251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ac1d31562171021ed4e8cc7c88d315a3a52c2cab2d1bb8beec0d6cb97ab5e`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabc94e0d1253040423ffd233cd0d37eab5b24f47b042abda7bd15e8ee03d765`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2222e8a964c20dd36e9770ed67483e386d6ea9e07927245ba1015b7462861d`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee22aa0a32c854ee7a0ab8785c894990c9f1fc92a0b3377adf35c258f3bc50`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 23.8 MB (23849798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10391758776f511e316356a8761ec6d30417ff963d39711e98c3d548b59773dc`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6d8c3dcae51c37c036f744fa7010721cc2947cd36341b58e63d49b08fe6f45`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1febf7e8a1634cc13e05e6a3cda09506f42a2aa04d14c455205298128d0a68fd`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1855796a5d8de672c86619da48b775fc6824228098cef0bdc86116ccb4ef9`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 16.6 MB (16558411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:be5fca7748d82d202f7ba0f06d1d36cbc9a1be985384d3deb7f728cdc661be33
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb17e5754d7d37f48390161e35baf55eb6d6666e46596713dd0273723485bb1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 00:58:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:37 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:38 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 00:59:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 00:59:57 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:59:58 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 00:59:59 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:22 GMT
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
	-	`sha256:2129f3cb38f49afd6241a71e794f810c9057f1c491a226396cf51cd8e29083a6`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53ebbbcaa31229df9a29c0414de89f2da9542565395f9daf458da26aaef7711`  
		Last Modified: Tue, 04 Aug 2026 01:00:32 GMT  
		Size: 502.1 KB (502053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d22165eebf89e9acb6242e781592c2b50e10416816135874c1b973c4b943d`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b192f9a0e4128f04f447e05db357ecd40cb9a6e423c289631a05bbe102312b`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6b7f3108f89031ae9306466aa32cf52bb40bd9e1db4e29469b1f0813cc75ab`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 20.2 MB (20197512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a508c0f55671f9f5f0f1a0015191456d711e574cc4d19721f6d53d7b5507616a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02960cbfb74aca118cf05e1145f0320988fe05b7f84d955d56cfe52815dab0e6`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89973adeb0ad50f0fe7027c833ba635514fd30a66e5826d68ab95411ba07a60a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81769092d00fe594cd7f1c4312290b709d37c8281f25bc972b155e0ea4c874ee`  
		Last Modified: Tue, 04 Aug 2026 01:00:43 GMT  
		Size: 23.8 MB (23814236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08c5dc8d0c447bd86ae70a8c8d33d2a09b7d1adbe677423816545bc8f810b34`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b50347d5fd42030fb405f61d77b7b8ad6a48a8a3ae2d1a3c4b4a6485767feb`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fada68e2b44add556af3a779bebe441190a1c3929d47d176dd53c56b9aa3d52`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292cacc4bab98ebb57b2b46a711ce8b540a61b3916266e7a04ecf95a6f7c500d`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 16.5 MB (16518403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:44863ec675cd6150f1fecac8045f908a494945a6a9392b57afc70e4401d4df0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:be5fca7748d82d202f7ba0f06d1d36cbc9a1be985384d3deb7f728cdc661be33
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb17e5754d7d37f48390161e35baf55eb6d6666e46596713dd0273723485bb1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 00:58:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:37 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:38 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 00:59:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 00:59:57 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:59:58 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 00:59:59 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:22 GMT
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
	-	`sha256:2129f3cb38f49afd6241a71e794f810c9057f1c491a226396cf51cd8e29083a6`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53ebbbcaa31229df9a29c0414de89f2da9542565395f9daf458da26aaef7711`  
		Last Modified: Tue, 04 Aug 2026 01:00:32 GMT  
		Size: 502.1 KB (502053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d22165eebf89e9acb6242e781592c2b50e10416816135874c1b973c4b943d`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b192f9a0e4128f04f447e05db357ecd40cb9a6e423c289631a05bbe102312b`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6b7f3108f89031ae9306466aa32cf52bb40bd9e1db4e29469b1f0813cc75ab`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 20.2 MB (20197512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a508c0f55671f9f5f0f1a0015191456d711e574cc4d19721f6d53d7b5507616a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02960cbfb74aca118cf05e1145f0320988fe05b7f84d955d56cfe52815dab0e6`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89973adeb0ad50f0fe7027c833ba635514fd30a66e5826d68ab95411ba07a60a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81769092d00fe594cd7f1c4312290b709d37c8281f25bc972b155e0ea4c874ee`  
		Last Modified: Tue, 04 Aug 2026 01:00:43 GMT  
		Size: 23.8 MB (23814236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08c5dc8d0c447bd86ae70a8c8d33d2a09b7d1adbe677423816545bc8f810b34`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b50347d5fd42030fb405f61d77b7b8ad6a48a8a3ae2d1a3c4b4a6485767feb`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fada68e2b44add556af3a779bebe441190a1c3929d47d176dd53c56b9aa3d52`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292cacc4bab98ebb57b2b46a711ce8b540a61b3916266e7a04ecf95a6f7c500d`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 16.5 MB (16518403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:72a48017fb7e7a87f954db8391c4a2153a3196af3a5e515d974aff05880e3af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:00b8f19e6736a545c08e2146ae42229f6c9f994ed5ee05b2d4b82cabfc72c65e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416072513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fd5f2b3aedca6aa8b5fe35fb57f05c159b080f79cff850d5dc74b45dc9dd79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:58:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:42 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 01:00:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 01:00:01 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:21 GMT
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
	-	`sha256:46b58d161a09b7b87b23ddb007fd7769db7903f300ec19140f0ba87bdc0d78c5`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7444cbbd41b3ba406fae5ce2647ac34733c17050e0a5b5c205d7602c408bbb75`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 404.2 KB (404245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde98e179a3be9692afcaed5b6e30f14d31141057b6b2455d2075399d3a7074`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a5afa79f915ff1b3b8db9e563f57da0585a49e4d657b0e5641005e4019ad8`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38c21ad3178d34f678469e103e63a222544e8bda97ae1f9114867c420f9439e`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 20.2 MB (20240251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ac1d31562171021ed4e8cc7c88d315a3a52c2cab2d1bb8beec0d6cb97ab5e`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabc94e0d1253040423ffd233cd0d37eab5b24f47b042abda7bd15e8ee03d765`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2222e8a964c20dd36e9770ed67483e386d6ea9e07927245ba1015b7462861d`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee22aa0a32c854ee7a0ab8785c894990c9f1fc92a0b3377adf35c258f3bc50`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 23.8 MB (23849798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10391758776f511e316356a8761ec6d30417ff963d39711e98c3d548b59773dc`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6d8c3dcae51c37c036f744fa7010721cc2947cd36341b58e63d49b08fe6f45`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1febf7e8a1634cc13e05e6a3cda09506f42a2aa04d14c455205298128d0a68fd`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1855796a5d8de672c86619da48b775fc6824228098cef0bdc86116ccb4ef9`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 16.6 MB (16558411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7`

```console
$ docker pull docker@sha256:e8faad5a8dc5279dff929afc5449f2791736912fff9f99351d742db2fad01b4c
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
$ docker pull docker@sha256:66fd272fc375aad4c8fa06351c414e15bffe8cb015c171e1b8a8efe36a72cc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144697597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1313f791fe53991cf72e89e5a65bcbdae561d63d520f99a7a760eae495ee02`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:28473ead06136b9958cc1a1bd70bed1188d809f0f25c484db291f1956ca9e1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ced95bfde8a7bbf10e34d3fb4f89fc18d330f34bf7e660350d3d2b0b5728256`

```dockerfile
```

-	Layers:
	-	`sha256:49c60a3b91135fb9584b9d3e51480be749752c97059e8625703c6c19127fe12d`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 34.5 KB (34541 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm variant v6

```console
$ docker pull docker@sha256:a19c72a37f00de350731a5010c2053075ec25b18f53f1b6314ae25390da78357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136326839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f80bd56636d7ff34a6c7ab6949df32fcea6bcab745c3a1872fc063dc432ecb6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:44 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:44 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3dc8a54644d062c6b33fd24c580ecc105b51cc5ce356debc0929520e4b0b05`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 7.3 MB (7304287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bc999f6f725d4837a27aa10fa9df85ccc09abd32abf8f33cd5c4b5f4a41f42`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 90.7 KB (90719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d48ca054ccc9d4dd4d18e965fc5470f2d06536a09ab0b7012422738cd4b1ca`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b77d9cdf7da439824dee2f5532bc3a7330bdf4886d653abd85413ee9796fc32`  
		Last Modified: Tue, 04 Aug 2026 01:11:57 GMT  
		Size: 62.7 MB (62680396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4254ef26909eaafbb7aad3c5d8642b5f354cd6fc91a31944740ebfd0548c30c`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384095bbdbbc699d6cf2d9c6c933dcd77f35edcfb5efd00365fea947343655eb`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:b5d5407bec15e8de669daf677d610bba0b39fe5307276e0e4976d34c38724a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1ce24de9c643d58b0bc9712978d83fd2abaa13f5067953fb125c9372ecc401`

```dockerfile
```

-	Layers:
	-	`sha256:730a80617729435674b3e89f8112d751e4d50195fa34861f5806cc5143d66e19`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm variant v7

```console
$ docker pull docker@sha256:cc27f04af4655abcad05a2d8748c22b611edb31990047c0785e6568ce139cce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134403049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2ac0e0ad4edd4919bad646f52e6d0429b545836925a43e452edfef8073e4ff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:06 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a2a93b38a685cc5eb6c5bcff47d5488934f20bf066436820dc020de9b9638`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 6.6 MB (6598779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a6238af14963d1dc22cb7cd1b9dc2b92fe4d6717bfae03be9e5082eb4c4f7`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 87.0 KB (86967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0386fa02653d83bd699ade4b5fc3c00d6a9f09401aab8785914c95ad07a4b04a`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98aa5a644000cc4dbee0dce92ca224292d88675aff4c1baeef36cf852027f3`  
		Last Modified: Tue, 04 Aug 2026 01:11:18 GMT  
		Size: 62.5 MB (62512204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39d0182e93f6e7e95d430a1d6a1e04fb7028147ad01a1d61e56495de5034b2c`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b7eab1fac32e19ec71ff7e821555b644641ecc61cbf460cd513d57bfb4cdc9`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:ab56260e36efbe852b42db675498beb7ebfd17f43be23680e52bcdd23ad225f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f071f9741106115c5e5e16179adaee896f61ef3e659cfee61b43ff723262bd`

```dockerfile
```

-	Layers:
	-	`sha256:92deaa2d75cb112c2bef71b24799bf1ca37311e1d19646d7cb58959f535ecbad`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c3d2ec83b21eb5c7d856b7ef8dc3e4d5642e73cc09bd35a4149bd6d3d16916d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133842396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22ec39b0663b0691c93beecd0ea78994ab5cbebfd6ffa1ce0e3e4fd93efe2b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:e08a0abc409d35d3bfd90ea72e770b746f5133fc4a7827615b4fd87638c76fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e97919f050be2011d1dfc5a61473292c28dc0f67afbc18dce74771de09ad3ef`

```dockerfile
```

-	Layers:
	-	`sha256:526f1ed52706e03d43e3110602abe29f8bcbab116c1c8d3b0e574042653f477a`  
		Last Modified: Tue, 04 Aug 2026 01:12:08 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-cli`

```console
$ docker pull docker@sha256:27a51d5ab1cd38d9eeaba7b415b8c07bc10c31e1cf1ec8d78f6413fcfab3f44f
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
$ docker pull docker@sha256:8e7f8c848f46647a532833619f894480f54cd20c0057e1b552d8b46bf3efddb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70225727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de32b1507d27aa8d8e727d6580f67f5043bd27f8d85e3303f5786a3f84f6027`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:ed7d6828dffe019a3f4c20df8e78f358aa5341c9af4a8953eefe6434cf0c00dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95797396a95cad2fb54725513864669a13d1653dcb3c2806caf30a40fc5be634`

```dockerfile
```

-	Layers:
	-	`sha256:41ee1380150a956617a044aa975543e79536a54f15d1fdd86aebfc1c563d3cac`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 38.1 KB (38054 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:6f92285bf665869d3b863b2f517a913066fef9dc9c9bcacf0b541f2dc10b50b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66245436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f2738948c605c47c4c3f8f490f1d27260918431d354008f058dc6f232947b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:e5c927589a930490367090e422879b7e49d61e067c2806349afa36a4b2500625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1379550c6c90a39a8f03184dd316386b66f50bba8378eeffd3dd8f2c64bbf9`

```dockerfile
```

-	Layers:
	-	`sha256:c6ce26fe6e040872b8acb76fcd3d5a2b39ed9eff08b8fe361cde55edb7b73142`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:cf045e4265177e4b8ea0b3f261d4317ab4d901a7df42b4d447fd98b869bdc751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65199097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917335f792506265111e38f6e31d093efa51ccb86783d079d221818b4dd9630d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:08836b0e39f63068d60a092c4a5de25c524ba073fd80d976646d9e8c609df34c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4f6f7ca7783cb35a11989ad65673094f16c7f024735ba250a67ffc7e274733`

```dockerfile
```

-	Layers:
	-	`sha256:4dd4d839c28014aa0f0ca26fadbc51211df6577bb5bbb55a874272126eaae65b`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:aefe5283132980ecb8c737c02360f1b40b0f6f61258e57f3996f15e6bff04011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65409771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f480e12fcca158293259ad16bdbba360bbc94e5233c53cdbdf3957974f8ab059`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:4155e31c6d4fb10db7f6a61d8ca20135447bd5ebdf8f704fd40acc60476a24d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc9ff1536fdbb452042bed28b362978a109f3077143a4905aa74a7178bb39a4`

```dockerfile
```

-	Layers:
	-	`sha256:2194ccd4d7a4d7d1642997afee7df3809d03919d3b12de88dcff9464ded7f6ea`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-dind`

```console
$ docker pull docker@sha256:e8faad5a8dc5279dff929afc5449f2791736912fff9f99351d742db2fad01b4c
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
$ docker pull docker@sha256:66fd272fc375aad4c8fa06351c414e15bffe8cb015c171e1b8a8efe36a72cc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144697597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1313f791fe53991cf72e89e5a65bcbdae561d63d520f99a7a760eae495ee02`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:28473ead06136b9958cc1a1bd70bed1188d809f0f25c484db291f1956ca9e1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ced95bfde8a7bbf10e34d3fb4f89fc18d330f34bf7e660350d3d2b0b5728256`

```dockerfile
```

-	Layers:
	-	`sha256:49c60a3b91135fb9584b9d3e51480be749752c97059e8625703c6c19127fe12d`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 34.5 KB (34541 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:a19c72a37f00de350731a5010c2053075ec25b18f53f1b6314ae25390da78357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136326839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f80bd56636d7ff34a6c7ab6949df32fcea6bcab745c3a1872fc063dc432ecb6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:44 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:44 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3dc8a54644d062c6b33fd24c580ecc105b51cc5ce356debc0929520e4b0b05`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 7.3 MB (7304287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bc999f6f725d4837a27aa10fa9df85ccc09abd32abf8f33cd5c4b5f4a41f42`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 90.7 KB (90719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d48ca054ccc9d4dd4d18e965fc5470f2d06536a09ab0b7012422738cd4b1ca`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b77d9cdf7da439824dee2f5532bc3a7330bdf4886d653abd85413ee9796fc32`  
		Last Modified: Tue, 04 Aug 2026 01:11:57 GMT  
		Size: 62.7 MB (62680396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4254ef26909eaafbb7aad3c5d8642b5f354cd6fc91a31944740ebfd0548c30c`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384095bbdbbc699d6cf2d9c6c933dcd77f35edcfb5efd00365fea947343655eb`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b5d5407bec15e8de669daf677d610bba0b39fe5307276e0e4976d34c38724a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1ce24de9c643d58b0bc9712978d83fd2abaa13f5067953fb125c9372ecc401`

```dockerfile
```

-	Layers:
	-	`sha256:730a80617729435674b3e89f8112d751e4d50195fa34861f5806cc5143d66e19`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:cc27f04af4655abcad05a2d8748c22b611edb31990047c0785e6568ce139cce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134403049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2ac0e0ad4edd4919bad646f52e6d0429b545836925a43e452edfef8073e4ff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:06 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a2a93b38a685cc5eb6c5bcff47d5488934f20bf066436820dc020de9b9638`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 6.6 MB (6598779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a6238af14963d1dc22cb7cd1b9dc2b92fe4d6717bfae03be9e5082eb4c4f7`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 87.0 KB (86967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0386fa02653d83bd699ade4b5fc3c00d6a9f09401aab8785914c95ad07a4b04a`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98aa5a644000cc4dbee0dce92ca224292d88675aff4c1baeef36cf852027f3`  
		Last Modified: Tue, 04 Aug 2026 01:11:18 GMT  
		Size: 62.5 MB (62512204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39d0182e93f6e7e95d430a1d6a1e04fb7028147ad01a1d61e56495de5034b2c`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b7eab1fac32e19ec71ff7e821555b644641ecc61cbf460cd513d57bfb4cdc9`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:ab56260e36efbe852b42db675498beb7ebfd17f43be23680e52bcdd23ad225f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f071f9741106115c5e5e16179adaee896f61ef3e659cfee61b43ff723262bd`

```dockerfile
```

-	Layers:
	-	`sha256:92deaa2d75cb112c2bef71b24799bf1ca37311e1d19646d7cb58959f535ecbad`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c3d2ec83b21eb5c7d856b7ef8dc3e4d5642e73cc09bd35a4149bd6d3d16916d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133842396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22ec39b0663b0691c93beecd0ea78994ab5cbebfd6ffa1ce0e3e4fd93efe2b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:e08a0abc409d35d3bfd90ea72e770b746f5133fc4a7827615b4fd87638c76fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e97919f050be2011d1dfc5a61473292c28dc0f67afbc18dce74771de09ad3ef`

```dockerfile
```

-	Layers:
	-	`sha256:526f1ed52706e03d43e3110602abe29f8bcbab116c1c8d3b0e574042653f477a`  
		Last Modified: Tue, 04 Aug 2026 01:12:08 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-dind-rootless`

```console
$ docker pull docker@sha256:7451e3dc398b11ba2d8183bb7915402683e3d32e5ec8cef835c215f314a65fef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.7-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:2018be78d999440ed6bd3d156552d6ebc22477471ee58fec5183e1af8d575d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160277261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bb13ac01fa121f374d1780017ff3d755237adac6f9e0de27f16d63b14eeecd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
# Tue, 04 Aug 2026 02:17:51 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Tue, 04 Aug 2026 02:17:51 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Tue, 04 Aug 2026 02:17:51 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
VOLUME [/home/rootless/.local/share/docker]
# Tue, 04 Aug 2026 02:17:52 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb75d12a625bf819caa3d51b8d1c879e51897c6676b2ee63833a70859e4b0efd`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 3.5 MB (3471287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817ad376008c4f28140d1be13fb69b688cb065e193e63c638b8d47a1d88ca5fe`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7983c29b47751363ae7153dd058b1476a6a79d41cfc32d84b8b9fd7747540d`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d050e5de5687dfd22fb8ca17906c577a9d73f46465bcf9d76955957b08278e7`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 12.1 MB (12107033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e857ae8ed0c4472c13c19280ecbf835b26bd2b4ae79db872bd98c5a22fa78143`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:49ced0e0be3bedc4f1e7de380bed20390a71b4fa6bbbc80f5050c952220bf41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9727c290281531783ac031e2b4406730a07ab2d83a36e4b6322f3bf6e22936f`

```dockerfile
```

-	Layers:
	-	`sha256:e69bdf4386fd9901b32652df5bcae6150191f756443488f428f9423af5f6adab`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d2d79f57b79aac9d4901c2854654290b6eb9a33d3dd5ece7352ab97ff9952041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.5 MB (148532723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc9d8390b6c09f74a43a00bb39c675e102bfade78f11c3fbfe2536cd0156956`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
# Tue, 04 Aug 2026 02:17:52 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
VOLUME [/home/rootless/.local/share/docker]
# Tue, 04 Aug 2026 02:17:54 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf40b7c98a453376cad6ae84df1136ae24a51a28c50f92b7846c9b1bff0db36`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 3.4 MB (3448902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead6d99e0d94ea8f397343f7834db911160e2832faa18c68f213d525848e26c2`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9d33c19ad14478ed81579bbca3535607e2e831b480d42dc4dc6c834f2e4ded`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6700f8416c99a200410ce75cfe1a953c3ff86fe4b1676d8533a5530a189a8a7`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 11.2 MB (11240087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecea130fd9c9b0336b40c01c824d298dd4542d8f0b436dc42a5af538d7969d6`  
		Last Modified: Tue, 04 Aug 2026 02:18:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:212b712621298e713fd0e9f09050c73260838f2cccc9ba5085971db882d57f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b5ec631da61ec408593e26269fefa5fdad28e9bed38ec40e5e24045cb10dc8`

```dockerfile
```

-	Layers:
	-	`sha256:2896620642be018449d45394b6b4424f4443298453e1d6d7e7ec57fffd7f4c0c`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-windowsservercore`

```console
$ docker pull docker@sha256:82446516ed2a7be925096b1c281a22f35d23b4d54acac87c94212ab37e1b4e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:00b8f19e6736a545c08e2146ae42229f6c9f994ed5ee05b2d4b82cabfc72c65e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416072513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fd5f2b3aedca6aa8b5fe35fb57f05c159b080f79cff850d5dc74b45dc9dd79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:58:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:42 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 01:00:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 01:00:01 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:21 GMT
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
	-	`sha256:46b58d161a09b7b87b23ddb007fd7769db7903f300ec19140f0ba87bdc0d78c5`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7444cbbd41b3ba406fae5ce2647ac34733c17050e0a5b5c205d7602c408bbb75`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 404.2 KB (404245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde98e179a3be9692afcaed5b6e30f14d31141057b6b2455d2075399d3a7074`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a5afa79f915ff1b3b8db9e563f57da0585a49e4d657b0e5641005e4019ad8`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38c21ad3178d34f678469e103e63a222544e8bda97ae1f9114867c420f9439e`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 20.2 MB (20240251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ac1d31562171021ed4e8cc7c88d315a3a52c2cab2d1bb8beec0d6cb97ab5e`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabc94e0d1253040423ffd233cd0d37eab5b24f47b042abda7bd15e8ee03d765`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2222e8a964c20dd36e9770ed67483e386d6ea9e07927245ba1015b7462861d`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee22aa0a32c854ee7a0ab8785c894990c9f1fc92a0b3377adf35c258f3bc50`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 23.8 MB (23849798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10391758776f511e316356a8761ec6d30417ff963d39711e98c3d548b59773dc`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6d8c3dcae51c37c036f744fa7010721cc2947cd36341b58e63d49b08fe6f45`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1febf7e8a1634cc13e05e6a3cda09506f42a2aa04d14c455205298128d0a68fd`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1855796a5d8de672c86619da48b775fc6824228098cef0bdc86116ccb4ef9`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 16.6 MB (16558411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.7-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:be5fca7748d82d202f7ba0f06d1d36cbc9a1be985384d3deb7f728cdc661be33
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb17e5754d7d37f48390161e35baf55eb6d6666e46596713dd0273723485bb1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 00:58:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:37 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:38 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 00:59:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 00:59:57 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:59:58 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 00:59:59 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:22 GMT
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
	-	`sha256:2129f3cb38f49afd6241a71e794f810c9057f1c491a226396cf51cd8e29083a6`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53ebbbcaa31229df9a29c0414de89f2da9542565395f9daf458da26aaef7711`  
		Last Modified: Tue, 04 Aug 2026 01:00:32 GMT  
		Size: 502.1 KB (502053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d22165eebf89e9acb6242e781592c2b50e10416816135874c1b973c4b943d`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b192f9a0e4128f04f447e05db357ecd40cb9a6e423c289631a05bbe102312b`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6b7f3108f89031ae9306466aa32cf52bb40bd9e1db4e29469b1f0813cc75ab`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 20.2 MB (20197512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a508c0f55671f9f5f0f1a0015191456d711e574cc4d19721f6d53d7b5507616a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02960cbfb74aca118cf05e1145f0320988fe05b7f84d955d56cfe52815dab0e6`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89973adeb0ad50f0fe7027c833ba635514fd30a66e5826d68ab95411ba07a60a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81769092d00fe594cd7f1c4312290b709d37c8281f25bc972b155e0ea4c874ee`  
		Last Modified: Tue, 04 Aug 2026 01:00:43 GMT  
		Size: 23.8 MB (23814236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08c5dc8d0c447bd86ae70a8c8d33d2a09b7d1adbe677423816545bc8f810b34`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b50347d5fd42030fb405f61d77b7b8ad6a48a8a3ae2d1a3c4b4a6485767feb`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fada68e2b44add556af3a779bebe441190a1c3929d47d176dd53c56b9aa3d52`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292cacc4bab98ebb57b2b46a711ce8b540a61b3916266e7a04ecf95a6f7c500d`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 16.5 MB (16518403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:44863ec675cd6150f1fecac8045f908a494945a6a9392b57afc70e4401d4df0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:be5fca7748d82d202f7ba0f06d1d36cbc9a1be985384d3deb7f728cdc661be33
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb17e5754d7d37f48390161e35baf55eb6d6666e46596713dd0273723485bb1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 00:58:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:37 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:38 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 00:59:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 00:59:57 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:59:58 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 00:59:59 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:22 GMT
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
	-	`sha256:2129f3cb38f49afd6241a71e794f810c9057f1c491a226396cf51cd8e29083a6`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53ebbbcaa31229df9a29c0414de89f2da9542565395f9daf458da26aaef7711`  
		Last Modified: Tue, 04 Aug 2026 01:00:32 GMT  
		Size: 502.1 KB (502053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d22165eebf89e9acb6242e781592c2b50e10416816135874c1b973c4b943d`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b192f9a0e4128f04f447e05db357ecd40cb9a6e423c289631a05bbe102312b`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6b7f3108f89031ae9306466aa32cf52bb40bd9e1db4e29469b1f0813cc75ab`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 20.2 MB (20197512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a508c0f55671f9f5f0f1a0015191456d711e574cc4d19721f6d53d7b5507616a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02960cbfb74aca118cf05e1145f0320988fe05b7f84d955d56cfe52815dab0e6`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89973adeb0ad50f0fe7027c833ba635514fd30a66e5826d68ab95411ba07a60a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81769092d00fe594cd7f1c4312290b709d37c8281f25bc972b155e0ea4c874ee`  
		Last Modified: Tue, 04 Aug 2026 01:00:43 GMT  
		Size: 23.8 MB (23814236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08c5dc8d0c447bd86ae70a8c8d33d2a09b7d1adbe677423816545bc8f810b34`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b50347d5fd42030fb405f61d77b7b8ad6a48a8a3ae2d1a3c4b4a6485767feb`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fada68e2b44add556af3a779bebe441190a1c3929d47d176dd53c56b9aa3d52`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292cacc4bab98ebb57b2b46a711ce8b540a61b3916266e7a04ecf95a6f7c500d`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 16.5 MB (16518403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:72a48017fb7e7a87f954db8391c4a2153a3196af3a5e515d974aff05880e3af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29.7-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:00b8f19e6736a545c08e2146ae42229f6c9f994ed5ee05b2d4b82cabfc72c65e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416072513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fd5f2b3aedca6aa8b5fe35fb57f05c159b080f79cff850d5dc74b45dc9dd79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:58:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:42 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 01:00:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 01:00:01 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:21 GMT
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
	-	`sha256:46b58d161a09b7b87b23ddb007fd7769db7903f300ec19140f0ba87bdc0d78c5`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7444cbbd41b3ba406fae5ce2647ac34733c17050e0a5b5c205d7602c408bbb75`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 404.2 KB (404245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde98e179a3be9692afcaed5b6e30f14d31141057b6b2455d2075399d3a7074`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a5afa79f915ff1b3b8db9e563f57da0585a49e4d657b0e5641005e4019ad8`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38c21ad3178d34f678469e103e63a222544e8bda97ae1f9114867c420f9439e`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 20.2 MB (20240251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ac1d31562171021ed4e8cc7c88d315a3a52c2cab2d1bb8beec0d6cb97ab5e`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabc94e0d1253040423ffd233cd0d37eab5b24f47b042abda7bd15e8ee03d765`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2222e8a964c20dd36e9770ed67483e386d6ea9e07927245ba1015b7462861d`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee22aa0a32c854ee7a0ab8785c894990c9f1fc92a0b3377adf35c258f3bc50`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 23.8 MB (23849798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10391758776f511e316356a8761ec6d30417ff963d39711e98c3d548b59773dc`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6d8c3dcae51c37c036f744fa7010721cc2947cd36341b58e63d49b08fe6f45`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1febf7e8a1634cc13e05e6a3cda09506f42a2aa04d14c455205298128d0a68fd`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1855796a5d8de672c86619da48b775fc6824228098cef0bdc86116ccb4ef9`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 16.6 MB (16558411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7.2`

**does not exist** (yet?)

## `docker:29.7.2-alpine3.24`

**does not exist** (yet?)

## `docker:29.7.2-cli`

**does not exist** (yet?)

## `docker:29.7.2-cli-alpine3.24`

**does not exist** (yet?)

## `docker:29.7.2-dind`

**does not exist** (yet?)

## `docker:29.7.2-dind-alpine3.24`

**does not exist** (yet?)

## `docker:29.7.2-dind-rootless`

**does not exist** (yet?)

## `docker:29.7.2-windowsservercore`

**does not exist** (yet?)

## `docker:29.7.2-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `docker:29.7.2-windowsservercore-ltsc2025`

**does not exist** (yet?)

## `docker:cli`

```console
$ docker pull docker@sha256:27a51d5ab1cd38d9eeaba7b415b8c07bc10c31e1cf1ec8d78f6413fcfab3f44f
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
$ docker pull docker@sha256:8e7f8c848f46647a532833619f894480f54cd20c0057e1b552d8b46bf3efddb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70225727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de32b1507d27aa8d8e727d6580f67f5043bd27f8d85e3303f5786a3f84f6027`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:ed7d6828dffe019a3f4c20df8e78f358aa5341c9af4a8953eefe6434cf0c00dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95797396a95cad2fb54725513864669a13d1653dcb3c2806caf30a40fc5be634`

```dockerfile
```

-	Layers:
	-	`sha256:41ee1380150a956617a044aa975543e79536a54f15d1fdd86aebfc1c563d3cac`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 38.1 KB (38054 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:6f92285bf665869d3b863b2f517a913066fef9dc9c9bcacf0b541f2dc10b50b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66245436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f2738948c605c47c4c3f8f490f1d27260918431d354008f058dc6f232947b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:e5c927589a930490367090e422879b7e49d61e067c2806349afa36a4b2500625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1379550c6c90a39a8f03184dd316386b66f50bba8378eeffd3dd8f2c64bbf9`

```dockerfile
```

-	Layers:
	-	`sha256:c6ce26fe6e040872b8acb76fcd3d5a2b39ed9eff08b8fe361cde55edb7b73142`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:cf045e4265177e4b8ea0b3f261d4317ab4d901a7df42b4d447fd98b869bdc751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65199097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917335f792506265111e38f6e31d093efa51ccb86783d079d221818b4dd9630d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:08836b0e39f63068d60a092c4a5de25c524ba073fd80d976646d9e8c609df34c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4f6f7ca7783cb35a11989ad65673094f16c7f024735ba250a67ffc7e274733`

```dockerfile
```

-	Layers:
	-	`sha256:4dd4d839c28014aa0f0ca26fadbc51211df6577bb5bbb55a874272126eaae65b`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:aefe5283132980ecb8c737c02360f1b40b0f6f61258e57f3996f15e6bff04011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65409771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f480e12fcca158293259ad16bdbba360bbc94e5233c53cdbdf3957974f8ab059`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:4155e31c6d4fb10db7f6a61d8ca20135447bd5ebdf8f704fd40acc60476a24d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc9ff1536fdbb452042bed28b362978a109f3077143a4905aa74a7178bb39a4`

```dockerfile
```

-	Layers:
	-	`sha256:2194ccd4d7a4d7d1642997afee7df3809d03919d3b12de88dcff9464ded7f6ea`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:e8faad5a8dc5279dff929afc5449f2791736912fff9f99351d742db2fad01b4c
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
$ docker pull docker@sha256:66fd272fc375aad4c8fa06351c414e15bffe8cb015c171e1b8a8efe36a72cc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144697597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1313f791fe53991cf72e89e5a65bcbdae561d63d520f99a7a760eae495ee02`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:28473ead06136b9958cc1a1bd70bed1188d809f0f25c484db291f1956ca9e1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ced95bfde8a7bbf10e34d3fb4f89fc18d330f34bf7e660350d3d2b0b5728256`

```dockerfile
```

-	Layers:
	-	`sha256:49c60a3b91135fb9584b9d3e51480be749752c97059e8625703c6c19127fe12d`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 34.5 KB (34541 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:a19c72a37f00de350731a5010c2053075ec25b18f53f1b6314ae25390da78357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136326839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f80bd56636d7ff34a6c7ab6949df32fcea6bcab745c3a1872fc063dc432ecb6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:44 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:44 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3dc8a54644d062c6b33fd24c580ecc105b51cc5ce356debc0929520e4b0b05`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 7.3 MB (7304287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bc999f6f725d4837a27aa10fa9df85ccc09abd32abf8f33cd5c4b5f4a41f42`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 90.7 KB (90719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d48ca054ccc9d4dd4d18e965fc5470f2d06536a09ab0b7012422738cd4b1ca`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b77d9cdf7da439824dee2f5532bc3a7330bdf4886d653abd85413ee9796fc32`  
		Last Modified: Tue, 04 Aug 2026 01:11:57 GMT  
		Size: 62.7 MB (62680396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4254ef26909eaafbb7aad3c5d8642b5f354cd6fc91a31944740ebfd0548c30c`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384095bbdbbc699d6cf2d9c6c933dcd77f35edcfb5efd00365fea947343655eb`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:b5d5407bec15e8de669daf677d610bba0b39fe5307276e0e4976d34c38724a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1ce24de9c643d58b0bc9712978d83fd2abaa13f5067953fb125c9372ecc401`

```dockerfile
```

-	Layers:
	-	`sha256:730a80617729435674b3e89f8112d751e4d50195fa34861f5806cc5143d66e19`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:cc27f04af4655abcad05a2d8748c22b611edb31990047c0785e6568ce139cce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134403049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2ac0e0ad4edd4919bad646f52e6d0429b545836925a43e452edfef8073e4ff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:06 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a2a93b38a685cc5eb6c5bcff47d5488934f20bf066436820dc020de9b9638`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 6.6 MB (6598779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a6238af14963d1dc22cb7cd1b9dc2b92fe4d6717bfae03be9e5082eb4c4f7`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 87.0 KB (86967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0386fa02653d83bd699ade4b5fc3c00d6a9f09401aab8785914c95ad07a4b04a`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98aa5a644000cc4dbee0dce92ca224292d88675aff4c1baeef36cf852027f3`  
		Last Modified: Tue, 04 Aug 2026 01:11:18 GMT  
		Size: 62.5 MB (62512204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39d0182e93f6e7e95d430a1d6a1e04fb7028147ad01a1d61e56495de5034b2c`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b7eab1fac32e19ec71ff7e821555b644641ecc61cbf460cd513d57bfb4cdc9`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:ab56260e36efbe852b42db675498beb7ebfd17f43be23680e52bcdd23ad225f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f071f9741106115c5e5e16179adaee896f61ef3e659cfee61b43ff723262bd`

```dockerfile
```

-	Layers:
	-	`sha256:92deaa2d75cb112c2bef71b24799bf1ca37311e1d19646d7cb58959f535ecbad`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c3d2ec83b21eb5c7d856b7ef8dc3e4d5642e73cc09bd35a4149bd6d3d16916d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133842396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22ec39b0663b0691c93beecd0ea78994ab5cbebfd6ffa1ce0e3e4fd93efe2b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:e08a0abc409d35d3bfd90ea72e770b746f5133fc4a7827615b4fd87638c76fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e97919f050be2011d1dfc5a61473292c28dc0f67afbc18dce74771de09ad3ef`

```dockerfile
```

-	Layers:
	-	`sha256:526f1ed52706e03d43e3110602abe29f8bcbab116c1c8d3b0e574042653f477a`  
		Last Modified: Tue, 04 Aug 2026 01:12:08 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:7451e3dc398b11ba2d8183bb7915402683e3d32e5ec8cef835c215f314a65fef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:2018be78d999440ed6bd3d156552d6ebc22477471ee58fec5183e1af8d575d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160277261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bb13ac01fa121f374d1780017ff3d755237adac6f9e0de27f16d63b14eeecd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
# Tue, 04 Aug 2026 02:17:51 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Tue, 04 Aug 2026 02:17:51 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Tue, 04 Aug 2026 02:17:51 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
VOLUME [/home/rootless/.local/share/docker]
# Tue, 04 Aug 2026 02:17:52 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb75d12a625bf819caa3d51b8d1c879e51897c6676b2ee63833a70859e4b0efd`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 3.5 MB (3471287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817ad376008c4f28140d1be13fb69b688cb065e193e63c638b8d47a1d88ca5fe`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7983c29b47751363ae7153dd058b1476a6a79d41cfc32d84b8b9fd7747540d`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d050e5de5687dfd22fb8ca17906c577a9d73f46465bcf9d76955957b08278e7`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 12.1 MB (12107033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e857ae8ed0c4472c13c19280ecbf835b26bd2b4ae79db872bd98c5a22fa78143`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:49ced0e0be3bedc4f1e7de380bed20390a71b4fa6bbbc80f5050c952220bf41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9727c290281531783ac031e2b4406730a07ab2d83a36e4b6322f3bf6e22936f`

```dockerfile
```

-	Layers:
	-	`sha256:e69bdf4386fd9901b32652df5bcae6150191f756443488f428f9423af5f6adab`  
		Last Modified: Tue, 04 Aug 2026 02:17:57 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d2d79f57b79aac9d4901c2854654290b6eb9a33d3dd5ece7352ab97ff9952041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.5 MB (148532723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc9d8390b6c09f74a43a00bb39c675e102bfade78f11c3fbfe2536cd0156956`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
# Tue, 04 Aug 2026 02:17:52 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Tue, 04 Aug 2026 02:17:52 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Tue, 04 Aug 2026 02:17:54 GMT
VOLUME [/home/rootless/.local/share/docker]
# Tue, 04 Aug 2026 02:17:54 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf40b7c98a453376cad6ae84df1136ae24a51a28c50f92b7846c9b1bff0db36`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 3.4 MB (3448902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead6d99e0d94ea8f397343f7834db911160e2832faa18c68f213d525848e26c2`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9d33c19ad14478ed81579bbca3535607e2e831b480d42dc4dc6c834f2e4ded`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6700f8416c99a200410ce75cfe1a953c3ff86fe4b1676d8533a5530a189a8a7`  
		Last Modified: Tue, 04 Aug 2026 02:17:59 GMT  
		Size: 11.2 MB (11240087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecea130fd9c9b0336b40c01c824d298dd4542d8f0b436dc42a5af538d7969d6`  
		Last Modified: Tue, 04 Aug 2026 02:18:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:212b712621298e713fd0e9f09050c73260838f2cccc9ba5085971db882d57f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b5ec631da61ec408593e26269fefa5fdad28e9bed38ec40e5e24045cb10dc8`

```dockerfile
```

-	Layers:
	-	`sha256:2896620642be018449d45394b6b4424f4443298453e1d6d7e7ec57fffd7f4c0c`  
		Last Modified: Tue, 04 Aug 2026 02:17:58 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:e8faad5a8dc5279dff929afc5449f2791736912fff9f99351d742db2fad01b4c
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
$ docker pull docker@sha256:66fd272fc375aad4c8fa06351c414e15bffe8cb015c171e1b8a8efe36a72cc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144697597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1313f791fe53991cf72e89e5a65bcbdae561d63d520f99a7a760eae495ee02`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:56 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:00 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:01 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:01 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:12:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:12:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:12:22 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:12:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:12:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:22 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8525304b49ad44447145ac9ac94d67c45cbd9aa5f4db7d62bab7548a7c510afe`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 8.2 MB (8183869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b986a6cb6c546595a5ceb328d0d9c6be3b56c220b5608355e5e6cc8786bc52`  
		Last Modified: Tue, 04 Aug 2026 00:54:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8452e54b7190cc3373b71ec941057df90cdd38362b90f9efee43a60cbcd7754`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 19.5 MB (19543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede78f0e7dd70ea5e9c2795391d581de2d29bf7cd3cb333ba8eea5abb440c85f`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 22.9 MB (22879802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32a06684e0a9598717e4bc4312f09937842fdb545382fb107c5ed6dd3babd9f`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 15.8 MB (15770402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0757406f4c9e2875361ca67b3301681c4a520e27a8cd4e352136fc5b43957`  
		Last Modified: Tue, 04 Aug 2026 00:54:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30b087cab49468fae1b8379fb4fc0284d439a45f7186ebb06a07ae7e8dc3546`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59698c9a86f323039774c21dac8a66e3e3cbd632ad58e0b70f0f3de8e8e0d6c`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8206b36ce0f8a3a13aec2cf3ce77d47ecee7bc67517f43500d238626ce6d5`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 7.0 MB (6965192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d321a60f46d5090923f251e83608a2fa1ea58630bbf67856b9d4f0ac37bf4f2`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 91.3 KB (91330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe0b3d84845d7c1e5f8a7636c6d535f7bacb7279669fe6f18772f4533bdde9`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30cc0daa375dfc56bcc0b41dfa019bb59edc212c26b3d83a8bb1323d7f9fb`  
		Last Modified: Tue, 04 Aug 2026 01:12:35 GMT  
		Size: 67.4 MB (67409351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6345351e43ca16809a1db076f451b37c11995467524425416909d776c2bd71`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48ee76d31cce8a7f15b90cbbb99d9d1286b253fbb1c4e04fd8ecfc3d0f0b233`  
		Last Modified: Tue, 04 Aug 2026 01:12:34 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:28473ead06136b9958cc1a1bd70bed1188d809f0f25c484db291f1956ca9e1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ced95bfde8a7bbf10e34d3fb4f89fc18d330f34bf7e660350d3d2b0b5728256`

```dockerfile
```

-	Layers:
	-	`sha256:49c60a3b91135fb9584b9d3e51480be749752c97059e8625703c6c19127fe12d`  
		Last Modified: Tue, 04 Aug 2026 01:12:33 GMT  
		Size: 34.5 KB (34541 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:a19c72a37f00de350731a5010c2053075ec25b18f53f1b6314ae25390da78357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136326839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f80bd56636d7ff34a6c7ab6949df32fcea6bcab745c3a1872fc063dc432ecb6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:54:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:54:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:54:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:54:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:44 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:41 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:44 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:44 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:44 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741f7961db96d1c2992f0dc5d515d4fc55ada3ee226fb7d5e324266877fa9c2e`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 8.1 MB (8084799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39eb2c3fccf061255b153d67b8a9d0992d6b4a2968c568586c1c21541138e3`  
		Last Modified: Tue, 04 Aug 2026 00:54:50 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeae635da613204d0bad8226d816ed13e64db0b3980fb98949adbd0abd46a65`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 18.2 MB (18170687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294800c2b619ae877900be522970b85f19cf06744debb53fd94901693f50c9e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 21.5 MB (21502064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cd9168070f3370e84037534e4f446a4fc0965bc19592f789ffe266c454e76e`  
		Last Modified: Tue, 04 Aug 2026 00:54:51 GMT  
		Size: 14.9 MB (14932283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65002cfbc04deee20770964b4ff941b536fc31bc6be2e389e0be5b528c3a9ab`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad76f8b9fa71209c94ce74773f05fead1f52f710ac5b398d7d475aa9dc5711a`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435480fc3b59a42aafe6e85f3ef7baff831f4e31fd809fd253f01e7af620a2`  
		Last Modified: Tue, 04 Aug 2026 00:54:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3dc8a54644d062c6b33fd24c580ecc105b51cc5ce356debc0929520e4b0b05`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 7.3 MB (7304287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bc999f6f725d4837a27aa10fa9df85ccc09abd32abf8f33cd5c4b5f4a41f42`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 90.7 KB (90719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d48ca054ccc9d4dd4d18e965fc5470f2d06536a09ab0b7012422738cd4b1ca`  
		Last Modified: Tue, 04 Aug 2026 01:11:55 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b77d9cdf7da439824dee2f5532bc3a7330bdf4886d653abd85413ee9796fc32`  
		Last Modified: Tue, 04 Aug 2026 01:11:57 GMT  
		Size: 62.7 MB (62680396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4254ef26909eaafbb7aad3c5d8642b5f354cd6fc91a31944740ebfd0548c30c`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384095bbdbbc699d6cf2d9c6c933dcd77f35edcfb5efd00365fea947343655eb`  
		Last Modified: Tue, 04 Aug 2026 01:11:56 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:b5d5407bec15e8de669daf677d610bba0b39fe5307276e0e4976d34c38724a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1ce24de9c643d58b0bc9712978d83fd2abaa13f5067953fb125c9372ecc401`

```dockerfile
```

-	Layers:
	-	`sha256:730a80617729435674b3e89f8112d751e4d50195fa34861f5806cc5143d66e19`  
		Last Modified: Tue, 04 Aug 2026 01:11:54 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:cc27f04af4655abcad05a2d8748c22b611edb31990047c0785e6568ce139cce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134403049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2ac0e0ad4edd4919bad646f52e6d0429b545836925a43e452edfef8073e4ff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:53:55 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:53:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:53:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:53:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:54:02 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:54:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:54:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:54:04 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:06 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:06 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570d55ed165cf9005993609607502a1bcfa6c0785420443cc75e17637822c9`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 7.4 MB (7380524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651f88476a9056cef1b8dfdbe1646e71423bf492c2914d69b82f3f3acc3c786`  
		Last Modified: Tue, 04 Aug 2026 00:54:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c771d2370a974b7c4a45bd6f425310ecb02311a7e5469be7930835d7f5b6a32`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 18.2 MB (18153358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de315c220476aad1e78fefedba97c7e55d2036033c8b0fe9edc91b9f090e5a92`  
		Last Modified: Tue, 04 Aug 2026 00:54:11 GMT  
		Size: 21.5 MB (21485936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0a6bdccaf0fbf5542c806bb58727b8c10488f79410f0be7aa8559f792780f1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 14.9 MB (14916510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c806daf9a92c07925fb446934fb46949bf6212c20440fde49ac7a4c6d4b19b1`  
		Last Modified: Tue, 04 Aug 2026 00:54:12 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59b09c7c6f3cbfd3b7e03b0c96e48b967888fa2a1367880264463dd9f6de44`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57b5e3b0059fa46fb472b038d8c935e96b53050a55771641aa750daf4294312`  
		Last Modified: Tue, 04 Aug 2026 00:54:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a2a93b38a685cc5eb6c5bcff47d5488934f20bf066436820dc020de9b9638`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 6.6 MB (6598779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a6238af14963d1dc22cb7cd1b9dc2b92fe4d6717bfae03be9e5082eb4c4f7`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 87.0 KB (86967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0386fa02653d83bd699ade4b5fc3c00d6a9f09401aab8785914c95ad07a4b04a`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98aa5a644000cc4dbee0dce92ca224292d88675aff4c1baeef36cf852027f3`  
		Last Modified: Tue, 04 Aug 2026 01:11:18 GMT  
		Size: 62.5 MB (62512204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39d0182e93f6e7e95d430a1d6a1e04fb7028147ad01a1d61e56495de5034b2c`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b7eab1fac32e19ec71ff7e821555b644641ecc61cbf460cd513d57bfb4cdc9`  
		Last Modified: Tue, 04 Aug 2026 01:11:17 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:ab56260e36efbe852b42db675498beb7ebfd17f43be23680e52bcdd23ad225f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f071f9741106115c5e5e16179adaee896f61ef3e659cfee61b43ff723262bd`

```dockerfile
```

-	Layers:
	-	`sha256:92deaa2d75cb112c2bef71b24799bf1ca37311e1d19646d7cb58959f535ecbad`  
		Last Modified: Tue, 04 Aug 2026 01:11:16 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c3d2ec83b21eb5c7d856b7ef8dc3e4d5642e73cc09bd35a4149bd6d3d16916d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133842396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22ec39b0663b0691c93beecd0ea78994ab5cbebfd6ffa1ce0e3e4fd93efe2b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 00:52:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 04 Aug 2026 00:52:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:52:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 04 Aug 2026 00:52:54 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:52:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 04 Aug 2026 00:52:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 00:52:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 04 Aug 2026 00:52:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 04 Aug 2026 00:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 00:52:56 GMT
CMD ["sh"]
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 04 Aug 2026 01:11:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 04 Aug 2026 01:11:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:11:59 GMT
VOLUME [/var/lib/docker]
# Tue, 04 Aug 2026 01:11:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 04 Aug 2026 01:11:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 04 Aug 2026 01:11:59 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638e3dc845e4a2ce2ac840cc08023279b50c0ae4366550c3ea05aafb32eb7e1b`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 8.2 MB (8235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858b12fef1575a7cb3f7733acf3f2c629ff5bbf2f2cc78b12840ec914115934`  
		Last Modified: Tue, 04 Aug 2026 00:53:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d989f39dc4f2dbe6b8ae2b93081a94530fbe9e6bc219187190d26ac0ec7312db`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 18.0 MB (17981458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4473737360bd7b216ff3f30f95ec8a7f41a41a7b1a322edfddbbd0c13df851`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99700a7b66026396ec5f2657a3ef773d94e4e58363c55ae548664e8806e4ac`  
		Last Modified: Tue, 04 Aug 2026 00:53:03 GMT  
		Size: 14.3 MB (14286280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000d0e15127f524a2d1b56257d63d4eb4e626b0d94821af647b2e386d146b33b`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bfce2121b0453cbe6bb102ed4d2808c5af9f7140b377dc642a8bb39114fc74`  
		Last Modified: Tue, 04 Aug 2026 00:53:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbd8ecd0db458a246c36fd057a20b2a1a59f97731ca9598a89111f216a30d9`  
		Last Modified: Tue, 04 Aug 2026 00:53:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779e21df5eaa766c2b9598b35dae39b3ccdc706c2806a5d69cc7b3f3cda2215`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 7.2 MB (7240449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6d5b95a61a1318a32ae1ebf374f4daea650f668d5faf2796c05284d1352a9`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 99.9 KB (99940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0062a981385eae710c17553aafef30579aa575cd15360e1c7a93ca39f3fca63`  
		Last Modified: Tue, 04 Aug 2026 01:12:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33f0eac2894c67e4a0b24d9ca4b09de10ab36032bd427cca4521db61c8ea4a1`  
		Last Modified: Tue, 04 Aug 2026 01:12:11 GMT  
		Size: 61.1 MB (61086234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78542838bfedea3d00e0c155a7fc5602f55814504bf15d1fda65474c8afc3088`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6363f9bb510b7df06af592cb5c9afbd3cfd6947d503604d13f7ba40aaa9a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:10 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:e08a0abc409d35d3bfd90ea72e770b746f5133fc4a7827615b4fd87638c76fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e97919f050be2011d1dfc5a61473292c28dc0f67afbc18dce74771de09ad3ef`

```dockerfile
```

-	Layers:
	-	`sha256:526f1ed52706e03d43e3110602abe29f8bcbab116c1c8d3b0e574042653f477a`  
		Last Modified: Tue, 04 Aug 2026 01:12:08 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:82446516ed2a7be925096b1c281a22f35d23b4d54acac87c94212ab37e1b4e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:00b8f19e6736a545c08e2146ae42229f6c9f994ed5ee05b2d4b82cabfc72c65e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416072513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fd5f2b3aedca6aa8b5fe35fb57f05c159b080f79cff850d5dc74b45dc9dd79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:58:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:42 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 01:00:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 01:00:01 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:21 GMT
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
	-	`sha256:46b58d161a09b7b87b23ddb007fd7769db7903f300ec19140f0ba87bdc0d78c5`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7444cbbd41b3ba406fae5ce2647ac34733c17050e0a5b5c205d7602c408bbb75`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 404.2 KB (404245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde98e179a3be9692afcaed5b6e30f14d31141057b6b2455d2075399d3a7074`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a5afa79f915ff1b3b8db9e563f57da0585a49e4d657b0e5641005e4019ad8`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38c21ad3178d34f678469e103e63a222544e8bda97ae1f9114867c420f9439e`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 20.2 MB (20240251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ac1d31562171021ed4e8cc7c88d315a3a52c2cab2d1bb8beec0d6cb97ab5e`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabc94e0d1253040423ffd233cd0d37eab5b24f47b042abda7bd15e8ee03d765`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2222e8a964c20dd36e9770ed67483e386d6ea9e07927245ba1015b7462861d`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee22aa0a32c854ee7a0ab8785c894990c9f1fc92a0b3377adf35c258f3bc50`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 23.8 MB (23849798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10391758776f511e316356a8761ec6d30417ff963d39711e98c3d548b59773dc`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6d8c3dcae51c37c036f744fa7010721cc2947cd36341b58e63d49b08fe6f45`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1febf7e8a1634cc13e05e6a3cda09506f42a2aa04d14c455205298128d0a68fd`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1855796a5d8de672c86619da48b775fc6824228098cef0bdc86116ccb4ef9`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 16.6 MB (16558411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:be5fca7748d82d202f7ba0f06d1d36cbc9a1be985384d3deb7f728cdc661be33
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb17e5754d7d37f48390161e35baf55eb6d6666e46596713dd0273723485bb1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 00:58:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:37 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:38 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 00:59:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 00:59:57 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:59:58 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 00:59:59 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:22 GMT
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
	-	`sha256:2129f3cb38f49afd6241a71e794f810c9057f1c491a226396cf51cd8e29083a6`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53ebbbcaa31229df9a29c0414de89f2da9542565395f9daf458da26aaef7711`  
		Last Modified: Tue, 04 Aug 2026 01:00:32 GMT  
		Size: 502.1 KB (502053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d22165eebf89e9acb6242e781592c2b50e10416816135874c1b973c4b943d`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b192f9a0e4128f04f447e05db357ecd40cb9a6e423c289631a05bbe102312b`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6b7f3108f89031ae9306466aa32cf52bb40bd9e1db4e29469b1f0813cc75ab`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 20.2 MB (20197512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a508c0f55671f9f5f0f1a0015191456d711e574cc4d19721f6d53d7b5507616a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02960cbfb74aca118cf05e1145f0320988fe05b7f84d955d56cfe52815dab0e6`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89973adeb0ad50f0fe7027c833ba635514fd30a66e5826d68ab95411ba07a60a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81769092d00fe594cd7f1c4312290b709d37c8281f25bc972b155e0ea4c874ee`  
		Last Modified: Tue, 04 Aug 2026 01:00:43 GMT  
		Size: 23.8 MB (23814236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08c5dc8d0c447bd86ae70a8c8d33d2a09b7d1adbe677423816545bc8f810b34`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b50347d5fd42030fb405f61d77b7b8ad6a48a8a3ae2d1a3c4b4a6485767feb`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fada68e2b44add556af3a779bebe441190a1c3929d47d176dd53c56b9aa3d52`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292cacc4bab98ebb57b2b46a711ce8b540a61b3916266e7a04ecf95a6f7c500d`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 16.5 MB (16518403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:44863ec675cd6150f1fecac8045f908a494945a6a9392b57afc70e4401d4df0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:be5fca7748d82d202f7ba0f06d1d36cbc9a1be985384d3deb7f728cdc661be33
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb17e5754d7d37f48390161e35baf55eb6d6666e46596713dd0273723485bb1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 00:58:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:37 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:38 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 00:59:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 00:59:57 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 00:59:58 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 00:59:59 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:22 GMT
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
	-	`sha256:2129f3cb38f49afd6241a71e794f810c9057f1c491a226396cf51cd8e29083a6`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53ebbbcaa31229df9a29c0414de89f2da9542565395f9daf458da26aaef7711`  
		Last Modified: Tue, 04 Aug 2026 01:00:32 GMT  
		Size: 502.1 KB (502053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d22165eebf89e9acb6242e781592c2b50e10416816135874c1b973c4b943d`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b192f9a0e4128f04f447e05db357ecd40cb9a6e423c289631a05bbe102312b`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6b7f3108f89031ae9306466aa32cf52bb40bd9e1db4e29469b1f0813cc75ab`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 20.2 MB (20197512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a508c0f55671f9f5f0f1a0015191456d711e574cc4d19721f6d53d7b5507616a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02960cbfb74aca118cf05e1145f0320988fe05b7f84d955d56cfe52815dab0e6`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89973adeb0ad50f0fe7027c833ba635514fd30a66e5826d68ab95411ba07a60a`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81769092d00fe594cd7f1c4312290b709d37c8281f25bc972b155e0ea4c874ee`  
		Last Modified: Tue, 04 Aug 2026 01:00:43 GMT  
		Size: 23.8 MB (23814236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08c5dc8d0c447bd86ae70a8c8d33d2a09b7d1adbe677423816545bc8f810b34`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b50347d5fd42030fb405f61d77b7b8ad6a48a8a3ae2d1a3c4b4a6485767feb`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fada68e2b44add556af3a779bebe441190a1c3929d47d176dd53c56b9aa3d52`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292cacc4bab98ebb57b2b46a711ce8b540a61b3916266e7a04ecf95a6f7c500d`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 16.5 MB (16518403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:72a48017fb7e7a87f954db8391c4a2153a3196af3a5e515d974aff05880e3af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:00b8f19e6736a545c08e2146ae42229f6c9f994ed5ee05b2d4b82cabfc72c65e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416072513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fd5f2b3aedca6aa8b5fe35fb57f05c159b080f79cff850d5dc74b45dc9dd79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:58:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 00:59:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 04 Aug 2026 00:59:42 GMT
ENV DOCKER_VERSION=29.7.1
# Tue, 04 Aug 2026 00:59:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.1.zip
# Tue, 04 Aug 2026 01:00:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Tue, 04 Aug 2026 01:00:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Tue, 04 Aug 2026 01:00:01 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Tue, 04 Aug 2026 01:00:10 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Tue, 04 Aug 2026 01:00:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Tue, 04 Aug 2026 01:00:12 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Tue, 04 Aug 2026 01:00:21 GMT
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
	-	`sha256:46b58d161a09b7b87b23ddb007fd7769db7903f300ec19140f0ba87bdc0d78c5`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7444cbbd41b3ba406fae5ce2647ac34733c17050e0a5b5c205d7602c408bbb75`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 404.2 KB (404245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde98e179a3be9692afcaed5b6e30f14d31141057b6b2455d2075399d3a7074`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a5afa79f915ff1b3b8db9e563f57da0585a49e4d657b0e5641005e4019ad8`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38c21ad3178d34f678469e103e63a222544e8bda97ae1f9114867c420f9439e`  
		Last Modified: Tue, 04 Aug 2026 01:00:31 GMT  
		Size: 20.2 MB (20240251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ac1d31562171021ed4e8cc7c88d315a3a52c2cab2d1bb8beec0d6cb97ab5e`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabc94e0d1253040423ffd233cd0d37eab5b24f47b042abda7bd15e8ee03d765`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2222e8a964c20dd36e9770ed67483e386d6ea9e07927245ba1015b7462861d`  
		Last Modified: Tue, 04 Aug 2026 01:00:27 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee22aa0a32c854ee7a0ab8785c894990c9f1fc92a0b3377adf35c258f3bc50`  
		Last Modified: Tue, 04 Aug 2026 01:00:29 GMT  
		Size: 23.8 MB (23849798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10391758776f511e316356a8761ec6d30417ff963d39711e98c3d548b59773dc`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6d8c3dcae51c37c036f744fa7010721cc2947cd36341b58e63d49b08fe6f45`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1febf7e8a1634cc13e05e6a3cda09506f42a2aa04d14c455205298128d0a68fd`  
		Last Modified: Tue, 04 Aug 2026 01:00:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1855796a5d8de672c86619da48b775fc6824228098cef0bdc86116ccb4ef9`  
		Last Modified: Tue, 04 Aug 2026 01:00:28 GMT  
		Size: 16.6 MB (16558411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
