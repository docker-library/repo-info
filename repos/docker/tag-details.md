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
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
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
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:e3d0fa70055956693134873845b743bbe35b5199c68a52347032ae3e5dbac9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

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

### `docker:29-dind-rootless` - unknown; unknown

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

### `docker:29-dind-rootless` - linux; arm64 variant v8

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

### `docker:29-dind-rootless` - unknown; unknown

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
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
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
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-dind-rootless`

```console
$ docker pull docker@sha256:e3d0fa70055956693134873845b743bbe35b5199c68a52347032ae3e5dbac9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9-dind-rootless` - linux; amd64

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

### `docker:29.9-dind-rootless` - unknown; unknown

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

### `docker:29.9-dind-rootless` - linux; arm64 variant v8

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

### `docker:29.9-dind-rootless` - unknown; unknown

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
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-alpine3.24`

```console
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
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
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-dind-alpine3.24`

```console
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-dind-rootless`

```console
$ docker pull docker@sha256:e3d0fa70055956693134873845b743bbe35b5199c68a52347032ae3e5dbac9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9.3-dind-rootless` - linux; amd64

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

### `docker:29.9.3-dind-rootless` - unknown; unknown

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

### `docker:29.9.3-dind-rootless` - linux; arm64 variant v8

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

### `docker:29.9.3-dind-rootless` - unknown; unknown

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
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

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

## `docker:latest`

```console
$ docker pull docker@sha256:08a98015fce594af7c382883bea080ea206de74402a95da9dc52b6428c8cd121
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
$ docker pull docker@sha256:fafc2949724b06fd4e4bc53c446a09149b750693f0abe7f444e9eec1e138fe65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122352428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee47d1044cff7319b4e03e4bcdc7d1599202951de3b5e85549c1b63365b8e2b6`
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

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:57e30b03fe769180713aefa8f98ffe3a446de7b86f749f2d26beee08ff47dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b758d5caa150fec2e40ebf4f067c5e7f72c0440a74d46ae5ccc5c2e4ba107bfb`

```dockerfile
```

-	Layers:
	-	`sha256:d1a729bf9f02ac31dfb6ca520f69f170acdd8713eee3b1aa74b6dc938dfb4aa7`  
		Last Modified: Thu, 05 Nov 2026 19:54:32 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:88463d780c2d484fbf74df90e45893bfdada76e2cb0a64ea4b9a252f194ab6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115046016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5930db94e6273b919044c6eafbd77f13dd950ea7c359826a30f45f4ef9b7dfff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:26:31 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:26:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:26:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:26:36 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:26:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:26:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:26:36 GMT
CMD []
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
	-	`sha256:c54110011c08295d8c944d9d8b69931f1f7e3704da24cdfb4765441fc51487b7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.5 MB (1498744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15333fa7275b085c29b48bfb291732bfdf886b93e0c1cbc76a744c3cc3b058`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 79.7 KB (79731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a363efa01cee3d434959f5f6366de4b321bf5ff44eec7c435926c709443e52`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4ff0d4739cbae54d7041fcf42036ea52a44ce5377987fa33dfcfe187c966f`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 49.5 MB (49523813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66979e7342373c30adee859b0fcf338a4a64964ffabc89f1e8f6f826262e5a9d`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdd9201387614d91dd354986b3005a6ee9fcd1b5398ab27b6661cfa4d57c75`  
		Last Modified: Thu, 05 Nov 2026 19:26:46 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:73112de969141f5307c9059a90162a5c28e1d32add492cb526624d7babd8fbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feae056157b780e43bc900ec4cb4daf26fab72e0ab4e89adb9a09a3f81c7ed41`

```dockerfile
```

-	Layers:
	-	`sha256:c7decdb341257928ef415e57bf7a12c123f9a2923aa735e4051669a34a6570ea`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:0ad8a4eddc88f24438d08a5f8440cdd5ebf3283e0f24c1a522092bf934fffbfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113722724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1ade331e2dc117a57d0da79fc93b8a2beca31a81a5ad9f8fb5a5db61bd0b3c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 05 Nov 2026 19:30:04 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 05 Nov 2026 19:30:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 05 Nov 2026 19:30:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:30:08 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Nov 2026 19:30:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 05 Nov 2026 19:30:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Nov 2026 19:30:08 GMT
CMD []
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
	-	`sha256:bb33d2fd27dba5429d20551dde85821f6d892667ea6e53126983c9fd453429ec`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.4 MB (1384228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6eba19687b1b932fcec4c477ddc23fc6fae3d20f669124f06f24b000e77e0`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 76.1 KB (76111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a751de15d62e8bc8e01a52c9bc4eb834ecc542b2389a0e64e75ee0b53f7c4`  
		Last Modified: Thu, 05 Nov 2026 19:30:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63d7cfaab9109882e4bc35fbfc7229815b91b990d94180483ab2b147404df2f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 49.4 MB (49364927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7ba0a432c5d3ed3e9e77b88badb8645006ed00cf8de7b76e4acf8df773887e`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73b18c6be8f8c6b7e007467607d1a2e6a4932b91ac3880f2273cecc024245f`  
		Last Modified: Thu, 05 Nov 2026 19:30:18 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:6afd38b17a796786aebadd6d6c9d789c433696810c67cb49da2c7cfe2a7bab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394d5fe26f0933c5941410510356f725d662b63365d87edd6165c7c761495f05`

```dockerfile
```

-	Layers:
	-	`sha256:85ea128a2b05ea12184a13123ec8e4f2b349d55dc90ef3baec1a19f6f8506660`  
		Last Modified: Thu, 05 Nov 2026 19:30:16 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a4bbf4cfd8b06ff12a3553cc7b5068b5d2b323d27532ba8e17089cdff3a8af97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68a5c4dfc4dfc6f8e20003242492c1fa64197cc8770932880f394594a2d325c`
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

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:54f35c72d7388c3376babf6ec4f998e2e3fa96a8b31b38cbab9b0073a0c0e460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454b973be0372493e1b3be064400bfc71cc7afd929acb15f361c636adb6f981e`

```dockerfile
```

-	Layers:
	-	`sha256:41e1dd9d46c6b3bc58f53ddc8387fa652ed9ee224ef72852cbe08bdf32b504fa`  
		Last Modified: Thu, 05 Nov 2026 20:11:07 GMT  
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
