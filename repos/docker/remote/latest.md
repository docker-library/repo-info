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
