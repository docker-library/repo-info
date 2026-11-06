## `docker:dind-rootless`

```console
$ docker pull docker@sha256:e3d0fa70055956693134873845b743bbe35b5199c68a52347032ae3e5dbac9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:fc402d3f17c754a1b5902852a4a18926cb60e127fade6ae0cb35443d2aa6dc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138102797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c4b167348e2f0d23d36d78247517578b4749f68f3370c09a9666616d75cd21`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:54:19 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:54:19 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:54:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:54:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:54:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:54:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:54:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:54:22 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:54:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:54:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:54:22 GMT
CMD []
# Thu, 05 Nov 2026 20:13:19 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 05 Nov 2026 20:13:19 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 05 Nov 2026 20:13:19 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 20:13:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 05 Nov 2026 20:13:20 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 05 Nov 2026 20:13:20 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 05 Nov 2026 20:13:20 GMT
USER rootless
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
	-	`sha256:9c1b45d5da51895d41499e68b1645efcce155cd2f69bef02239e6c02805daf23`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 1.5 MB (1497324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f154720f1bd68e6bab31242ca9f0f20481c2bcb946a9446606a246f6b1890857`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 81.0 KB (81042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c381b947c3cad5a49ae237012963915881ab2cca863abb2a638505ad1880460`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc7c5f90aca199dd34eef2d29584684d68802860ec57b323034e90595e65bf5`  
		Last Modified: Thu, 05 Nov 2026 19:54:33 GMT  
		Size: 53.0 MB (52951602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9641ff6a2e019df8c13a60e14bbd155cad5350628645f59ef2bbecd60c253f`  
		Last Modified: Thu, 05 Nov 2026 19:54:33 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6e8647964d224c6aa0a2a294c0b7e27d5b61fbfcdc89f23d33d573c66977c8`  
		Last Modified: Thu, 05 Nov 2026 19:54:33 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0bd5d7818b1f5f7c89f0dd46de623067549f80ac850546829eb278ea4263040`  
		Last Modified: Thu, 05 Nov 2026 20:13:25 GMT  
		Size: 3.6 MB (3626232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e557cdcf0d34054f94f0426aff82cff3490eb2afdbe281e92dfb1a7a996e483`  
		Last Modified: Thu, 05 Nov 2026 20:13:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d2a3e11de48a965bd7005c0c56ee534ee94e4d27abc510cbce072a495fb1d2`  
		Last Modified: Thu, 05 Nov 2026 20:13:25 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f43c63fae0be1269b93f403156a13161469202c9986b9a6831c28d4d27517c`  
		Last Modified: Thu, 05 Nov 2026 20:13:25 GMT  
		Size: 12.1 MB (12122794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6237519a34a99080ad2aaf0efd41c9032ed50c7a828135b62e4184ee5a72e8ce`  
		Last Modified: Thu, 05 Nov 2026 20:13:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:4b8865ab44871aa1fbd38b4f53c0ca110f916c3dd8a58881b125724989bfda0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3672d2bfc32c9a7427bae0c6f3dfa13a1d43c39d3b1846eb697aec4d5fb310`

```dockerfile
```

-	Layers:
	-	`sha256:30868480f209ede514d81e05614a732cc227e793e6c6f78429771442301176d8`  
		Last Modified: Thu, 05 Nov 2026 20:13:24 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3071133be6797e815b2dfe6a7c818fafb79ac3dbb8f8c5e8c875568bd693e8c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545cbe381dd22cb050448f0cc7a2f1e68f07e1390a7fda3cd5a8243e60b287c1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 20:10:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 20:10:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 20:10:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 20:10:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 20:10:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 20:10:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 20:10:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:10:59 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 20:10:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 20:10:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 20:10:59 GMT
CMD []
# Thu, 05 Nov 2026 21:20:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 05 Nov 2026 21:20:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 05 Nov 2026 21:20:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 21:20:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 05 Nov 2026 21:20:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 05 Nov 2026 21:20:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 05 Nov 2026 21:20:33 GMT
USER rootless
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
	-	`sha256:ef09a906201d9177ea5d68d67d037839255cb17c860606fe3665f1a632b2ba19`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 1.7 MB (1744498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51514d19d5fd3c7b248713524b20c6a4dd4f3b3ad9eb1f3c15e0ee601464147`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13d97d8302535dd0e0bdc5f413e4c9d37addb8e9c74da6ee7a333b24d27c8f9`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfa992b41228eb9956d57abc5c5bfe7e31c5021583350ccdc1326986ffabeeb`  
		Last Modified: Thu, 05 Nov 2026 20:11:09 GMT  
		Size: 48.0 MB (48001597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da690e2dfd8cec3c981e1e7a64f2c2a96de2071305e9413b5f6093064214335`  
		Last Modified: Thu, 05 Nov 2026 20:11:08 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba40fbb362de0bdc3742c1ab74caad926463c438a076d1b6ab8be1ec2830bfc`  
		Last Modified: Thu, 05 Nov 2026 20:11:08 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51c53b04eb7ba5c137ec442c822269574e1aa055122027b1c1365313c24350`  
		Last Modified: Thu, 05 Nov 2026 21:20:38 GMT  
		Size: 3.6 MB (3611251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0782b68eebfc87b2fb36cd944afbac78b1b78b2236bc059af8ddf99eea2778d1`  
		Last Modified: Thu, 05 Nov 2026 21:20:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33d6dc33bb416f9e21995f5a17f348e3261c92496aaf45ce4e4bf377a47b2fc`  
		Last Modified: Thu, 05 Nov 2026 21:20:38 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e0e8be2fed17890adcb8640d0367a847fae5308edea9aae2474cdabf26c7e0`  
		Last Modified: Thu, 05 Nov 2026 21:20:38 GMT  
		Size: 11.3 MB (11255548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c01602e1c25861474df73ee5d8caeef791e72293d0afcc9c08082069d3fb439`  
		Last Modified: Thu, 05 Nov 2026 21:20:39 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:6ffdf4557a083b10f508b0c2a141a8d7f0ce326cddbb2d8434706bbcb5e4f8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32499490985c2dd8f7743960695d5899b18307314eedf2a4944b9c35797b2c2`

```dockerfile
```

-	Layers:
	-	`sha256:30dd60df9a9a350c046112ba66332fadfce6cf0fbaf59cafd5f8c3bb506d79cd`  
		Last Modified: Thu, 05 Nov 2026 21:20:37 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json
