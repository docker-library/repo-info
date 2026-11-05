<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.9`](#docker299)
-	[`docker:29.9-cli`](#docker299-cli)
-	[`docker:29.9-dind`](#docker299-dind)
-	[`docker:29.9-dind-rootless`](#docker299-dind-rootless)
-	[`docker:29.9-windowsservercore`](#docker299-windowsservercore)
-	[`docker:29.9-windowsservercore-ltsc2022`](#docker299-windowsservercore-ltsc2022)
-	[`docker:29.9-windowsservercore-ltsc2025`](#docker299-windowsservercore-ltsc2025)
-	[`docker:29.9.3`](#docker2993)
-	[`docker:29.9.3-alpine3.24`](#docker2993-alpine324)
-	[`docker:29.9.3-cli`](#docker2993-cli)
-	[`docker:29.9.3-cli-alpine3.24`](#docker2993-cli-alpine324)
-	[`docker:29.9.3-dind`](#docker2993-dind)
-	[`docker:29.9.3-dind-alpine3.24`](#docker2993-dind-alpine324)
-	[`docker:29.9.3-dind-rootless`](#docker2993-dind-rootless)
-	[`docker:29.9.3-windowsservercore`](#docker2993-windowsservercore)
-	[`docker:29.9.3-windowsservercore-ltsc2022`](#docker2993-windowsservercore-ltsc2022)
-	[`docker:29.9.3-windowsservercore-ltsc2025`](#docker2993-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:2357639ad1ea7d0194134bf3292622fd4e562483966ed674e5d7c945b5f3b28d
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
$ docker pull docker@sha256:b0d99f37f463c88cae2082083f705210296186c06632d22f6952ed43506ae520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67816455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb125438f5f1e659af1ec2b511ecafeb7257a1b2be99e2a9cae623bf0e48c7fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:55:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:55:23 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e514f90e89f129032a5a2feda31d0137bdc9f15743610d9cab33eec123745590`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 8.2 MB (8202835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e65988a92f5279e35cb8d77dc13b7286c133c1cfee36fb883e7530a4a91b0fe`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0806112db8f7eec6a6f430c058bd18e538a37b794f87181004cbb90d400eea6d`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 20.3 MB (20275619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6855d0b7102b2df62d4fb3b7a699991178588cc6e50011a20a74dbd179aa5fbd`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 23.8 MB (23826403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc1b2607ddc311575b84458a0619e1a2b217d179c4d4c550efeced41609c729`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 11.7 MB (11655770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4030326c55ce86f04d623321faca7081df4ecc4ab5e6cd8625be378d8370e3`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf5949fd59e99791fc2cd4c44952eb06abfcbc29350b56abcd713b8e00aea95`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4129d67b3c7824fc85869d3031368590408ff527848e1fc8dbaf8d5437bde58e`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:237ccd7bd3f225b175a553203815e795fa8d5e3f76ca8330e739270c487550d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d890feda7b4b1df65fe5c97bb29075ae582e4a55bed15be9c9bdd21e310406b`

```dockerfile
```

-	Layers:
	-	`sha256:377b337fb1707123876b5e594aef1fb3840202d0b82b90b929fb3f95da3c18b8`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:f650eaf0819c879e51438641a15eecde22d9ce45a5cc2de619aceec70a61e78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12590a6973c705245f8a66a18a5fd2b01dda14a896884de249d7c5ba3748c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:43 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156217087f39e1fd37626ed774193fd94b38bbd7431a79f3faafff9352a8bc92`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 8.1 MB (8106932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d47d5af1ee7c7b575c5f93f7c5c24d2a4ad40da7cfb72152cb7e30d61648ac4`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5dc344192903830adad1e786f4625a2e3e787df18d9ae53585ff6922faf82f`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 18.8 MB (18823222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fb6342bba353b1e511c5a04c85e2dbbbfc6faab4c94e0ec0e1bbb657dbade8`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 22.4 MB (22399448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb59b9fda4a1cdf7165eaca4bd98a847efb3a6eaa3d6e1ad835470bd7f2ab4`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 11.0 MB (11047569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0512fc7afbae4789336c4eec3944e7d3a5fde07bb965fb389e300dd7fc5ebbc0`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece3a5fd9dde660c2372b96039440985b1afd228e42e533e8e1ee3ccbd8681e`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ef76015c9653049363bb73ce9b44cd05fa49769dbc97c1333ff6ee81c8cd25`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:409c4ba69bfbcb9bbb3279ba2e4b42e2b8820b7a99bb66ad971296f34aeefe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67bfd701e44c43a236460c5b34c9e0aade53b507dafbfa0da10f1facfe63d73e`

```dockerfile
```

-	Layers:
	-	`sha256:ead230e6f6f07e09fd6e4ac1629d2b281c10876f8aeb1856731b19154954e1fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b9812b6a140a0d9ed21b4cf75f26b978b48878622c7f245da8ab1484eedb835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62891452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3849cc9c8bfb81436b9bedbf0119bc979372d535466f7d80642edb36058963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9214b30f7aa3ca26bdc51f02e58eff1a8cb670de440eed48c115a49c9a2f895`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 7.4 MB (7402489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a106fb579e78fec3e7e5b4d21049322ab018b35d10e9ef0e0848be65cc7493`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197ca9e44c805a8fc1945cd29777f691f48b0c6bc1ed78307bf2e031622e6293`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3592d4e9f04f8544c7e619b38b3be3364ac352a80dc069ee1bc6b209bfdf6fe0`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 22.4 MB (22376955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9026de837d6197f70cdd43a4f18a8d99d5d6d3795aa431fdc47b4e28a9aec2`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 11.0 MB (11032562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123447bf33deee08ed3812e95b3b1cb404bac37c47c5c74dcfd6767c98d7cd25`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7db0f94133e57e6e855a64d81052831f900aa24ef8a6b291f4348233202c4a`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ea10c52e56f312dc6afe5f1c11304e34d49d80f3cc1c4f0f12f3c7ef96be78`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d3b79edde83fac711311b3db30e5a6e5d282744fde9bed588edff2873cd56495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27cc3e92923677ad5fd63565866272db1c3fe04c03ccf2d37c643fc47df14dc`

```dockerfile
```

-	Layers:
	-	`sha256:b27c5086bc0b6429efbfc06096a1dc89495dac85c317e4acafcc7fc2ef8b12ff`  
		Last Modified: Thu, 05 Nov 2026 18:17:01 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:035209e4a5ad108b3292d00313678a84b9887d7cca45ac0d3c93d5a5ddc47425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d6a9cac85f23ee76afdb5802a750ec9e07411a8de5740ee5bfc63aaba33df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:50:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:50:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:50:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:50:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:50:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260c99bc1932331f1c67d95710588dd8b72bce99497f60495af6f1f4438b2d7b`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 8.3 MB (8261352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60b0934a97efe80c5550ee33727ba70e8f3e3bfba6a3264d70040046d0b23c0`  
		Last Modified: Thu, 05 Nov 2026 18:50:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b016d409cc923576a717979055e9975d29817b1f90de067d7792b4f3215972`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 18.7 MB (18664051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040a974b7fc96897cc5ae72817d881a880289098063884ca88cc885f1ac9476a`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2189b7c25c6901e19c89554f36dee98e894b905ac274fc5fe0bef5c2b40a2b`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 10.6 MB (10605357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c5288093a5c28cdf49199d6e2b883946372898041087f7f5d1f22ed9d9e10e`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053d02c8ed345bcc6c4c2630dca70d538e46bb27d114c588f80d39cb90a35a4a`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a11073670856f88bc050e1d525edb748ca07517bfa355ad17427987ceda95b`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a5695f68f2fc632b71fed4a338e3d9f29402749eec8a36273dfedbe4696b4449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da8d7d4e209538ed596f4e59a470e38255e7e8276cae3aa4d6d99cf2fce6c5`

```dockerfile
```

-	Layers:
	-	`sha256:7ca45872074c599afecb4c80ba5850af774f01231779efd48cdde543aec4a68f`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:87e10120f2f9dd99ff78f30ff1e27a86b96ed1371e9bb50be7e96bfb00fd69b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:876e31b43694b408560d01497c65f85548c28c3ff9145c2994560cad443c7bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138102320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca437e0103b4efb1191858883631d693539ab9303f399d61ee8de24db4373e00`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
# Wed, 04 Nov 2026 01:08:32 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 01:08:32 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 01:08:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65689ad43d9afcecc68ab64d914e4493befbad49ab639e33d3477ce65c6b6860`  
		Last Modified: Wed, 04 Nov 2026 01:08:39 GMT  
		Size: 3.6 MB (3626265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e862acdfb1356f1370a38a170dbfe3b761888425eb683b3b5f938762e37a2f99`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6f9f13c4e6267c639231ac5d99a534e882c1b9605e7b0d3aac669f3ab7bd6a`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93f3468e7db3db4969340dc2268c2e30fe7abb7fa1f7866352f735a827006af`  
		Last Modified: Wed, 04 Nov 2026 01:08:39 GMT  
		Size: 12.1 MB (12122789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e07d75159d5d19a757ff8e63cf7856ab9efecd59a1eb5c9d0a80c23e8dd572`  
		Last Modified: Wed, 04 Nov 2026 01:08:41 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:6f46f601470f376e34c1c0a8a554924bdabc9d5f12cd785dcfd024ef17b92065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0ced8ff0a78adca480fba5e32769cedc2acd2e35fd4e7449449fe325c56300`

```dockerfile
```

-	Layers:
	-	`sha256:476943a20257d3d319e973190221eee0398e87f09cbd2656a9ec432000b777fe`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d6d8c364be3bd700baef07fe908e8bcbbfada634b36480d8cd151d6695bed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b303392c707b61c0053c1b3cc3575ea4f8c1af8d0656ba5f17df44a0f6a6cdf0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
# Wed, 04 Nov 2026 00:09:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 00:09:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7c1fa5f08ebb270735f4300e0bb5c835464eec1f8a63e195750f7b3502d55`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.6 MB (3611288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47057cedb4c6affb127c51abd22dd2ce1689e42008cc5ac328fdad947f7e290e`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65a8dac30b75a4adefdbdc7d0290c5c7b411addeffe856c48f26cbe617bdbbd`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ff0660874d2fe003c3f925d59c2c5df577733f8ebc2c644cdc27095c2ee49`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 11.3 MB (11255538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727d5c74b5a7eb8228eaeba99dd11e1c44de2a73bb0788fa8855dbf432a17561`  
		Last Modified: Wed, 04 Nov 2026 00:09:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:227fde4980e6db92525c87259f80b9413d324c78a4534dbc7e717f4bc0d5614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d09cc4742d3cb5970ca5db03de7d7216e1e1629ca42daf9cef78bb7e4675799`

```dockerfile
```

-	Layers:
	-	`sha256:7c3e680ded94755a0194f601380c8ce9f9919bcb8855a2c195c447f8cc558cfb`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:07e10b2232d22ed2089c18e9ba70994cb97dba06d1cac4b1f3a57714fd284819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:4fd8f747bff50e4f44b1defcf7989520d23bb8bf278920c47554b1b7e717f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:42e1abd0bf5abc54aa1d3c9878f727af96c557fb77842b575f65d18192d58d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-cli`

```console
$ docker pull docker@sha256:2357639ad1ea7d0194134bf3292622fd4e562483966ed674e5d7c945b5f3b28d
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

### `docker:29.9-cli` - linux; amd64

```console
$ docker pull docker@sha256:b0d99f37f463c88cae2082083f705210296186c06632d22f6952ed43506ae520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67816455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb125438f5f1e659af1ec2b511ecafeb7257a1b2be99e2a9cae623bf0e48c7fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:55:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:55:23 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e514f90e89f129032a5a2feda31d0137bdc9f15743610d9cab33eec123745590`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 8.2 MB (8202835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e65988a92f5279e35cb8d77dc13b7286c133c1cfee36fb883e7530a4a91b0fe`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0806112db8f7eec6a6f430c058bd18e538a37b794f87181004cbb90d400eea6d`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 20.3 MB (20275619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6855d0b7102b2df62d4fb3b7a699991178588cc6e50011a20a74dbd179aa5fbd`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 23.8 MB (23826403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc1b2607ddc311575b84458a0619e1a2b217d179c4d4c550efeced41609c729`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 11.7 MB (11655770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4030326c55ce86f04d623321faca7081df4ecc4ab5e6cd8625be378d8370e3`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf5949fd59e99791fc2cd4c44952eb06abfcbc29350b56abcd713b8e00aea95`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4129d67b3c7824fc85869d3031368590408ff527848e1fc8dbaf8d5437bde58e`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:237ccd7bd3f225b175a553203815e795fa8d5e3f76ca8330e739270c487550d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d890feda7b4b1df65fe5c97bb29075ae582e4a55bed15be9c9bdd21e310406b`

```dockerfile
```

-	Layers:
	-	`sha256:377b337fb1707123876b5e594aef1fb3840202d0b82b90b929fb3f95da3c18b8`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:f650eaf0819c879e51438641a15eecde22d9ce45a5cc2de619aceec70a61e78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12590a6973c705245f8a66a18a5fd2b01dda14a896884de249d7c5ba3748c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:43 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156217087f39e1fd37626ed774193fd94b38bbd7431a79f3faafff9352a8bc92`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 8.1 MB (8106932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d47d5af1ee7c7b575c5f93f7c5c24d2a4ad40da7cfb72152cb7e30d61648ac4`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5dc344192903830adad1e786f4625a2e3e787df18d9ae53585ff6922faf82f`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 18.8 MB (18823222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fb6342bba353b1e511c5a04c85e2dbbbfc6faab4c94e0ec0e1bbb657dbade8`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 22.4 MB (22399448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb59b9fda4a1cdf7165eaca4bd98a847efb3a6eaa3d6e1ad835470bd7f2ab4`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 11.0 MB (11047569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0512fc7afbae4789336c4eec3944e7d3a5fde07bb965fb389e300dd7fc5ebbc0`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece3a5fd9dde660c2372b96039440985b1afd228e42e533e8e1ee3ccbd8681e`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ef76015c9653049363bb73ce9b44cd05fa49769dbc97c1333ff6ee81c8cd25`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:409c4ba69bfbcb9bbb3279ba2e4b42e2b8820b7a99bb66ad971296f34aeefe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67bfd701e44c43a236460c5b34c9e0aade53b507dafbfa0da10f1facfe63d73e`

```dockerfile
```

-	Layers:
	-	`sha256:ead230e6f6f07e09fd6e4ac1629d2b281c10876f8aeb1856731b19154954e1fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b9812b6a140a0d9ed21b4cf75f26b978b48878622c7f245da8ab1484eedb835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62891452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3849cc9c8bfb81436b9bedbf0119bc979372d535466f7d80642edb36058963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9214b30f7aa3ca26bdc51f02e58eff1a8cb670de440eed48c115a49c9a2f895`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 7.4 MB (7402489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a106fb579e78fec3e7e5b4d21049322ab018b35d10e9ef0e0848be65cc7493`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197ca9e44c805a8fc1945cd29777f691f48b0c6bc1ed78307bf2e031622e6293`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3592d4e9f04f8544c7e619b38b3be3364ac352a80dc069ee1bc6b209bfdf6fe0`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 22.4 MB (22376955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9026de837d6197f70cdd43a4f18a8d99d5d6d3795aa431fdc47b4e28a9aec2`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 11.0 MB (11032562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123447bf33deee08ed3812e95b3b1cb404bac37c47c5c74dcfd6767c98d7cd25`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7db0f94133e57e6e855a64d81052831f900aa24ef8a6b291f4348233202c4a`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ea10c52e56f312dc6afe5f1c11304e34d49d80f3cc1c4f0f12f3c7ef96be78`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d3b79edde83fac711311b3db30e5a6e5d282744fde9bed588edff2873cd56495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27cc3e92923677ad5fd63565866272db1c3fe04c03ccf2d37c643fc47df14dc`

```dockerfile
```

-	Layers:
	-	`sha256:b27c5086bc0b6429efbfc06096a1dc89495dac85c317e4acafcc7fc2ef8b12ff`  
		Last Modified: Thu, 05 Nov 2026 18:17:01 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:035209e4a5ad108b3292d00313678a84b9887d7cca45ac0d3c93d5a5ddc47425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d6a9cac85f23ee76afdb5802a750ec9e07411a8de5740ee5bfc63aaba33df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:50:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:50:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:50:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:50:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:50:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260c99bc1932331f1c67d95710588dd8b72bce99497f60495af6f1f4438b2d7b`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 8.3 MB (8261352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60b0934a97efe80c5550ee33727ba70e8f3e3bfba6a3264d70040046d0b23c0`  
		Last Modified: Thu, 05 Nov 2026 18:50:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b016d409cc923576a717979055e9975d29817b1f90de067d7792b4f3215972`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 18.7 MB (18664051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040a974b7fc96897cc5ae72817d881a880289098063884ca88cc885f1ac9476a`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2189b7c25c6901e19c89554f36dee98e894b905ac274fc5fe0bef5c2b40a2b`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 10.6 MB (10605357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c5288093a5c28cdf49199d6e2b883946372898041087f7f5d1f22ed9d9e10e`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053d02c8ed345bcc6c4c2630dca70d538e46bb27d114c588f80d39cb90a35a4a`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a11073670856f88bc050e1d525edb748ca07517bfa355ad17427987ceda95b`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a5695f68f2fc632b71fed4a338e3d9f29402749eec8a36273dfedbe4696b4449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da8d7d4e209538ed596f4e59a470e38255e7e8276cae3aa4d6d99cf2fce6c5`

```dockerfile
```

-	Layers:
	-	`sha256:7ca45872074c599afecb4c80ba5850af774f01231779efd48cdde543aec4a68f`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-dind`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9-dind` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-dind-rootless`

```console
$ docker pull docker@sha256:87e10120f2f9dd99ff78f30ff1e27a86b96ed1371e9bb50be7e96bfb00fd69b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:876e31b43694b408560d01497c65f85548c28c3ff9145c2994560cad443c7bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138102320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca437e0103b4efb1191858883631d693539ab9303f399d61ee8de24db4373e00`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
# Wed, 04 Nov 2026 01:08:32 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 01:08:32 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 01:08:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65689ad43d9afcecc68ab64d914e4493befbad49ab639e33d3477ce65c6b6860`  
		Last Modified: Wed, 04 Nov 2026 01:08:39 GMT  
		Size: 3.6 MB (3626265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e862acdfb1356f1370a38a170dbfe3b761888425eb683b3b5f938762e37a2f99`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6f9f13c4e6267c639231ac5d99a534e882c1b9605e7b0d3aac669f3ab7bd6a`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93f3468e7db3db4969340dc2268c2e30fe7abb7fa1f7866352f735a827006af`  
		Last Modified: Wed, 04 Nov 2026 01:08:39 GMT  
		Size: 12.1 MB (12122789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e07d75159d5d19a757ff8e63cf7856ab9efecd59a1eb5c9d0a80c23e8dd572`  
		Last Modified: Wed, 04 Nov 2026 01:08:41 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:6f46f601470f376e34c1c0a8a554924bdabc9d5f12cd785dcfd024ef17b92065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0ced8ff0a78adca480fba5e32769cedc2acd2e35fd4e7449449fe325c56300`

```dockerfile
```

-	Layers:
	-	`sha256:476943a20257d3d319e973190221eee0398e87f09cbd2656a9ec432000b777fe`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d6d8c364be3bd700baef07fe908e8bcbbfada634b36480d8cd151d6695bed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b303392c707b61c0053c1b3cc3575ea4f8c1af8d0656ba5f17df44a0f6a6cdf0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
# Wed, 04 Nov 2026 00:09:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 00:09:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7c1fa5f08ebb270735f4300e0bb5c835464eec1f8a63e195750f7b3502d55`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.6 MB (3611288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47057cedb4c6affb127c51abd22dd2ce1689e42008cc5ac328fdad947f7e290e`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65a8dac30b75a4adefdbdc7d0290c5c7b411addeffe856c48f26cbe617bdbbd`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ff0660874d2fe003c3f925d59c2c5df577733f8ebc2c644cdc27095c2ee49`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 11.3 MB (11255538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727d5c74b5a7eb8228eaeba99dd11e1c44de2a73bb0788fa8855dbf432a17561`  
		Last Modified: Wed, 04 Nov 2026 00:09:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:227fde4980e6db92525c87259f80b9413d324c78a4534dbc7e717f4bc0d5614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d09cc4742d3cb5970ca5db03de7d7216e1e1629ca42daf9cef78bb7e4675799`

```dockerfile
```

-	Layers:
	-	`sha256:7c3e680ded94755a0194f601380c8ce9f9919bcb8855a2c195c447f8cc558cfb`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-windowsservercore`

```console
$ docker pull docker@sha256:07e10b2232d22ed2089c18e9ba70994cb97dba06d1cac4b1f3a57714fd284819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:29.9-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.9-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:4fd8f747bff50e4f44b1defcf7989520d23bb8bf278920c47554b1b7e717f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:29.9-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:42e1abd0bf5abc54aa1d3c9878f727af96c557fb77842b575f65d18192d58d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:29.9-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.3`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9.3` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-alpine3.24`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9.3-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-cli`

```console
$ docker pull docker@sha256:2357639ad1ea7d0194134bf3292622fd4e562483966ed674e5d7c945b5f3b28d
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

### `docker:29.9.3-cli` - linux; amd64

```console
$ docker pull docker@sha256:b0d99f37f463c88cae2082083f705210296186c06632d22f6952ed43506ae520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67816455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb125438f5f1e659af1ec2b511ecafeb7257a1b2be99e2a9cae623bf0e48c7fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:55:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:55:23 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e514f90e89f129032a5a2feda31d0137bdc9f15743610d9cab33eec123745590`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 8.2 MB (8202835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e65988a92f5279e35cb8d77dc13b7286c133c1cfee36fb883e7530a4a91b0fe`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0806112db8f7eec6a6f430c058bd18e538a37b794f87181004cbb90d400eea6d`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 20.3 MB (20275619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6855d0b7102b2df62d4fb3b7a699991178588cc6e50011a20a74dbd179aa5fbd`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 23.8 MB (23826403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc1b2607ddc311575b84458a0619e1a2b217d179c4d4c550efeced41609c729`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 11.7 MB (11655770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4030326c55ce86f04d623321faca7081df4ecc4ab5e6cd8625be378d8370e3`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf5949fd59e99791fc2cd4c44952eb06abfcbc29350b56abcd713b8e00aea95`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4129d67b3c7824fc85869d3031368590408ff527848e1fc8dbaf8d5437bde58e`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli` - unknown; unknown

```console
$ docker pull docker@sha256:237ccd7bd3f225b175a553203815e795fa8d5e3f76ca8330e739270c487550d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d890feda7b4b1df65fe5c97bb29075ae582e4a55bed15be9c9bdd21e310406b`

```dockerfile
```

-	Layers:
	-	`sha256:377b337fb1707123876b5e594aef1fb3840202d0b82b90b929fb3f95da3c18b8`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:f650eaf0819c879e51438641a15eecde22d9ce45a5cc2de619aceec70a61e78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12590a6973c705245f8a66a18a5fd2b01dda14a896884de249d7c5ba3748c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:43 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156217087f39e1fd37626ed774193fd94b38bbd7431a79f3faafff9352a8bc92`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 8.1 MB (8106932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d47d5af1ee7c7b575c5f93f7c5c24d2a4ad40da7cfb72152cb7e30d61648ac4`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5dc344192903830adad1e786f4625a2e3e787df18d9ae53585ff6922faf82f`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 18.8 MB (18823222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fb6342bba353b1e511c5a04c85e2dbbbfc6faab4c94e0ec0e1bbb657dbade8`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 22.4 MB (22399448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb59b9fda4a1cdf7165eaca4bd98a847efb3a6eaa3d6e1ad835470bd7f2ab4`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 11.0 MB (11047569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0512fc7afbae4789336c4eec3944e7d3a5fde07bb965fb389e300dd7fc5ebbc0`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece3a5fd9dde660c2372b96039440985b1afd228e42e533e8e1ee3ccbd8681e`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ef76015c9653049363bb73ce9b44cd05fa49769dbc97c1333ff6ee81c8cd25`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli` - unknown; unknown

```console
$ docker pull docker@sha256:409c4ba69bfbcb9bbb3279ba2e4b42e2b8820b7a99bb66ad971296f34aeefe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67bfd701e44c43a236460c5b34c9e0aade53b507dafbfa0da10f1facfe63d73e`

```dockerfile
```

-	Layers:
	-	`sha256:ead230e6f6f07e09fd6e4ac1629d2b281c10876f8aeb1856731b19154954e1fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b9812b6a140a0d9ed21b4cf75f26b978b48878622c7f245da8ab1484eedb835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62891452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3849cc9c8bfb81436b9bedbf0119bc979372d535466f7d80642edb36058963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9214b30f7aa3ca26bdc51f02e58eff1a8cb670de440eed48c115a49c9a2f895`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 7.4 MB (7402489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a106fb579e78fec3e7e5b4d21049322ab018b35d10e9ef0e0848be65cc7493`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197ca9e44c805a8fc1945cd29777f691f48b0c6bc1ed78307bf2e031622e6293`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3592d4e9f04f8544c7e619b38b3be3364ac352a80dc069ee1bc6b209bfdf6fe0`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 22.4 MB (22376955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9026de837d6197f70cdd43a4f18a8d99d5d6d3795aa431fdc47b4e28a9aec2`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 11.0 MB (11032562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123447bf33deee08ed3812e95b3b1cb404bac37c47c5c74dcfd6767c98d7cd25`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7db0f94133e57e6e855a64d81052831f900aa24ef8a6b291f4348233202c4a`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ea10c52e56f312dc6afe5f1c11304e34d49d80f3cc1c4f0f12f3c7ef96be78`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d3b79edde83fac711311b3db30e5a6e5d282744fde9bed588edff2873cd56495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27cc3e92923677ad5fd63565866272db1c3fe04c03ccf2d37c643fc47df14dc`

```dockerfile
```

-	Layers:
	-	`sha256:b27c5086bc0b6429efbfc06096a1dc89495dac85c317e4acafcc7fc2ef8b12ff`  
		Last Modified: Thu, 05 Nov 2026 18:17:01 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:035209e4a5ad108b3292d00313678a84b9887d7cca45ac0d3c93d5a5ddc47425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d6a9cac85f23ee76afdb5802a750ec9e07411a8de5740ee5bfc63aaba33df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:50:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:50:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:50:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:50:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:50:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260c99bc1932331f1c67d95710588dd8b72bce99497f60495af6f1f4438b2d7b`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 8.3 MB (8261352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60b0934a97efe80c5550ee33727ba70e8f3e3bfba6a3264d70040046d0b23c0`  
		Last Modified: Thu, 05 Nov 2026 18:50:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b016d409cc923576a717979055e9975d29817b1f90de067d7792b4f3215972`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 18.7 MB (18664051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040a974b7fc96897cc5ae72817d881a880289098063884ca88cc885f1ac9476a`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2189b7c25c6901e19c89554f36dee98e894b905ac274fc5fe0bef5c2b40a2b`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 10.6 MB (10605357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c5288093a5c28cdf49199d6e2b883946372898041087f7f5d1f22ed9d9e10e`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053d02c8ed345bcc6c4c2630dca70d538e46bb27d114c588f80d39cb90a35a4a`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a11073670856f88bc050e1d525edb748ca07517bfa355ad17427987ceda95b`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a5695f68f2fc632b71fed4a338e3d9f29402749eec8a36273dfedbe4696b4449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da8d7d4e209538ed596f4e59a470e38255e7e8276cae3aa4d6d99cf2fce6c5`

```dockerfile
```

-	Layers:
	-	`sha256:7ca45872074c599afecb4c80ba5850af774f01231779efd48cdde543aec4a68f`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-cli-alpine3.24`

```console
$ docker pull docker@sha256:2357639ad1ea7d0194134bf3292622fd4e562483966ed674e5d7c945b5f3b28d
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

### `docker:29.9.3-cli-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:b0d99f37f463c88cae2082083f705210296186c06632d22f6952ed43506ae520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67816455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb125438f5f1e659af1ec2b511ecafeb7257a1b2be99e2a9cae623bf0e48c7fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:55:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:55:23 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e514f90e89f129032a5a2feda31d0137bdc9f15743610d9cab33eec123745590`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 8.2 MB (8202835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e65988a92f5279e35cb8d77dc13b7286c133c1cfee36fb883e7530a4a91b0fe`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0806112db8f7eec6a6f430c058bd18e538a37b794f87181004cbb90d400eea6d`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 20.3 MB (20275619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6855d0b7102b2df62d4fb3b7a699991178588cc6e50011a20a74dbd179aa5fbd`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 23.8 MB (23826403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc1b2607ddc311575b84458a0619e1a2b217d179c4d4c550efeced41609c729`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 11.7 MB (11655770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4030326c55ce86f04d623321faca7081df4ecc4ab5e6cd8625be378d8370e3`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf5949fd59e99791fc2cd4c44952eb06abfcbc29350b56abcd713b8e00aea95`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4129d67b3c7824fc85869d3031368590408ff527848e1fc8dbaf8d5437bde58e`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:237ccd7bd3f225b175a553203815e795fa8d5e3f76ca8330e739270c487550d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d890feda7b4b1df65fe5c97bb29075ae582e4a55bed15be9c9bdd21e310406b`

```dockerfile
```

-	Layers:
	-	`sha256:377b337fb1707123876b5e594aef1fb3840202d0b82b90b929fb3f95da3c18b8`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:f650eaf0819c879e51438641a15eecde22d9ce45a5cc2de619aceec70a61e78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12590a6973c705245f8a66a18a5fd2b01dda14a896884de249d7c5ba3748c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:43 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156217087f39e1fd37626ed774193fd94b38bbd7431a79f3faafff9352a8bc92`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 8.1 MB (8106932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d47d5af1ee7c7b575c5f93f7c5c24d2a4ad40da7cfb72152cb7e30d61648ac4`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5dc344192903830adad1e786f4625a2e3e787df18d9ae53585ff6922faf82f`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 18.8 MB (18823222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fb6342bba353b1e511c5a04c85e2dbbbfc6faab4c94e0ec0e1bbb657dbade8`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 22.4 MB (22399448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb59b9fda4a1cdf7165eaca4bd98a847efb3a6eaa3d6e1ad835470bd7f2ab4`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 11.0 MB (11047569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0512fc7afbae4789336c4eec3944e7d3a5fde07bb965fb389e300dd7fc5ebbc0`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece3a5fd9dde660c2372b96039440985b1afd228e42e533e8e1ee3ccbd8681e`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ef76015c9653049363bb73ce9b44cd05fa49769dbc97c1333ff6ee81c8cd25`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:409c4ba69bfbcb9bbb3279ba2e4b42e2b8820b7a99bb66ad971296f34aeefe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67bfd701e44c43a236460c5b34c9e0aade53b507dafbfa0da10f1facfe63d73e`

```dockerfile
```

-	Layers:
	-	`sha256:ead230e6f6f07e09fd6e4ac1629d2b281c10876f8aeb1856731b19154954e1fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b9812b6a140a0d9ed21b4cf75f26b978b48878622c7f245da8ab1484eedb835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62891452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3849cc9c8bfb81436b9bedbf0119bc979372d535466f7d80642edb36058963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9214b30f7aa3ca26bdc51f02e58eff1a8cb670de440eed48c115a49c9a2f895`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 7.4 MB (7402489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a106fb579e78fec3e7e5b4d21049322ab018b35d10e9ef0e0848be65cc7493`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197ca9e44c805a8fc1945cd29777f691f48b0c6bc1ed78307bf2e031622e6293`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3592d4e9f04f8544c7e619b38b3be3364ac352a80dc069ee1bc6b209bfdf6fe0`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 22.4 MB (22376955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9026de837d6197f70cdd43a4f18a8d99d5d6d3795aa431fdc47b4e28a9aec2`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 11.0 MB (11032562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123447bf33deee08ed3812e95b3b1cb404bac37c47c5c74dcfd6767c98d7cd25`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7db0f94133e57e6e855a64d81052831f900aa24ef8a6b291f4348233202c4a`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ea10c52e56f312dc6afe5f1c11304e34d49d80f3cc1c4f0f12f3c7ef96be78`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:d3b79edde83fac711311b3db30e5a6e5d282744fde9bed588edff2873cd56495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27cc3e92923677ad5fd63565866272db1c3fe04c03ccf2d37c643fc47df14dc`

```dockerfile
```

-	Layers:
	-	`sha256:b27c5086bc0b6429efbfc06096a1dc89495dac85c317e4acafcc7fc2ef8b12ff`  
		Last Modified: Thu, 05 Nov 2026 18:17:01 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:035209e4a5ad108b3292d00313678a84b9887d7cca45ac0d3c93d5a5ddc47425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d6a9cac85f23ee76afdb5802a750ec9e07411a8de5740ee5bfc63aaba33df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:50:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:50:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:50:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:50:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:50:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260c99bc1932331f1c67d95710588dd8b72bce99497f60495af6f1f4438b2d7b`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 8.3 MB (8261352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60b0934a97efe80c5550ee33727ba70e8f3e3bfba6a3264d70040046d0b23c0`  
		Last Modified: Thu, 05 Nov 2026 18:50:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b016d409cc923576a717979055e9975d29817b1f90de067d7792b4f3215972`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 18.7 MB (18664051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040a974b7fc96897cc5ae72817d881a880289098063884ca88cc885f1ac9476a`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2189b7c25c6901e19c89554f36dee98e894b905ac274fc5fe0bef5c2b40a2b`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 10.6 MB (10605357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c5288093a5c28cdf49199d6e2b883946372898041087f7f5d1f22ed9d9e10e`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053d02c8ed345bcc6c4c2630dca70d538e46bb27d114c588f80d39cb90a35a4a`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a11073670856f88bc050e1d525edb748ca07517bfa355ad17427987ceda95b`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:a5695f68f2fc632b71fed4a338e3d9f29402749eec8a36273dfedbe4696b4449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da8d7d4e209538ed596f4e59a470e38255e7e8276cae3aa4d6d99cf2fce6c5`

```dockerfile
```

-	Layers:
	-	`sha256:7ca45872074c599afecb4c80ba5850af774f01231779efd48cdde543aec4a68f`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-dind`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9.3-dind` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-dind-alpine3.24`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9.3-dind-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-dind-rootless`

```console
$ docker pull docker@sha256:87e10120f2f9dd99ff78f30ff1e27a86b96ed1371e9bb50be7e96bfb00fd69b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9.3-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:876e31b43694b408560d01497c65f85548c28c3ff9145c2994560cad443c7bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138102320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca437e0103b4efb1191858883631d693539ab9303f399d61ee8de24db4373e00`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
# Wed, 04 Nov 2026 01:08:32 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 01:08:32 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 01:08:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65689ad43d9afcecc68ab64d914e4493befbad49ab639e33d3477ce65c6b6860`  
		Last Modified: Wed, 04 Nov 2026 01:08:39 GMT  
		Size: 3.6 MB (3626265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e862acdfb1356f1370a38a170dbfe3b761888425eb683b3b5f938762e37a2f99`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6f9f13c4e6267c639231ac5d99a534e882c1b9605e7b0d3aac669f3ab7bd6a`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93f3468e7db3db4969340dc2268c2e30fe7abb7fa1f7866352f735a827006af`  
		Last Modified: Wed, 04 Nov 2026 01:08:39 GMT  
		Size: 12.1 MB (12122789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e07d75159d5d19a757ff8e63cf7856ab9efecd59a1eb5c9d0a80c23e8dd572`  
		Last Modified: Wed, 04 Nov 2026 01:08:41 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:6f46f601470f376e34c1c0a8a554924bdabc9d5f12cd785dcfd024ef17b92065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0ced8ff0a78adca480fba5e32769cedc2acd2e35fd4e7449449fe325c56300`

```dockerfile
```

-	Layers:
	-	`sha256:476943a20257d3d319e973190221eee0398e87f09cbd2656a9ec432000b777fe`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d6d8c364be3bd700baef07fe908e8bcbbfada634b36480d8cd151d6695bed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b303392c707b61c0053c1b3cc3575ea4f8c1af8d0656ba5f17df44a0f6a6cdf0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
# Wed, 04 Nov 2026 00:09:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 00:09:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7c1fa5f08ebb270735f4300e0bb5c835464eec1f8a63e195750f7b3502d55`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.6 MB (3611288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47057cedb4c6affb127c51abd22dd2ce1689e42008cc5ac328fdad947f7e290e`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65a8dac30b75a4adefdbdc7d0290c5c7b411addeffe856c48f26cbe617bdbbd`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ff0660874d2fe003c3f925d59c2c5df577733f8ebc2c644cdc27095c2ee49`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 11.3 MB (11255538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727d5c74b5a7eb8228eaeba99dd11e1c44de2a73bb0788fa8855dbf432a17561`  
		Last Modified: Wed, 04 Nov 2026 00:09:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:227fde4980e6db92525c87259f80b9413d324c78a4534dbc7e717f4bc0d5614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d09cc4742d3cb5970ca5db03de7d7216e1e1629ca42daf9cef78bb7e4675799`

```dockerfile
```

-	Layers:
	-	`sha256:7c3e680ded94755a0194f601380c8ce9f9919bcb8855a2c195c447f8cc558cfb`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-windowsservercore`

```console
$ docker pull docker@sha256:07e10b2232d22ed2089c18e9ba70994cb97dba06d1cac4b1f3a57714fd284819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:29.9.3-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.9.3-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.3-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:4fd8f747bff50e4f44b1defcf7989520d23bb8bf278920c47554b1b7e717f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:29.9.3-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.3-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:42e1abd0bf5abc54aa1d3c9878f727af96c557fb77842b575f65d18192d58d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:29.9.3-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:cli`

```console
$ docker pull docker@sha256:2357639ad1ea7d0194134bf3292622fd4e562483966ed674e5d7c945b5f3b28d
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
$ docker pull docker@sha256:b0d99f37f463c88cae2082083f705210296186c06632d22f6952ed43506ae520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67816455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb125438f5f1e659af1ec2b511ecafeb7257a1b2be99e2a9cae623bf0e48c7fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:55:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:55:23 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e514f90e89f129032a5a2feda31d0137bdc9f15743610d9cab33eec123745590`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 8.2 MB (8202835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e65988a92f5279e35cb8d77dc13b7286c133c1cfee36fb883e7530a4a91b0fe`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0806112db8f7eec6a6f430c058bd18e538a37b794f87181004cbb90d400eea6d`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 20.3 MB (20275619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6855d0b7102b2df62d4fb3b7a699991178588cc6e50011a20a74dbd179aa5fbd`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 23.8 MB (23826403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc1b2607ddc311575b84458a0619e1a2b217d179c4d4c550efeced41609c729`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 11.7 MB (11655770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4030326c55ce86f04d623321faca7081df4ecc4ab5e6cd8625be378d8370e3`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf5949fd59e99791fc2cd4c44952eb06abfcbc29350b56abcd713b8e00aea95`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4129d67b3c7824fc85869d3031368590408ff527848e1fc8dbaf8d5437bde58e`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:237ccd7bd3f225b175a553203815e795fa8d5e3f76ca8330e739270c487550d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d890feda7b4b1df65fe5c97bb29075ae582e4a55bed15be9c9bdd21e310406b`

```dockerfile
```

-	Layers:
	-	`sha256:377b337fb1707123876b5e594aef1fb3840202d0b82b90b929fb3f95da3c18b8`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:f650eaf0819c879e51438641a15eecde22d9ce45a5cc2de619aceec70a61e78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12590a6973c705245f8a66a18a5fd2b01dda14a896884de249d7c5ba3748c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:43 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156217087f39e1fd37626ed774193fd94b38bbd7431a79f3faafff9352a8bc92`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 8.1 MB (8106932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d47d5af1ee7c7b575c5f93f7c5c24d2a4ad40da7cfb72152cb7e30d61648ac4`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5dc344192903830adad1e786f4625a2e3e787df18d9ae53585ff6922faf82f`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 18.8 MB (18823222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fb6342bba353b1e511c5a04c85e2dbbbfc6faab4c94e0ec0e1bbb657dbade8`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 22.4 MB (22399448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb59b9fda4a1cdf7165eaca4bd98a847efb3a6eaa3d6e1ad835470bd7f2ab4`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 11.0 MB (11047569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0512fc7afbae4789336c4eec3944e7d3a5fde07bb965fb389e300dd7fc5ebbc0`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece3a5fd9dde660c2372b96039440985b1afd228e42e533e8e1ee3ccbd8681e`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ef76015c9653049363bb73ce9b44cd05fa49769dbc97c1333ff6ee81c8cd25`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:409c4ba69bfbcb9bbb3279ba2e4b42e2b8820b7a99bb66ad971296f34aeefe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67bfd701e44c43a236460c5b34c9e0aade53b507dafbfa0da10f1facfe63d73e`

```dockerfile
```

-	Layers:
	-	`sha256:ead230e6f6f07e09fd6e4ac1629d2b281c10876f8aeb1856731b19154954e1fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b9812b6a140a0d9ed21b4cf75f26b978b48878622c7f245da8ab1484eedb835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62891452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3849cc9c8bfb81436b9bedbf0119bc979372d535466f7d80642edb36058963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9214b30f7aa3ca26bdc51f02e58eff1a8cb670de440eed48c115a49c9a2f895`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 7.4 MB (7402489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a106fb579e78fec3e7e5b4d21049322ab018b35d10e9ef0e0848be65cc7493`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197ca9e44c805a8fc1945cd29777f691f48b0c6bc1ed78307bf2e031622e6293`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3592d4e9f04f8544c7e619b38b3be3364ac352a80dc069ee1bc6b209bfdf6fe0`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 22.4 MB (22376955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9026de837d6197f70cdd43a4f18a8d99d5d6d3795aa431fdc47b4e28a9aec2`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 11.0 MB (11032562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123447bf33deee08ed3812e95b3b1cb404bac37c47c5c74dcfd6767c98d7cd25`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7db0f94133e57e6e855a64d81052831f900aa24ef8a6b291f4348233202c4a`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ea10c52e56f312dc6afe5f1c11304e34d49d80f3cc1c4f0f12f3c7ef96be78`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:d3b79edde83fac711311b3db30e5a6e5d282744fde9bed588edff2873cd56495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27cc3e92923677ad5fd63565866272db1c3fe04c03ccf2d37c643fc47df14dc`

```dockerfile
```

-	Layers:
	-	`sha256:b27c5086bc0b6429efbfc06096a1dc89495dac85c317e4acafcc7fc2ef8b12ff`  
		Last Modified: Thu, 05 Nov 2026 18:17:01 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:035209e4a5ad108b3292d00313678a84b9887d7cca45ac0d3c93d5a5ddc47425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d6a9cac85f23ee76afdb5802a750ec9e07411a8de5740ee5bfc63aaba33df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:50:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:50:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:50:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:50:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:50:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260c99bc1932331f1c67d95710588dd8b72bce99497f60495af6f1f4438b2d7b`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 8.3 MB (8261352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60b0934a97efe80c5550ee33727ba70e8f3e3bfba6a3264d70040046d0b23c0`  
		Last Modified: Thu, 05 Nov 2026 18:50:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b016d409cc923576a717979055e9975d29817b1f90de067d7792b4f3215972`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 18.7 MB (18664051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040a974b7fc96897cc5ae72817d881a880289098063884ca88cc885f1ac9476a`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2189b7c25c6901e19c89554f36dee98e894b905ac274fc5fe0bef5c2b40a2b`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 10.6 MB (10605357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c5288093a5c28cdf49199d6e2b883946372898041087f7f5d1f22ed9d9e10e`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053d02c8ed345bcc6c4c2630dca70d538e46bb27d114c588f80d39cb90a35a4a`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a11073670856f88bc050e1d525edb748ca07517bfa355ad17427987ceda95b`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:a5695f68f2fc632b71fed4a338e3d9f29402749eec8a36273dfedbe4696b4449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da8d7d4e209538ed596f4e59a470e38255e7e8276cae3aa4d6d99cf2fce6c5`

```dockerfile
```

-	Layers:
	-	`sha256:7ca45872074c599afecb4c80ba5850af774f01231779efd48cdde543aec4a68f`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:87e10120f2f9dd99ff78f30ff1e27a86b96ed1371e9bb50be7e96bfb00fd69b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:876e31b43694b408560d01497c65f85548c28c3ff9145c2994560cad443c7bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138102320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca437e0103b4efb1191858883631d693539ab9303f399d61ee8de24db4373e00`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
# Wed, 04 Nov 2026 01:08:32 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 01:08:32 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 01:08:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 01:08:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65689ad43d9afcecc68ab64d914e4493befbad49ab639e33d3477ce65c6b6860`  
		Last Modified: Wed, 04 Nov 2026 01:08:39 GMT  
		Size: 3.6 MB (3626265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e862acdfb1356f1370a38a170dbfe3b761888425eb683b3b5f938762e37a2f99`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6f9f13c4e6267c639231ac5d99a534e882c1b9605e7b0d3aac669f3ab7bd6a`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93f3468e7db3db4969340dc2268c2e30fe7abb7fa1f7866352f735a827006af`  
		Last Modified: Wed, 04 Nov 2026 01:08:39 GMT  
		Size: 12.1 MB (12122789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e07d75159d5d19a757ff8e63cf7856ab9efecd59a1eb5c9d0a80c23e8dd572`  
		Last Modified: Wed, 04 Nov 2026 01:08:41 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:6f46f601470f376e34c1c0a8a554924bdabc9d5f12cd785dcfd024ef17b92065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0ced8ff0a78adca480fba5e32769cedc2acd2e35fd4e7449449fe325c56300`

```dockerfile
```

-	Layers:
	-	`sha256:476943a20257d3d319e973190221eee0398e87f09cbd2656a9ec432000b777fe`  
		Last Modified: Wed, 04 Nov 2026 01:08:38 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d6d8c364be3bd700baef07fe908e8bcbbfada634b36480d8cd151d6695bed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b303392c707b61c0053c1b3cc3575ea4f8c1af8d0656ba5f17df44a0f6a6cdf0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
# Wed, 04 Nov 2026 00:09:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 00:09:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7c1fa5f08ebb270735f4300e0bb5c835464eec1f8a63e195750f7b3502d55`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.6 MB (3611288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47057cedb4c6affb127c51abd22dd2ce1689e42008cc5ac328fdad947f7e290e`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65a8dac30b75a4adefdbdc7d0290c5c7b411addeffe856c48f26cbe617bdbbd`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ff0660874d2fe003c3f925d59c2c5df577733f8ebc2c644cdc27095c2ee49`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 11.3 MB (11255538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727d5c74b5a7eb8228eaeba99dd11e1c44de2a73bb0788fa8855dbf432a17561`  
		Last Modified: Wed, 04 Nov 2026 00:09:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:227fde4980e6db92525c87259f80b9413d324c78a4534dbc7e717f4bc0d5614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d09cc4742d3cb5970ca5db03de7d7216e1e1629ca42daf9cef78bb7e4675799`

```dockerfile
```

-	Layers:
	-	`sha256:7c3e680ded94755a0194f601380c8ce9f9919bcb8855a2c195c447f8cc558cfb`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:07e10b2232d22ed2089c18e9ba70994cb97dba06d1cac4b1f3a57714fd284819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:4fd8f747bff50e4f44b1defcf7989520d23bb8bf278920c47554b1b7e717f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:42e1abd0bf5abc54aa1d3c9878f727af96c557fb77842b575f65d18192d58d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
