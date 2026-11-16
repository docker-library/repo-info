<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.10`](#docker2910)
-	[`docker:29.10-cli`](#docker2910-cli)
-	[`docker:29.10-dind`](#docker2910-dind)
-	[`docker:29.10-dind-rootless`](#docker2910-dind-rootless)
-	[`docker:29.10-windowsservercore`](#docker2910-windowsservercore)
-	[`docker:29.10-windowsservercore-ltsc2022`](#docker2910-windowsservercore-ltsc2022)
-	[`docker:29.10-windowsservercore-ltsc2025`](#docker2910-windowsservercore-ltsc2025)
-	[`docker:29.10.0`](#docker29100)
-	[`docker:29.10.0-alpine3.24`](#docker29100-alpine324)
-	[`docker:29.10.0-cli`](#docker29100-cli)
-	[`docker:29.10.0-cli-alpine3.24`](#docker29100-cli-alpine324)
-	[`docker:29.10.0-dind`](#docker29100-dind)
-	[`docker:29.10.0-dind-alpine3.24`](#docker29100-dind-alpine324)
-	[`docker:29.10.0-dind-rootless`](#docker29100-dind-rootless)
-	[`docker:29.10.0-windowsservercore`](#docker29100-windowsservercore)
-	[`docker:29.10.0-windowsservercore-ltsc2022`](#docker29100-windowsservercore-ltsc2022)
-	[`docker:29.10.0-windowsservercore-ltsc2025`](#docker29100-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:7bf70dcb85c822e3fa6f2d332143e474b99147b9d7b39102b0cfe8b04a7dd61b
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
$ docker pull docker@sha256:9d337aaf171682751be04d67c15d880d6a95c6fd44cb8e12043f605012e5e654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122760806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2874e9600b01dfd3058420967f0b5db845cb4ee91aa40235119525a3ca70c290`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:56 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:57 GMT
CMD []
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf08768f55e377012d124a45615a4f6f0f0a53353e5274c9a8ed05c2be51bd`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54e303dd7cf73393a4b31e9d7c67b6622f5a60f32b3184e64ad911f1e0f649`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f376ae4bbd7a8cc6761fc1997f7fcf717311d5c63525a85978d1315a6eb25018`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 20.3 MB (20275620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deee5812065b72a8ed40d5cb093ac8a8fb738c0eb143008820f9d5a7aaa2dd4`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 24.0 MB (24049059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77dc40271440536b4a5622c7b5fd4297b4070509bbddb2f7f6af78834ffd88e`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 11.8 MB (11839928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59fb855acd70011d84cd768d6e9c72cc1ec6b1cbc5c53a439556743e32a0cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec659388e45eeaf34e65125c581ab77fa0f8f874c7cc482580a474153a61624`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde434102102dd5171de23ff28f6188f5ea6c5e63606d527b897ee708363f54`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bf930170a534a5012c6eda99524d542d955810274d9abea24e3fe2fcbc8101`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.5 MB (1497343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c82fc156b8b9986262f8c81ac4f1dceffb3741d9bcec9f057bc8c84a990ce83`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 81.0 KB (81049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7258fa88e319800c27fa6f4c9ee7e32c96eb9d91dfb592550fab1f8fa46f22d1`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c597d09c86e9140ff3a6206586deeb32f1f881877d6e5dceb0c93fcb713553c`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 53.0 MB (52951596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811263b992ce492156c6eaf9e0bddfd553455e9992d1938af20668a6a1eef2e8`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e41e0dc02a6d8ae7b635307a2c32b5d27a0cccf907c235ff5cc45af013f4562`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:3d028afeea43a3e118ce882e8f667670cf8cf2952628111b0e2c40d2e7d2ccf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d55e64f693df9d5b0d2a41f51c29af2526be299e3bda02166a1b5ed023399a`

```dockerfile
```

-	Layers:
	-	`sha256:89adb7aada55039633e503cedccd18bf009a288d9b7a7cdcc12f7f3eb6944b3f`  
		Last Modified: Fri, 13 Nov 2026 01:09:06 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:d6da4f1861884dba98044ba947923875832933e6d3e410e6559c3d35c7c699d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115496911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebc367fa867b69c39e0af65d78fe410541e3438b5d0b536295c19a39fd0e7a0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:30:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:30:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:30:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:30:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:30:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:30:30 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:30:30 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:35 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:36 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:36 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:39 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:39 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:39 GMT
CMD []
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88080670508a8184afb1a25917fced74c5ab56fc0396dde6741d9b885faf0168`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 8.1 MB (8107987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f560dd5ca034f62bdf1849f3d85caa9af7d587d41bd7a32a0cd1c500895c52f`  
		Last Modified: Fri, 13 Nov 2026 00:30:36 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2443ac28deb139ad4fd9d8bfbb9ee5be665403f35839a7bf1962dde5795e7fa`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 18.8 MB (18823225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c172003e5f6463e23c75590e9e870bc9e906f8ffacfabc999991d0ac2b279f7`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 22.7 MB (22650806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d105a3eacb7b050340923841707f3a328cb419584eb2f8516394b335a1346cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 11.2 MB (11246003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ac68f28964422b4b0947d872d68a25e46412ba568c9462c2a6446e8e053bb`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976a024d4f08968b23646b74ed0a92ac481ac3738216c7227fa728f8e3ac67ab`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0a2f41132d5e2b2a57297e2e473f6d409c3051590bf8d5bd6ef1cb0263866d`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc1bc9e40504793dc08fca1ab4aaa8595430c524dfe91be56ed64dd5951caaf`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 1.5 MB (1498752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9aa7f9ce1efcc2ae053ebf80c50870c74f1548259668e847730e2966bd18c8`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 79.7 KB (79749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f5570796da6ac64b1ac242d6720c0dccacaa1aa5e66c01604b407fa0458520`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1839b5f1ecae03fd9cbe9e8c3614e73d215d2ae6259483ffd76d604bd6ab8e23`  
		Last Modified: Fri, 13 Nov 2026 01:08:50 GMT  
		Size: 49.5 MB (49523831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059d449a857815496509d3f042b3baf805b8ce6a2122f8c9888cf68751f962c0`  
		Last Modified: Fri, 13 Nov 2026 01:08:49 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e32dcbefe1c272f8acb6612634fa7904c1dadca6f8129bac959ef75fab0a397`  
		Last Modified: Fri, 13 Nov 2026 01:08:49 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:031fceb8357e69e5ac41a42214705b739b7546dc2361af86a9d8665528b2e81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455ff8fd2abf225aaa56c2fd66ee31205ebfb9df1d7e13bc452dc918c00259a7`

```dockerfile
```

-	Layers:
	-	`sha256:26e146bf35a11d829a0fd8df616dd4847ff82fddad6f0cdd7b2b548caa74297e`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:c115b0f3d2a277eaa87fed37ad90438e1b69b058c35b5ed70c73adbbacd2abec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114178001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75347836af5a53adf433508a16e768b6d40fbe63d4697c13c6afc3f801018d55`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:51 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:59 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:09:00 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:09:00 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:09:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:09:03 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:09:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:09:03 GMT
CMD []
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07c11a45e9d44709e208d9c84386b7ad7f75235e30f1a0a00e554b7feb4e5db`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 7.4 MB (7403609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e41d38b92b25e039e5e93c06a4aa375a2efa9e2233f49f4ffa525e6f5482af1`  
		Last Modified: Fri, 13 Nov 2026 00:29:57 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8fbe8930233322856598da23bde7ced066e77aa53ddee1fad8548ed36e4bbb`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d3591c9924ddde4a181499494eef8c8787b54f785085cb4f4097cd66dc330d`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 22.6 MB (22629187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286f1f909c5ab08745cdad8d7246552bed1b34bb9e0a2aa5c9df2196d3264cd0`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 11.2 MB (11234465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dfbe6aff862f322b18cb6bfa1d9f8eb86ae0f33947bc17cae9b194ead15b54`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2f88c62d378e1fe21d03a60c5f6c3ee27a531d2ef305610640a10c6c6350d6`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fd16a29d090a2653d572d7ffd580367930adb431b3ab8cb6841d0306482bc`  
		Last Modified: Fri, 13 Nov 2026 00:30:00 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb6308a632790596cb676bb9ff64a2f699f26c339fe686d4057a208239db9c`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 1.4 MB (1384240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca1f966faa182f6a6928ff0103f6750d67e11b8ddbc143c9c3f51149a2631b9`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 76.1 KB (76119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b448c949dcece85eaf2a1b3c89c12ddc83cc90c0db07cfc05994d6297c262c56`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ece0ccb2858e1206fcf9fdb84da35bf4c43665c56e01fb240715dcb435a80dc`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 49.4 MB (49364937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9d4d8a77d2799ce44cbdadcb1ca05c59b8f70c4640f6920301883a91accbf6`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26979dc91874db095847d62a6d48ed5b0442e0b8ed24981eb929215fb90a4804`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:657b76a2be5a10f283a20173c57b0499e92a21b3a5e96aefbed68285e5110616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c56855810f86d2e259de2a51af39a3cc9090e065f958b1b29ae574fe4171671`

```dockerfile
```

-	Layers:
	-	`sha256:791f6bb10f946d43cd5524ace8d56aeacb7e9bd2b5cd99cdfbdd8ba4da1511d5`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ad3c03cf98cb790e69b7aedd29d0406646945f2b2bc01910efddecda0db5d24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113434561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1606b676676452e40aec52cb0531b01cc87b74ad63d9d783d90e06f1585a4c09`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:55 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:53 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:53 GMT
CMD []
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edf05a659f032a3662b70445c0fac1b903d5ca65d7245996e1a8d25801bd503`  
		Last Modified: Fri, 13 Nov 2026 00:29:43 GMT  
		Size: 8.3 MB (8264999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58183dae846be99cd9ca2a8a1778ad543bc8abe7c6ba2e494fdf36b06e234e`  
		Last Modified: Fri, 13 Nov 2026 00:29:42 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d7cc11cbc1daaf8fff6dbf34189f786437c53afa92882b04a30fb24526804c`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 18.7 MB (18664064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b3518e4792296852f72ae2cfcb09990e24352d04315c9ff96238791ded5123`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 21.7 MB (21734884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3073bea536fd2296f17e7d6398f1ce1cff4e6c561fc3b0b84cb60fa02f8cc7ed`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 10.7 MB (10735433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65a8fac537520208315c8750ded758bb09a4596ad138338e6548c5a6cdecd7`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786fa6a3d2b8fc4464def3df9d67019c0e980f40eacc95b37e0637fd4bc3df8`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3f56e6e2388d203292919e0ec06c04b887fef105dacda716b7658e39b2f85`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896192407a6b5a0ebe5e028853394e5c6b1641f6fe52e2513b5877cf6bfb9163`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.7 MB (1744479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934f8c1a335b522e196aa8e481dc97e040c871dfdb88161266c08e7221f1a891`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d30c29fe30991cc4622f6641c0d9f21cb0232f34ad5f3f9918fe7f2202b0397`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c5f05a4e54ed33a83144c0a5e50e89cf8fff7928768aa96b24614e3a5d3b91`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 48.0 MB (48001605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28e5b1bcf23e61aba1bea2cc2ffdb7e0d85fce1248a2fa6d6e605756c921048`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65ea3f361de975153fad005d8a389ba2d211d4f93689f0651c3f0401d83edbe`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:91a2d06a39b995c90221bfbe44f82d856b5edbe7f474bc7c8fab59250094b713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667d53afc3760fa21711c846ddbd07280e251ca17504a607b147a178b8f497e6`

```dockerfile
```

-	Layers:
	-	`sha256:885b1b52acb6f7077d4714f896c458a9ca5157430dae45a589d6bc7ac659568e`  
		Last Modified: Fri, 13 Nov 2026 01:09:01 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:5a7af0dcb0e46c803efe9b45371dd21cb500e5b4453250394ac6f06d49b6e6f1
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
$ docker pull docker@sha256:48678dab48932d2b9189040748f321d4eb09c90193bbf4f4b9b86d72cffd6e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68224812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60219d862fe550a2d0757c73b6b1a7cdc6d02f1f8d01feb05e16dc9b6a70db3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf08768f55e377012d124a45615a4f6f0f0a53353e5274c9a8ed05c2be51bd`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54e303dd7cf73393a4b31e9d7c67b6622f5a60f32b3184e64ad911f1e0f649`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f376ae4bbd7a8cc6761fc1997f7fcf717311d5c63525a85978d1315a6eb25018`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 20.3 MB (20275620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deee5812065b72a8ed40d5cb093ac8a8fb738c0eb143008820f9d5a7aaa2dd4`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 24.0 MB (24049059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77dc40271440536b4a5622c7b5fd4297b4070509bbddb2f7f6af78834ffd88e`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 11.8 MB (11839928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59fb855acd70011d84cd768d6e9c72cc1ec6b1cbc5c53a439556743e32a0cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec659388e45eeaf34e65125c581ab77fa0f8f874c7cc482580a474153a61624`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde434102102dd5171de23ff28f6188f5ea6c5e63606d527b897ee708363f54`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:de3d3c0ae572a0401c553aea031c98f86248c3bca932866d94d98e381c03fc81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8107ca74b30ca72d10fd69c43ea7b4432dfec7598ed6fac35a90dbca0dda853d`

```dockerfile
```

-	Layers:
	-	`sha256:3286ba443ac0dcba585f3c99e350ede324f1e4925297706baedcac09960f5250`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:089cf41e5580fb5661c7d4c0a57ce05d73407fde1b804612fcf870a025e33250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64388575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4457ea4fcaa94e35264f42a7d48913fec8db2a7774a0eb375090e75a6ba2f6e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:30:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:30:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:30:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:30:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:30:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:30:30 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:30:30 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88080670508a8184afb1a25917fced74c5ab56fc0396dde6741d9b885faf0168`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 8.1 MB (8107987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f560dd5ca034f62bdf1849f3d85caa9af7d587d41bd7a32a0cd1c500895c52f`  
		Last Modified: Fri, 13 Nov 2026 00:30:36 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2443ac28deb139ad4fd9d8bfbb9ee5be665403f35839a7bf1962dde5795e7fa`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 18.8 MB (18823225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c172003e5f6463e23c75590e9e870bc9e906f8ffacfabc999991d0ac2b279f7`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 22.7 MB (22650806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d105a3eacb7b050340923841707f3a328cb419584eb2f8516394b335a1346cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 11.2 MB (11246003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ac68f28964422b4b0947d872d68a25e46412ba568c9462c2a6446e8e053bb`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976a024d4f08968b23646b74ed0a92ac481ac3738216c7227fa728f8e3ac67ab`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0a2f41132d5e2b2a57297e2e473f6d409c3051590bf8d5bd6ef1cb0263866d`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:9010ac47b25834027f146203133340cc1a7703d85075bdc8b70e9a584b69f8ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3173a19ac7826585e0b478f3eee3474913ad7b09276014c47088625899ba72`

```dockerfile
```

-	Layers:
	-	`sha256:5996598371459af0919f82cfbfebc0a93b2e8eca36e47d704f4d33c3793262ce`  
		Last Modified: Fri, 13 Nov 2026 00:30:36 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:69b9dec4c4ea9e319783b1107a4e7e788ac52b672c1f95693f36c074f55b4b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63346700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d5838e306ccc792928373a7e9c8669b675c99786396a6d68136f67502ef2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07c11a45e9d44709e208d9c84386b7ad7f75235e30f1a0a00e554b7feb4e5db`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 7.4 MB (7403609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e41d38b92b25e039e5e93c06a4aa375a2efa9e2233f49f4ffa525e6f5482af1`  
		Last Modified: Fri, 13 Nov 2026 00:29:57 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8fbe8930233322856598da23bde7ced066e77aa53ddee1fad8548ed36e4bbb`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d3591c9924ddde4a181499494eef8c8787b54f785085cb4f4097cd66dc330d`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 22.6 MB (22629187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286f1f909c5ab08745cdad8d7246552bed1b34bb9e0a2aa5c9df2196d3264cd0`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 11.2 MB (11234465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dfbe6aff862f322b18cb6bfa1d9f8eb86ae0f33947bc17cae9b194ead15b54`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2f88c62d378e1fe21d03a60c5f6c3ee27a531d2ef305610640a10c6c6350d6`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fd16a29d090a2653d572d7ffd580367930adb431b3ab8cb6841d0306482bc`  
		Last Modified: Fri, 13 Nov 2026 00:30:00 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:ecc8632330a50de01becd48bf1b531b1fc2e74a11c8a3867292c8ae288f7d6c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141335256edf95cb92cf69f827db84c0447e42e6e6949599f94fcc9d1fe7a9b`

```dockerfile
```

-	Layers:
	-	`sha256:8556411553826a56de37c2a366d4cd7199757be5ced6e69bb335a30e716fa21c`  
		Last Modified: Fri, 13 Nov 2026 00:29:57 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9c8b088fc05efbf3fc8758c3cf15f8b2f5b345d75fabd73e6b35177ea6570031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63592128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0706ca7aaf19571c5e713864346b084f2cb825a842212d4fd3fd79966379e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edf05a659f032a3662b70445c0fac1b903d5ca65d7245996e1a8d25801bd503`  
		Last Modified: Fri, 13 Nov 2026 00:29:43 GMT  
		Size: 8.3 MB (8264999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58183dae846be99cd9ca2a8a1778ad543bc8abe7c6ba2e494fdf36b06e234e`  
		Last Modified: Fri, 13 Nov 2026 00:29:42 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d7cc11cbc1daaf8fff6dbf34189f786437c53afa92882b04a30fb24526804c`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 18.7 MB (18664064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b3518e4792296852f72ae2cfcb09990e24352d04315c9ff96238791ded5123`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 21.7 MB (21734884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3073bea536fd2296f17e7d6398f1ce1cff4e6c561fc3b0b84cb60fa02f8cc7ed`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 10.7 MB (10735433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65a8fac537520208315c8750ded758bb09a4596ad138338e6548c5a6cdecd7`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786fa6a3d2b8fc4464def3df9d67019c0e980f40eacc95b37e0637fd4bc3df8`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3f56e6e2388d203292919e0ec06c04b887fef105dacda716b7658e39b2f85`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:131431af3807437d304f2f057f3fb3d961f52002724f8a4692be345fe885c181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac2491ca6dc69971f1abcad8299cb86aeb62124bbcaec8af5d4533e26b18681`

```dockerfile
```

-	Layers:
	-	`sha256:c399fb13c58135aa1f2a2db93843b75f90a3406955765ff3a9d1bfdea50be43f`  
		Last Modified: Fri, 13 Nov 2026 00:30:00 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:7bf70dcb85c822e3fa6f2d332143e474b99147b9d7b39102b0cfe8b04a7dd61b
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
$ docker pull docker@sha256:9d337aaf171682751be04d67c15d880d6a95c6fd44cb8e12043f605012e5e654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122760806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2874e9600b01dfd3058420967f0b5db845cb4ee91aa40235119525a3ca70c290`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:56 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:57 GMT
CMD []
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf08768f55e377012d124a45615a4f6f0f0a53353e5274c9a8ed05c2be51bd`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54e303dd7cf73393a4b31e9d7c67b6622f5a60f32b3184e64ad911f1e0f649`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f376ae4bbd7a8cc6761fc1997f7fcf717311d5c63525a85978d1315a6eb25018`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 20.3 MB (20275620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deee5812065b72a8ed40d5cb093ac8a8fb738c0eb143008820f9d5a7aaa2dd4`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 24.0 MB (24049059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77dc40271440536b4a5622c7b5fd4297b4070509bbddb2f7f6af78834ffd88e`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 11.8 MB (11839928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59fb855acd70011d84cd768d6e9c72cc1ec6b1cbc5c53a439556743e32a0cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec659388e45eeaf34e65125c581ab77fa0f8f874c7cc482580a474153a61624`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde434102102dd5171de23ff28f6188f5ea6c5e63606d527b897ee708363f54`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bf930170a534a5012c6eda99524d542d955810274d9abea24e3fe2fcbc8101`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.5 MB (1497343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c82fc156b8b9986262f8c81ac4f1dceffb3741d9bcec9f057bc8c84a990ce83`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 81.0 KB (81049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7258fa88e319800c27fa6f4c9ee7e32c96eb9d91dfb592550fab1f8fa46f22d1`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c597d09c86e9140ff3a6206586deeb32f1f881877d6e5dceb0c93fcb713553c`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 53.0 MB (52951596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811263b992ce492156c6eaf9e0bddfd553455e9992d1938af20668a6a1eef2e8`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e41e0dc02a6d8ae7b635307a2c32b5d27a0cccf907c235ff5cc45af013f4562`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:3d028afeea43a3e118ce882e8f667670cf8cf2952628111b0e2c40d2e7d2ccf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d55e64f693df9d5b0d2a41f51c29af2526be299e3bda02166a1b5ed023399a`

```dockerfile
```

-	Layers:
	-	`sha256:89adb7aada55039633e503cedccd18bf009a288d9b7a7cdcc12f7f3eb6944b3f`  
		Last Modified: Fri, 13 Nov 2026 01:09:06 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d6da4f1861884dba98044ba947923875832933e6d3e410e6559c3d35c7c699d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115496911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebc367fa867b69c39e0af65d78fe410541e3438b5d0b536295c19a39fd0e7a0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:30:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:30:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:30:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:30:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:30:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:30:30 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:30:30 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:35 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:36 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:36 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:39 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:39 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:39 GMT
CMD []
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88080670508a8184afb1a25917fced74c5ab56fc0396dde6741d9b885faf0168`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 8.1 MB (8107987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f560dd5ca034f62bdf1849f3d85caa9af7d587d41bd7a32a0cd1c500895c52f`  
		Last Modified: Fri, 13 Nov 2026 00:30:36 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2443ac28deb139ad4fd9d8bfbb9ee5be665403f35839a7bf1962dde5795e7fa`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 18.8 MB (18823225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c172003e5f6463e23c75590e9e870bc9e906f8ffacfabc999991d0ac2b279f7`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 22.7 MB (22650806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d105a3eacb7b050340923841707f3a328cb419584eb2f8516394b335a1346cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 11.2 MB (11246003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ac68f28964422b4b0947d872d68a25e46412ba568c9462c2a6446e8e053bb`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976a024d4f08968b23646b74ed0a92ac481ac3738216c7227fa728f8e3ac67ab`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0a2f41132d5e2b2a57297e2e473f6d409c3051590bf8d5bd6ef1cb0263866d`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc1bc9e40504793dc08fca1ab4aaa8595430c524dfe91be56ed64dd5951caaf`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 1.5 MB (1498752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9aa7f9ce1efcc2ae053ebf80c50870c74f1548259668e847730e2966bd18c8`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 79.7 KB (79749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f5570796da6ac64b1ac242d6720c0dccacaa1aa5e66c01604b407fa0458520`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1839b5f1ecae03fd9cbe9e8c3614e73d215d2ae6259483ffd76d604bd6ab8e23`  
		Last Modified: Fri, 13 Nov 2026 01:08:50 GMT  
		Size: 49.5 MB (49523831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059d449a857815496509d3f042b3baf805b8ce6a2122f8c9888cf68751f962c0`  
		Last Modified: Fri, 13 Nov 2026 01:08:49 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e32dcbefe1c272f8acb6612634fa7904c1dadca6f8129bac959ef75fab0a397`  
		Last Modified: Fri, 13 Nov 2026 01:08:49 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:031fceb8357e69e5ac41a42214705b739b7546dc2361af86a9d8665528b2e81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455ff8fd2abf225aaa56c2fd66ee31205ebfb9df1d7e13bc452dc918c00259a7`

```dockerfile
```

-	Layers:
	-	`sha256:26e146bf35a11d829a0fd8df616dd4847ff82fddad6f0cdd7b2b548caa74297e`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:c115b0f3d2a277eaa87fed37ad90438e1b69b058c35b5ed70c73adbbacd2abec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114178001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75347836af5a53adf433508a16e768b6d40fbe63d4697c13c6afc3f801018d55`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:51 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:59 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:09:00 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:09:00 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:09:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:09:03 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:09:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:09:03 GMT
CMD []
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07c11a45e9d44709e208d9c84386b7ad7f75235e30f1a0a00e554b7feb4e5db`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 7.4 MB (7403609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e41d38b92b25e039e5e93c06a4aa375a2efa9e2233f49f4ffa525e6f5482af1`  
		Last Modified: Fri, 13 Nov 2026 00:29:57 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8fbe8930233322856598da23bde7ced066e77aa53ddee1fad8548ed36e4bbb`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d3591c9924ddde4a181499494eef8c8787b54f785085cb4f4097cd66dc330d`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 22.6 MB (22629187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286f1f909c5ab08745cdad8d7246552bed1b34bb9e0a2aa5c9df2196d3264cd0`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 11.2 MB (11234465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dfbe6aff862f322b18cb6bfa1d9f8eb86ae0f33947bc17cae9b194ead15b54`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2f88c62d378e1fe21d03a60c5f6c3ee27a531d2ef305610640a10c6c6350d6`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fd16a29d090a2653d572d7ffd580367930adb431b3ab8cb6841d0306482bc`  
		Last Modified: Fri, 13 Nov 2026 00:30:00 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb6308a632790596cb676bb9ff64a2f699f26c339fe686d4057a208239db9c`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 1.4 MB (1384240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca1f966faa182f6a6928ff0103f6750d67e11b8ddbc143c9c3f51149a2631b9`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 76.1 KB (76119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b448c949dcece85eaf2a1b3c89c12ddc83cc90c0db07cfc05994d6297c262c56`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ece0ccb2858e1206fcf9fdb84da35bf4c43665c56e01fb240715dcb435a80dc`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 49.4 MB (49364937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9d4d8a77d2799ce44cbdadcb1ca05c59b8f70c4640f6920301883a91accbf6`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26979dc91874db095847d62a6d48ed5b0442e0b8ed24981eb929215fb90a4804`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:657b76a2be5a10f283a20173c57b0499e92a21b3a5e96aefbed68285e5110616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c56855810f86d2e259de2a51af39a3cc9090e065f958b1b29ae574fe4171671`

```dockerfile
```

-	Layers:
	-	`sha256:791f6bb10f946d43cd5524ace8d56aeacb7e9bd2b5cd99cdfbdd8ba4da1511d5`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ad3c03cf98cb790e69b7aedd29d0406646945f2b2bc01910efddecda0db5d24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113434561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1606b676676452e40aec52cb0531b01cc87b74ad63d9d783d90e06f1585a4c09`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:55 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:53 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:53 GMT
CMD []
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edf05a659f032a3662b70445c0fac1b903d5ca65d7245996e1a8d25801bd503`  
		Last Modified: Fri, 13 Nov 2026 00:29:43 GMT  
		Size: 8.3 MB (8264999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58183dae846be99cd9ca2a8a1778ad543bc8abe7c6ba2e494fdf36b06e234e`  
		Last Modified: Fri, 13 Nov 2026 00:29:42 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d7cc11cbc1daaf8fff6dbf34189f786437c53afa92882b04a30fb24526804c`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 18.7 MB (18664064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b3518e4792296852f72ae2cfcb09990e24352d04315c9ff96238791ded5123`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 21.7 MB (21734884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3073bea536fd2296f17e7d6398f1ce1cff4e6c561fc3b0b84cb60fa02f8cc7ed`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 10.7 MB (10735433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65a8fac537520208315c8750ded758bb09a4596ad138338e6548c5a6cdecd7`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786fa6a3d2b8fc4464def3df9d67019c0e980f40eacc95b37e0637fd4bc3df8`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3f56e6e2388d203292919e0ec06c04b887fef105dacda716b7658e39b2f85`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896192407a6b5a0ebe5e028853394e5c6b1641f6fe52e2513b5877cf6bfb9163`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.7 MB (1744479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934f8c1a335b522e196aa8e481dc97e040c871dfdb88161266c08e7221f1a891`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d30c29fe30991cc4622f6641c0d9f21cb0232f34ad5f3f9918fe7f2202b0397`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c5f05a4e54ed33a83144c0a5e50e89cf8fff7928768aa96b24614e3a5d3b91`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 48.0 MB (48001605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28e5b1bcf23e61aba1bea2cc2ffdb7e0d85fce1248a2fa6d6e605756c921048`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65ea3f361de975153fad005d8a389ba2d211d4f93689f0651c3f0401d83edbe`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:91a2d06a39b995c90221bfbe44f82d856b5edbe7f474bc7c8fab59250094b713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667d53afc3760fa21711c846ddbd07280e251ca17504a607b147a178b8f497e6`

```dockerfile
```

-	Layers:
	-	`sha256:885b1b52acb6f7077d4714f896c458a9ca5157430dae45a589d6bc7ac659568e`  
		Last Modified: Fri, 13 Nov 2026 01:09:01 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:707a099b8ddd86306eb28c8b1775264a3ee0135b16dc505b7b48ffb328edf8d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:041d9bb3e03c01e66a17a8dea89365a86c95250f239dc2a22fc3440c3edc1b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138511183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c612e49e4ff5156d4a09a59159c3738939de965bfba25b12edfc95c687198091`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:56 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:57 GMT
CMD []
# Fri, 13 Nov 2026 02:08:49 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 13 Nov 2026 02:08:49 GMT
USER rootless
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf08768f55e377012d124a45615a4f6f0f0a53353e5274c9a8ed05c2be51bd`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54e303dd7cf73393a4b31e9d7c67b6622f5a60f32b3184e64ad911f1e0f649`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f376ae4bbd7a8cc6761fc1997f7fcf717311d5c63525a85978d1315a6eb25018`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 20.3 MB (20275620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deee5812065b72a8ed40d5cb093ac8a8fb738c0eb143008820f9d5a7aaa2dd4`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 24.0 MB (24049059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77dc40271440536b4a5622c7b5fd4297b4070509bbddb2f7f6af78834ffd88e`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 11.8 MB (11839928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59fb855acd70011d84cd768d6e9c72cc1ec6b1cbc5c53a439556743e32a0cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec659388e45eeaf34e65125c581ab77fa0f8f874c7cc482580a474153a61624`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde434102102dd5171de23ff28f6188f5ea6c5e63606d527b897ee708363f54`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bf930170a534a5012c6eda99524d542d955810274d9abea24e3fe2fcbc8101`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.5 MB (1497343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c82fc156b8b9986262f8c81ac4f1dceffb3741d9bcec9f057bc8c84a990ce83`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 81.0 KB (81049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7258fa88e319800c27fa6f4c9ee7e32c96eb9d91dfb592550fab1f8fa46f22d1`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c597d09c86e9140ff3a6206586deeb32f1f881877d6e5dceb0c93fcb713553c`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 53.0 MB (52951596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811263b992ce492156c6eaf9e0bddfd553455e9992d1938af20668a6a1eef2e8`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e41e0dc02a6d8ae7b635307a2c32b5d27a0cccf907c235ff5cc45af013f4562`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beab4a879c277b60d38a99ab9070ea41df3803b1363f3153e3316f41361e29d8`  
		Last Modified: Fri, 13 Nov 2026 02:08:54 GMT  
		Size: 3.6 MB (3626243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5583df4a674bc32cd3fea377e8c6c60b53e4ad6c0e8e8c81089f6c1937e6f3b`  
		Last Modified: Fri, 13 Nov 2026 02:08:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b434e42f12a0a957eaf8d048adb646e3358a25a80aec79b521cb78c22c339b`  
		Last Modified: Fri, 13 Nov 2026 02:08:54 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d6a6e410e55ce72f40fa4853620af0c4168df261b81101c948ef335e8f2cdc`  
		Last Modified: Fri, 13 Nov 2026 02:08:55 GMT  
		Size: 12.1 MB (12122792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ddf74cb6ecaa561be95d250d4b0f3c4c0eb1b153b65f032d7cf6fabd0276f0`  
		Last Modified: Fri, 13 Nov 2026 02:08:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:eb1079f739c0f85a5c251ed5d4be3e91e72fe5baf4dd7828a5c9489f380ec5b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f71826d58bb0aa6d809aeda06978aa1bdeeb408284c7e2835285a6514782cc`

```dockerfile
```

-	Layers:
	-	`sha256:248092743cae719f992293276bb5b5c0217176cb59ba39a00f5214b116514719`  
		Last Modified: Fri, 13 Nov 2026 02:08:54 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2a5ac6454c1c709af30a4e4759e3851ee6d54edff4cd124ef379af12e9e402de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128302698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137d9125783217492ff3adcb9711a7349fbb94a22f092c71fac5bf184bf1eabd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:55 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:53 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:53 GMT
CMD []
# Fri, 13 Nov 2026 02:08:40 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 13 Nov 2026 02:08:40 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 13 Nov 2026 02:08:41 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 02:08:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 13 Nov 2026 02:08:41 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 13 Nov 2026 02:08:41 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 13 Nov 2026 02:08:41 GMT
USER rootless
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edf05a659f032a3662b70445c0fac1b903d5ca65d7245996e1a8d25801bd503`  
		Last Modified: Fri, 13 Nov 2026 00:29:43 GMT  
		Size: 8.3 MB (8264999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58183dae846be99cd9ca2a8a1778ad543bc8abe7c6ba2e494fdf36b06e234e`  
		Last Modified: Fri, 13 Nov 2026 00:29:42 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d7cc11cbc1daaf8fff6dbf34189f786437c53afa92882b04a30fb24526804c`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 18.7 MB (18664064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b3518e4792296852f72ae2cfcb09990e24352d04315c9ff96238791ded5123`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 21.7 MB (21734884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3073bea536fd2296f17e7d6398f1ce1cff4e6c561fc3b0b84cb60fa02f8cc7ed`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 10.7 MB (10735433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65a8fac537520208315c8750ded758bb09a4596ad138338e6548c5a6cdecd7`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786fa6a3d2b8fc4464def3df9d67019c0e980f40eacc95b37e0637fd4bc3df8`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3f56e6e2388d203292919e0ec06c04b887fef105dacda716b7658e39b2f85`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896192407a6b5a0ebe5e028853394e5c6b1641f6fe52e2513b5877cf6bfb9163`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.7 MB (1744479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934f8c1a335b522e196aa8e481dc97e040c871dfdb88161266c08e7221f1a891`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d30c29fe30991cc4622f6641c0d9f21cb0232f34ad5f3f9918fe7f2202b0397`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c5f05a4e54ed33a83144c0a5e50e89cf8fff7928768aa96b24614e3a5d3b91`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 48.0 MB (48001605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28e5b1bcf23e61aba1bea2cc2ffdb7e0d85fce1248a2fa6d6e605756c921048`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65ea3f361de975153fad005d8a389ba2d211d4f93689f0651c3f0401d83edbe`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7406b53a18b0d75f29eabf9c1b483d80ab04ca7bb289d6ec561edbc358b0ff`  
		Last Modified: Fri, 13 Nov 2026 02:08:46 GMT  
		Size: 3.6 MB (3611253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb492ff02c39787c1759ddb514c1a48024861c6e0ec7e2919f87eb29ad593548`  
		Last Modified: Fri, 13 Nov 2026 02:08:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e265811677e2c668c420dea43b0b0ad8c75a78dd065c9e926d8a0d39e14293`  
		Last Modified: Fri, 13 Nov 2026 02:08:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02050a70afc04662e34fbb5052b226db935db4aaa647e8262093422696c96ad2`  
		Last Modified: Fri, 13 Nov 2026 02:08:47 GMT  
		Size: 11.3 MB (11255540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6abef4ce60e963d00d6f9400241abe218f36851f813da21a1be7b773d0cfbe`  
		Last Modified: Fri, 13 Nov 2026 02:08:47 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:f1485a465e60be00e2794d626e8d1a58a71dd9b74c353a890dd7c1a8e481ca51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af75d70ee805f75c26ee32b0bb0ea3a866e986a92d65a20dcc77d9973a617160`

```dockerfile
```

-	Layers:
	-	`sha256:0d876df3a8c30801c792baddf4ad1eba19b4bbcab35dccd59418545578f12409`  
		Last Modified: Fri, 13 Nov 2026 02:08:46 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:dc20a0cbff3c3699f86d8059595aeed14b5a7390a59ad63f1636a3c06a6cb019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33822; amd64

```console
$ docker pull docker@sha256:9f8ea739bcbcf57bc14a9b67679e8180e6da34face18d6a9ee21ed9327756da0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466154215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2ca1c12cc3dead6fc6e01d5354f7ac970ac11c81177dc145e348289fa15837`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Fri, 13 Nov 2026 00:35:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:36:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:36:50 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:36:53 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:37:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:37:24 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:37:35 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:37:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:37:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:37:38 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:37:46 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b642ad20f2fa37081a9fe18d65b1ab8975acac7c68e1b93e1a3fb499bb2498`  
		Last Modified: Fri, 13 Nov 2026 00:37:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7490ace18240ea46815d0c4d3c61065388d0b517d2cfdd03e5b5c4bc4321d4ad`  
		Last Modified: Fri, 13 Nov 2026 00:37:55 GMT  
		Size: 365.3 KB (365304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b07b147eef7d8d05b8a6182fa2cb969cc4bf41cf558207cc7202964067e93a2`  
		Last Modified: Fri, 13 Nov 2026 00:37:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d49beb22f788d0d0c976aa91437c0ec2782a5aad008ee788e4e9612d946a0e`  
		Last Modified: Fri, 13 Nov 2026 00:37:54 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b343c4f95cc9b4f65acf10fe5273c9574669b887cf9555fd6bfe94f639f217f0`  
		Last Modified: Fri, 13 Nov 2026 00:37:56 GMT  
		Size: 20.9 MB (20936456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659fbe852477a0fb7faa8ce71383e1da6b28a63a8b6fd3657ed50069e4b11470`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9b2e0a93b1c33bff8bde180b7ef5469fa9a03ee4b3992378f6f4164e5d3e4e`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad7b9e27fc1a17e6e90fd2b8e258e4fa86fd451a7744eb193f64c7f3614c7f7`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ded71cf12d5798b68905b74e610c9d9fad7a9b7309a1c487e31d12e01599398`  
		Last Modified: Fri, 13 Nov 2026 00:38:10 GMT  
		Size: 25.0 MB (25006271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862385d1102cb12e5a441d9358732fe5eadda6c24328c3aa66b7714af46de93`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95509bc2c647e626f6e1d1d4a88bec5ebcc939ec79d80d1e80c9a14341ac176e`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c164a4e2cf8f6d96ea492fe94e857ad6324c05be07e7e3db0d2148cfdc567d9`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1baac9ad6e262530741f7f1f102925b668d6c25cc25bf2b1399ad3c0ea3e2c`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 12.5 MB (12503727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull docker@sha256:54a9d6e37dc1b1e5722a015ffd3c5764af0de4eded79a31902816286a5cb0bbb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2304971608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f870e1df1c9d4f9a888ca3a21fc0611a2ac118f06c3ba07ab82cdec031088b34`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Fri, 13 Nov 2026 00:39:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:41:25 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:41:27 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:41:29 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:42:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:08 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:42:10 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:42:12 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:42:51 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:42:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:42:56 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:43:18 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9791a4deac2d4fc5a57091fdd10f6f34cb9e26776785130dcf1878b05ac8c94`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458970e571a66a3f4e2276abc2a1124674809db8642e2ee5c762316786fe2e27`  
		Last Modified: Fri, 13 Nov 2026 00:43:29 GMT  
		Size: 345.6 KB (345625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a257809a4dad6fcd6333da68b74dbe88f0396b9ca74a9f0c1f08d7f8735151e0`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7dbeb66c7dc15575c7535538b779f6fb50624e25e683696553fb7903864eff`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39517584f51f08c69a66c8e9e36c28614b696a690adfb33fd44d8696387a3f69`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 20.9 MB (20878292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cf9845cd84893d1b9950bd9826337abff8b4dec3b99e6c6709b8c25e02ee3`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210e190d3ce36f53809d2d3139725c8ec10a7c6e957ca5b0553079ba595a6be`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e52004c58f19f972fb6720fde83aa4574729921ad6a02ea9aca968b35f66ae`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe6529878ee00df3e29d8cbbb704f65810ce89b0ed08808a77658f1ee61bafd`  
		Last Modified: Fri, 13 Nov 2026 00:43:44 GMT  
		Size: 25.0 MB (24954306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7dad5d7b27e44b17f33f6c36f3f28acbbdd75799a54d518318a6d177338253`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fc33515a5de65bef0382584ce4153d4c13cd67f2dc2325ce1f5785e974122`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fb9082e0d149b1506ab89d2a708bf0a2fd08f7d1f36b0f5f0f2ed89946bcf4`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67029b172c37e639905c04999029aa112b0cb29a82cc9cd36a3310d57527f1d`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 12.4 MB (12433820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:d34d97b562c97b2253167abff8576d7b92d7da34c251958309c66e2f33863ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull docker@sha256:54a9d6e37dc1b1e5722a015ffd3c5764af0de4eded79a31902816286a5cb0bbb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2304971608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f870e1df1c9d4f9a888ca3a21fc0611a2ac118f06c3ba07ab82cdec031088b34`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Fri, 13 Nov 2026 00:39:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:41:25 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:41:27 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:41:29 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:42:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:08 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:42:10 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:42:12 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:42:51 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:42:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:42:56 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:43:18 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9791a4deac2d4fc5a57091fdd10f6f34cb9e26776785130dcf1878b05ac8c94`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458970e571a66a3f4e2276abc2a1124674809db8642e2ee5c762316786fe2e27`  
		Last Modified: Fri, 13 Nov 2026 00:43:29 GMT  
		Size: 345.6 KB (345625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a257809a4dad6fcd6333da68b74dbe88f0396b9ca74a9f0c1f08d7f8735151e0`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7dbeb66c7dc15575c7535538b779f6fb50624e25e683696553fb7903864eff`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39517584f51f08c69a66c8e9e36c28614b696a690adfb33fd44d8696387a3f69`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 20.9 MB (20878292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cf9845cd84893d1b9950bd9826337abff8b4dec3b99e6c6709b8c25e02ee3`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210e190d3ce36f53809d2d3139725c8ec10a7c6e957ca5b0553079ba595a6be`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e52004c58f19f972fb6720fde83aa4574729921ad6a02ea9aca968b35f66ae`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe6529878ee00df3e29d8cbbb704f65810ce89b0ed08808a77658f1ee61bafd`  
		Last Modified: Fri, 13 Nov 2026 00:43:44 GMT  
		Size: 25.0 MB (24954306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7dad5d7b27e44b17f33f6c36f3f28acbbdd75799a54d518318a6d177338253`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fc33515a5de65bef0382584ce4153d4c13cd67f2dc2325ce1f5785e974122`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fb9082e0d149b1506ab89d2a708bf0a2fd08f7d1f36b0f5f0f2ed89946bcf4`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67029b172c37e639905c04999029aa112b0cb29a82cc9cd36a3310d57527f1d`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 12.4 MB (12433820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:a544411d8ec4f2cb64ad43a6da4ab53b60552f199a0c0c1ae87759fc0be780ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull docker@sha256:9f8ea739bcbcf57bc14a9b67679e8180e6da34face18d6a9ee21ed9327756da0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466154215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2ca1c12cc3dead6fc6e01d5354f7ac970ac11c81177dc145e348289fa15837`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Fri, 13 Nov 2026 00:35:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:36:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:36:50 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:36:53 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:37:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:37:24 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:37:35 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:37:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:37:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:37:38 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:37:46 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b642ad20f2fa37081a9fe18d65b1ab8975acac7c68e1b93e1a3fb499bb2498`  
		Last Modified: Fri, 13 Nov 2026 00:37:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7490ace18240ea46815d0c4d3c61065388d0b517d2cfdd03e5b5c4bc4321d4ad`  
		Last Modified: Fri, 13 Nov 2026 00:37:55 GMT  
		Size: 365.3 KB (365304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b07b147eef7d8d05b8a6182fa2cb969cc4bf41cf558207cc7202964067e93a2`  
		Last Modified: Fri, 13 Nov 2026 00:37:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d49beb22f788d0d0c976aa91437c0ec2782a5aad008ee788e4e9612d946a0e`  
		Last Modified: Fri, 13 Nov 2026 00:37:54 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b343c4f95cc9b4f65acf10fe5273c9574669b887cf9555fd6bfe94f639f217f0`  
		Last Modified: Fri, 13 Nov 2026 00:37:56 GMT  
		Size: 20.9 MB (20936456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659fbe852477a0fb7faa8ce71383e1da6b28a63a8b6fd3657ed50069e4b11470`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9b2e0a93b1c33bff8bde180b7ef5469fa9a03ee4b3992378f6f4164e5d3e4e`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad7b9e27fc1a17e6e90fd2b8e258e4fa86fd451a7744eb193f64c7f3614c7f7`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ded71cf12d5798b68905b74e610c9d9fad7a9b7309a1c487e31d12e01599398`  
		Last Modified: Fri, 13 Nov 2026 00:38:10 GMT  
		Size: 25.0 MB (25006271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862385d1102cb12e5a441d9358732fe5eadda6c24328c3aa66b7714af46de93`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95509bc2c647e626f6e1d1d4a88bec5ebcc939ec79d80d1e80c9a14341ac176e`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c164a4e2cf8f6d96ea492fe94e857ad6324c05be07e7e3db0d2148cfdc567d9`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1baac9ad6e262530741f7f1f102925b668d6c25cc25bf2b1399ad3c0ea3e2c`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 12.5 MB (12503727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.10`

**does not exist** (yet?)

## `docker:29.10-cli`

**does not exist** (yet?)

## `docker:29.10-dind`

**does not exist** (yet?)

## `docker:29.10-dind-rootless`

**does not exist** (yet?)

## `docker:29.10-windowsservercore`

**does not exist** (yet?)

## `docker:29.10-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `docker:29.10-windowsservercore-ltsc2025`

**does not exist** (yet?)

## `docker:29.10.0`

**does not exist** (yet?)

## `docker:29.10.0-alpine3.24`

**does not exist** (yet?)

## `docker:29.10.0-cli`

**does not exist** (yet?)

## `docker:29.10.0-cli-alpine3.24`

**does not exist** (yet?)

## `docker:29.10.0-dind`

**does not exist** (yet?)

## `docker:29.10.0-dind-alpine3.24`

**does not exist** (yet?)

## `docker:29.10.0-dind-rootless`

**does not exist** (yet?)

## `docker:29.10.0-windowsservercore`

**does not exist** (yet?)

## `docker:29.10.0-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `docker:29.10.0-windowsservercore-ltsc2025`

**does not exist** (yet?)

## `docker:cli`

```console
$ docker pull docker@sha256:5a7af0dcb0e46c803efe9b45371dd21cb500e5b4453250394ac6f06d49b6e6f1
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
$ docker pull docker@sha256:48678dab48932d2b9189040748f321d4eb09c90193bbf4f4b9b86d72cffd6e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68224812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60219d862fe550a2d0757c73b6b1a7cdc6d02f1f8d01feb05e16dc9b6a70db3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf08768f55e377012d124a45615a4f6f0f0a53353e5274c9a8ed05c2be51bd`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54e303dd7cf73393a4b31e9d7c67b6622f5a60f32b3184e64ad911f1e0f649`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f376ae4bbd7a8cc6761fc1997f7fcf717311d5c63525a85978d1315a6eb25018`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 20.3 MB (20275620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deee5812065b72a8ed40d5cb093ac8a8fb738c0eb143008820f9d5a7aaa2dd4`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 24.0 MB (24049059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77dc40271440536b4a5622c7b5fd4297b4070509bbddb2f7f6af78834ffd88e`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 11.8 MB (11839928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59fb855acd70011d84cd768d6e9c72cc1ec6b1cbc5c53a439556743e32a0cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec659388e45eeaf34e65125c581ab77fa0f8f874c7cc482580a474153a61624`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde434102102dd5171de23ff28f6188f5ea6c5e63606d527b897ee708363f54`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:de3d3c0ae572a0401c553aea031c98f86248c3bca932866d94d98e381c03fc81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8107ca74b30ca72d10fd69c43ea7b4432dfec7598ed6fac35a90dbca0dda853d`

```dockerfile
```

-	Layers:
	-	`sha256:3286ba443ac0dcba585f3c99e350ede324f1e4925297706baedcac09960f5250`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:089cf41e5580fb5661c7d4c0a57ce05d73407fde1b804612fcf870a025e33250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64388575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4457ea4fcaa94e35264f42a7d48913fec8db2a7774a0eb375090e75a6ba2f6e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:30:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:30:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:30:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:30:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:30:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:30:30 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:30:30 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88080670508a8184afb1a25917fced74c5ab56fc0396dde6741d9b885faf0168`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 8.1 MB (8107987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f560dd5ca034f62bdf1849f3d85caa9af7d587d41bd7a32a0cd1c500895c52f`  
		Last Modified: Fri, 13 Nov 2026 00:30:36 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2443ac28deb139ad4fd9d8bfbb9ee5be665403f35839a7bf1962dde5795e7fa`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 18.8 MB (18823225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c172003e5f6463e23c75590e9e870bc9e906f8ffacfabc999991d0ac2b279f7`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 22.7 MB (22650806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d105a3eacb7b050340923841707f3a328cb419584eb2f8516394b335a1346cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 11.2 MB (11246003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ac68f28964422b4b0947d872d68a25e46412ba568c9462c2a6446e8e053bb`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976a024d4f08968b23646b74ed0a92ac481ac3738216c7227fa728f8e3ac67ab`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0a2f41132d5e2b2a57297e2e473f6d409c3051590bf8d5bd6ef1cb0263866d`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:9010ac47b25834027f146203133340cc1a7703d85075bdc8b70e9a584b69f8ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3173a19ac7826585e0b478f3eee3474913ad7b09276014c47088625899ba72`

```dockerfile
```

-	Layers:
	-	`sha256:5996598371459af0919f82cfbfebc0a93b2e8eca36e47d704f4d33c3793262ce`  
		Last Modified: Fri, 13 Nov 2026 00:30:36 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:69b9dec4c4ea9e319783b1107a4e7e788ac52b672c1f95693f36c074f55b4b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63346700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d5838e306ccc792928373a7e9c8669b675c99786396a6d68136f67502ef2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07c11a45e9d44709e208d9c84386b7ad7f75235e30f1a0a00e554b7feb4e5db`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 7.4 MB (7403609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e41d38b92b25e039e5e93c06a4aa375a2efa9e2233f49f4ffa525e6f5482af1`  
		Last Modified: Fri, 13 Nov 2026 00:29:57 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8fbe8930233322856598da23bde7ced066e77aa53ddee1fad8548ed36e4bbb`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d3591c9924ddde4a181499494eef8c8787b54f785085cb4f4097cd66dc330d`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 22.6 MB (22629187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286f1f909c5ab08745cdad8d7246552bed1b34bb9e0a2aa5c9df2196d3264cd0`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 11.2 MB (11234465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dfbe6aff862f322b18cb6bfa1d9f8eb86ae0f33947bc17cae9b194ead15b54`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2f88c62d378e1fe21d03a60c5f6c3ee27a531d2ef305610640a10c6c6350d6`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fd16a29d090a2653d572d7ffd580367930adb431b3ab8cb6841d0306482bc`  
		Last Modified: Fri, 13 Nov 2026 00:30:00 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:ecc8632330a50de01becd48bf1b531b1fc2e74a11c8a3867292c8ae288f7d6c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141335256edf95cb92cf69f827db84c0447e42e6e6949599f94fcc9d1fe7a9b`

```dockerfile
```

-	Layers:
	-	`sha256:8556411553826a56de37c2a366d4cd7199757be5ced6e69bb335a30e716fa21c`  
		Last Modified: Fri, 13 Nov 2026 00:29:57 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9c8b088fc05efbf3fc8758c3cf15f8b2f5b345d75fabd73e6b35177ea6570031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63592128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0706ca7aaf19571c5e713864346b084f2cb825a842212d4fd3fd79966379e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edf05a659f032a3662b70445c0fac1b903d5ca65d7245996e1a8d25801bd503`  
		Last Modified: Fri, 13 Nov 2026 00:29:43 GMT  
		Size: 8.3 MB (8264999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58183dae846be99cd9ca2a8a1778ad543bc8abe7c6ba2e494fdf36b06e234e`  
		Last Modified: Fri, 13 Nov 2026 00:29:42 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d7cc11cbc1daaf8fff6dbf34189f786437c53afa92882b04a30fb24526804c`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 18.7 MB (18664064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b3518e4792296852f72ae2cfcb09990e24352d04315c9ff96238791ded5123`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 21.7 MB (21734884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3073bea536fd2296f17e7d6398f1ce1cff4e6c561fc3b0b84cb60fa02f8cc7ed`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 10.7 MB (10735433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65a8fac537520208315c8750ded758bb09a4596ad138338e6548c5a6cdecd7`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786fa6a3d2b8fc4464def3df9d67019c0e980f40eacc95b37e0637fd4bc3df8`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3f56e6e2388d203292919e0ec06c04b887fef105dacda716b7658e39b2f85`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:131431af3807437d304f2f057f3fb3d961f52002724f8a4692be345fe885c181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac2491ca6dc69971f1abcad8299cb86aeb62124bbcaec8af5d4533e26b18681`

```dockerfile
```

-	Layers:
	-	`sha256:c399fb13c58135aa1f2a2db93843b75f90a3406955765ff3a9d1bfdea50be43f`  
		Last Modified: Fri, 13 Nov 2026 00:30:00 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:7bf70dcb85c822e3fa6f2d332143e474b99147b9d7b39102b0cfe8b04a7dd61b
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
$ docker pull docker@sha256:9d337aaf171682751be04d67c15d880d6a95c6fd44cb8e12043f605012e5e654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122760806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2874e9600b01dfd3058420967f0b5db845cb4ee91aa40235119525a3ca70c290`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:56 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:57 GMT
CMD []
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf08768f55e377012d124a45615a4f6f0f0a53353e5274c9a8ed05c2be51bd`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54e303dd7cf73393a4b31e9d7c67b6622f5a60f32b3184e64ad911f1e0f649`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f376ae4bbd7a8cc6761fc1997f7fcf717311d5c63525a85978d1315a6eb25018`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 20.3 MB (20275620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deee5812065b72a8ed40d5cb093ac8a8fb738c0eb143008820f9d5a7aaa2dd4`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 24.0 MB (24049059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77dc40271440536b4a5622c7b5fd4297b4070509bbddb2f7f6af78834ffd88e`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 11.8 MB (11839928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59fb855acd70011d84cd768d6e9c72cc1ec6b1cbc5c53a439556743e32a0cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec659388e45eeaf34e65125c581ab77fa0f8f874c7cc482580a474153a61624`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde434102102dd5171de23ff28f6188f5ea6c5e63606d527b897ee708363f54`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bf930170a534a5012c6eda99524d542d955810274d9abea24e3fe2fcbc8101`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.5 MB (1497343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c82fc156b8b9986262f8c81ac4f1dceffb3741d9bcec9f057bc8c84a990ce83`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 81.0 KB (81049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7258fa88e319800c27fa6f4c9ee7e32c96eb9d91dfb592550fab1f8fa46f22d1`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c597d09c86e9140ff3a6206586deeb32f1f881877d6e5dceb0c93fcb713553c`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 53.0 MB (52951596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811263b992ce492156c6eaf9e0bddfd553455e9992d1938af20668a6a1eef2e8`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e41e0dc02a6d8ae7b635307a2c32b5d27a0cccf907c235ff5cc45af013f4562`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:3d028afeea43a3e118ce882e8f667670cf8cf2952628111b0e2c40d2e7d2ccf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d55e64f693df9d5b0d2a41f51c29af2526be299e3bda02166a1b5ed023399a`

```dockerfile
```

-	Layers:
	-	`sha256:89adb7aada55039633e503cedccd18bf009a288d9b7a7cdcc12f7f3eb6944b3f`  
		Last Modified: Fri, 13 Nov 2026 01:09:06 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d6da4f1861884dba98044ba947923875832933e6d3e410e6559c3d35c7c699d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115496911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebc367fa867b69c39e0af65d78fe410541e3438b5d0b536295c19a39fd0e7a0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:30:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:30:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:30:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:30:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:30:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:30:30 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:30:30 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:35 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:36 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:36 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:39 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:39 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:39 GMT
CMD []
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88080670508a8184afb1a25917fced74c5ab56fc0396dde6741d9b885faf0168`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 8.1 MB (8107987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f560dd5ca034f62bdf1849f3d85caa9af7d587d41bd7a32a0cd1c500895c52f`  
		Last Modified: Fri, 13 Nov 2026 00:30:36 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2443ac28deb139ad4fd9d8bfbb9ee5be665403f35839a7bf1962dde5795e7fa`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 18.8 MB (18823225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c172003e5f6463e23c75590e9e870bc9e906f8ffacfabc999991d0ac2b279f7`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 22.7 MB (22650806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d105a3eacb7b050340923841707f3a328cb419584eb2f8516394b335a1346cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 11.2 MB (11246003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ac68f28964422b4b0947d872d68a25e46412ba568c9462c2a6446e8e053bb`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976a024d4f08968b23646b74ed0a92ac481ac3738216c7227fa728f8e3ac67ab`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0a2f41132d5e2b2a57297e2e473f6d409c3051590bf8d5bd6ef1cb0263866d`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc1bc9e40504793dc08fca1ab4aaa8595430c524dfe91be56ed64dd5951caaf`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 1.5 MB (1498752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9aa7f9ce1efcc2ae053ebf80c50870c74f1548259668e847730e2966bd18c8`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 79.7 KB (79749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f5570796da6ac64b1ac242d6720c0dccacaa1aa5e66c01604b407fa0458520`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1839b5f1ecae03fd9cbe9e8c3614e73d215d2ae6259483ffd76d604bd6ab8e23`  
		Last Modified: Fri, 13 Nov 2026 01:08:50 GMT  
		Size: 49.5 MB (49523831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059d449a857815496509d3f042b3baf805b8ce6a2122f8c9888cf68751f962c0`  
		Last Modified: Fri, 13 Nov 2026 01:08:49 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e32dcbefe1c272f8acb6612634fa7904c1dadca6f8129bac959ef75fab0a397`  
		Last Modified: Fri, 13 Nov 2026 01:08:49 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:031fceb8357e69e5ac41a42214705b739b7546dc2361af86a9d8665528b2e81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455ff8fd2abf225aaa56c2fd66ee31205ebfb9df1d7e13bc452dc918c00259a7`

```dockerfile
```

-	Layers:
	-	`sha256:26e146bf35a11d829a0fd8df616dd4847ff82fddad6f0cdd7b2b548caa74297e`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:c115b0f3d2a277eaa87fed37ad90438e1b69b058c35b5ed70c73adbbacd2abec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114178001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75347836af5a53adf433508a16e768b6d40fbe63d4697c13c6afc3f801018d55`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:51 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:59 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:09:00 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:09:00 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:09:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:09:03 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:09:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:09:03 GMT
CMD []
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07c11a45e9d44709e208d9c84386b7ad7f75235e30f1a0a00e554b7feb4e5db`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 7.4 MB (7403609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e41d38b92b25e039e5e93c06a4aa375a2efa9e2233f49f4ffa525e6f5482af1`  
		Last Modified: Fri, 13 Nov 2026 00:29:57 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8fbe8930233322856598da23bde7ced066e77aa53ddee1fad8548ed36e4bbb`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d3591c9924ddde4a181499494eef8c8787b54f785085cb4f4097cd66dc330d`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 22.6 MB (22629187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286f1f909c5ab08745cdad8d7246552bed1b34bb9e0a2aa5c9df2196d3264cd0`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 11.2 MB (11234465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dfbe6aff862f322b18cb6bfa1d9f8eb86ae0f33947bc17cae9b194ead15b54`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2f88c62d378e1fe21d03a60c5f6c3ee27a531d2ef305610640a10c6c6350d6`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fd16a29d090a2653d572d7ffd580367930adb431b3ab8cb6841d0306482bc`  
		Last Modified: Fri, 13 Nov 2026 00:30:00 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb6308a632790596cb676bb9ff64a2f699f26c339fe686d4057a208239db9c`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 1.4 MB (1384240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca1f966faa182f6a6928ff0103f6750d67e11b8ddbc143c9c3f51149a2631b9`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 76.1 KB (76119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b448c949dcece85eaf2a1b3c89c12ddc83cc90c0db07cfc05994d6297c262c56`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ece0ccb2858e1206fcf9fdb84da35bf4c43665c56e01fb240715dcb435a80dc`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 49.4 MB (49364937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9d4d8a77d2799ce44cbdadcb1ca05c59b8f70c4640f6920301883a91accbf6`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26979dc91874db095847d62a6d48ed5b0442e0b8ed24981eb929215fb90a4804`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:657b76a2be5a10f283a20173c57b0499e92a21b3a5e96aefbed68285e5110616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c56855810f86d2e259de2a51af39a3cc9090e065f958b1b29ae574fe4171671`

```dockerfile
```

-	Layers:
	-	`sha256:791f6bb10f946d43cd5524ace8d56aeacb7e9bd2b5cd99cdfbdd8ba4da1511d5`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ad3c03cf98cb790e69b7aedd29d0406646945f2b2bc01910efddecda0db5d24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113434561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1606b676676452e40aec52cb0531b01cc87b74ad63d9d783d90e06f1585a4c09`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:55 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:53 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:53 GMT
CMD []
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edf05a659f032a3662b70445c0fac1b903d5ca65d7245996e1a8d25801bd503`  
		Last Modified: Fri, 13 Nov 2026 00:29:43 GMT  
		Size: 8.3 MB (8264999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58183dae846be99cd9ca2a8a1778ad543bc8abe7c6ba2e494fdf36b06e234e`  
		Last Modified: Fri, 13 Nov 2026 00:29:42 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d7cc11cbc1daaf8fff6dbf34189f786437c53afa92882b04a30fb24526804c`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 18.7 MB (18664064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b3518e4792296852f72ae2cfcb09990e24352d04315c9ff96238791ded5123`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 21.7 MB (21734884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3073bea536fd2296f17e7d6398f1ce1cff4e6c561fc3b0b84cb60fa02f8cc7ed`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 10.7 MB (10735433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65a8fac537520208315c8750ded758bb09a4596ad138338e6548c5a6cdecd7`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786fa6a3d2b8fc4464def3df9d67019c0e980f40eacc95b37e0637fd4bc3df8`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3f56e6e2388d203292919e0ec06c04b887fef105dacda716b7658e39b2f85`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896192407a6b5a0ebe5e028853394e5c6b1641f6fe52e2513b5877cf6bfb9163`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.7 MB (1744479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934f8c1a335b522e196aa8e481dc97e040c871dfdb88161266c08e7221f1a891`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d30c29fe30991cc4622f6641c0d9f21cb0232f34ad5f3f9918fe7f2202b0397`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c5f05a4e54ed33a83144c0a5e50e89cf8fff7928768aa96b24614e3a5d3b91`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 48.0 MB (48001605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28e5b1bcf23e61aba1bea2cc2ffdb7e0d85fce1248a2fa6d6e605756c921048`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65ea3f361de975153fad005d8a389ba2d211d4f93689f0651c3f0401d83edbe`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:91a2d06a39b995c90221bfbe44f82d856b5edbe7f474bc7c8fab59250094b713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667d53afc3760fa21711c846ddbd07280e251ca17504a607b147a178b8f497e6`

```dockerfile
```

-	Layers:
	-	`sha256:885b1b52acb6f7077d4714f896c458a9ca5157430dae45a589d6bc7ac659568e`  
		Last Modified: Fri, 13 Nov 2026 01:09:01 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:707a099b8ddd86306eb28c8b1775264a3ee0135b16dc505b7b48ffb328edf8d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:041d9bb3e03c01e66a17a8dea89365a86c95250f239dc2a22fc3440c3edc1b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138511183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c612e49e4ff5156d4a09a59159c3738939de965bfba25b12edfc95c687198091`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:56 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:57 GMT
CMD []
# Fri, 13 Nov 2026 02:08:49 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 13 Nov 2026 02:08:49 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 13 Nov 2026 02:08:49 GMT
USER rootless
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf08768f55e377012d124a45615a4f6f0f0a53353e5274c9a8ed05c2be51bd`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54e303dd7cf73393a4b31e9d7c67b6622f5a60f32b3184e64ad911f1e0f649`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f376ae4bbd7a8cc6761fc1997f7fcf717311d5c63525a85978d1315a6eb25018`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 20.3 MB (20275620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deee5812065b72a8ed40d5cb093ac8a8fb738c0eb143008820f9d5a7aaa2dd4`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 24.0 MB (24049059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77dc40271440536b4a5622c7b5fd4297b4070509bbddb2f7f6af78834ffd88e`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 11.8 MB (11839928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59fb855acd70011d84cd768d6e9c72cc1ec6b1cbc5c53a439556743e32a0cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec659388e45eeaf34e65125c581ab77fa0f8f874c7cc482580a474153a61624`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde434102102dd5171de23ff28f6188f5ea6c5e63606d527b897ee708363f54`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bf930170a534a5012c6eda99524d542d955810274d9abea24e3fe2fcbc8101`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.5 MB (1497343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c82fc156b8b9986262f8c81ac4f1dceffb3741d9bcec9f057bc8c84a990ce83`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 81.0 KB (81049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7258fa88e319800c27fa6f4c9ee7e32c96eb9d91dfb592550fab1f8fa46f22d1`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c597d09c86e9140ff3a6206586deeb32f1f881877d6e5dceb0c93fcb713553c`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 53.0 MB (52951596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811263b992ce492156c6eaf9e0bddfd553455e9992d1938af20668a6a1eef2e8`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e41e0dc02a6d8ae7b635307a2c32b5d27a0cccf907c235ff5cc45af013f4562`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beab4a879c277b60d38a99ab9070ea41df3803b1363f3153e3316f41361e29d8`  
		Last Modified: Fri, 13 Nov 2026 02:08:54 GMT  
		Size: 3.6 MB (3626243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5583df4a674bc32cd3fea377e8c6c60b53e4ad6c0e8e8c81089f6c1937e6f3b`  
		Last Modified: Fri, 13 Nov 2026 02:08:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b434e42f12a0a957eaf8d048adb646e3358a25a80aec79b521cb78c22c339b`  
		Last Modified: Fri, 13 Nov 2026 02:08:54 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d6a6e410e55ce72f40fa4853620af0c4168df261b81101c948ef335e8f2cdc`  
		Last Modified: Fri, 13 Nov 2026 02:08:55 GMT  
		Size: 12.1 MB (12122792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ddf74cb6ecaa561be95d250d4b0f3c4c0eb1b153b65f032d7cf6fabd0276f0`  
		Last Modified: Fri, 13 Nov 2026 02:08:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:eb1079f739c0f85a5c251ed5d4be3e91e72fe5baf4dd7828a5c9489f380ec5b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f71826d58bb0aa6d809aeda06978aa1bdeeb408284c7e2835285a6514782cc`

```dockerfile
```

-	Layers:
	-	`sha256:248092743cae719f992293276bb5b5c0217176cb59ba39a00f5214b116514719`  
		Last Modified: Fri, 13 Nov 2026 02:08:54 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2a5ac6454c1c709af30a4e4759e3851ee6d54edff4cd124ef379af12e9e402de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128302698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137d9125783217492ff3adcb9711a7349fbb94a22f092c71fac5bf184bf1eabd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:55 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:53 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:53 GMT
CMD []
# Fri, 13 Nov 2026 02:08:40 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 13 Nov 2026 02:08:40 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 13 Nov 2026 02:08:41 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 02:08:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 13 Nov 2026 02:08:41 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 13 Nov 2026 02:08:41 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 13 Nov 2026 02:08:41 GMT
USER rootless
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edf05a659f032a3662b70445c0fac1b903d5ca65d7245996e1a8d25801bd503`  
		Last Modified: Fri, 13 Nov 2026 00:29:43 GMT  
		Size: 8.3 MB (8264999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58183dae846be99cd9ca2a8a1778ad543bc8abe7c6ba2e494fdf36b06e234e`  
		Last Modified: Fri, 13 Nov 2026 00:29:42 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d7cc11cbc1daaf8fff6dbf34189f786437c53afa92882b04a30fb24526804c`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 18.7 MB (18664064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b3518e4792296852f72ae2cfcb09990e24352d04315c9ff96238791ded5123`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 21.7 MB (21734884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3073bea536fd2296f17e7d6398f1ce1cff4e6c561fc3b0b84cb60fa02f8cc7ed`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 10.7 MB (10735433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65a8fac537520208315c8750ded758bb09a4596ad138338e6548c5a6cdecd7`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786fa6a3d2b8fc4464def3df9d67019c0e980f40eacc95b37e0637fd4bc3df8`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3f56e6e2388d203292919e0ec06c04b887fef105dacda716b7658e39b2f85`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896192407a6b5a0ebe5e028853394e5c6b1641f6fe52e2513b5877cf6bfb9163`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.7 MB (1744479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934f8c1a335b522e196aa8e481dc97e040c871dfdb88161266c08e7221f1a891`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d30c29fe30991cc4622f6641c0d9f21cb0232f34ad5f3f9918fe7f2202b0397`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c5f05a4e54ed33a83144c0a5e50e89cf8fff7928768aa96b24614e3a5d3b91`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 48.0 MB (48001605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28e5b1bcf23e61aba1bea2cc2ffdb7e0d85fce1248a2fa6d6e605756c921048`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65ea3f361de975153fad005d8a389ba2d211d4f93689f0651c3f0401d83edbe`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7406b53a18b0d75f29eabf9c1b483d80ab04ca7bb289d6ec561edbc358b0ff`  
		Last Modified: Fri, 13 Nov 2026 02:08:46 GMT  
		Size: 3.6 MB (3611253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb492ff02c39787c1759ddb514c1a48024861c6e0ec7e2919f87eb29ad593548`  
		Last Modified: Fri, 13 Nov 2026 02:08:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e265811677e2c668c420dea43b0b0ad8c75a78dd065c9e926d8a0d39e14293`  
		Last Modified: Fri, 13 Nov 2026 02:08:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02050a70afc04662e34fbb5052b226db935db4aaa647e8262093422696c96ad2`  
		Last Modified: Fri, 13 Nov 2026 02:08:47 GMT  
		Size: 11.3 MB (11255540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6abef4ce60e963d00d6f9400241abe218f36851f813da21a1be7b773d0cfbe`  
		Last Modified: Fri, 13 Nov 2026 02:08:47 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:f1485a465e60be00e2794d626e8d1a58a71dd9b74c353a890dd7c1a8e481ca51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af75d70ee805f75c26ee32b0bb0ea3a866e986a92d65a20dcc77d9973a617160`

```dockerfile
```

-	Layers:
	-	`sha256:0d876df3a8c30801c792baddf4ad1eba19b4bbcab35dccd59418545578f12409`  
		Last Modified: Fri, 13 Nov 2026 02:08:46 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:7bf70dcb85c822e3fa6f2d332143e474b99147b9d7b39102b0cfe8b04a7dd61b
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
$ docker pull docker@sha256:9d337aaf171682751be04d67c15d880d6a95c6fd44cb8e12043f605012e5e654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122760806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2874e9600b01dfd3058420967f0b5db845cb4ee91aa40235119525a3ca70c290`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:56 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:57 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:57 GMT
CMD []
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf08768f55e377012d124a45615a4f6f0f0a53353e5274c9a8ed05c2be51bd`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54e303dd7cf73393a4b31e9d7c67b6622f5a60f32b3184e64ad911f1e0f649`  
		Last Modified: Fri, 13 Nov 2026 00:29:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f376ae4bbd7a8cc6761fc1997f7fcf717311d5c63525a85978d1315a6eb25018`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 20.3 MB (20275620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deee5812065b72a8ed40d5cb093ac8a8fb738c0eb143008820f9d5a7aaa2dd4`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 24.0 MB (24049059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77dc40271440536b4a5622c7b5fd4297b4070509bbddb2f7f6af78834ffd88e`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 11.8 MB (11839928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59fb855acd70011d84cd768d6e9c72cc1ec6b1cbc5c53a439556743e32a0cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec659388e45eeaf34e65125c581ab77fa0f8f874c7cc482580a474153a61624`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde434102102dd5171de23ff28f6188f5ea6c5e63606d527b897ee708363f54`  
		Last Modified: Fri, 13 Nov 2026 00:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bf930170a534a5012c6eda99524d542d955810274d9abea24e3fe2fcbc8101`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.5 MB (1497343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c82fc156b8b9986262f8c81ac4f1dceffb3741d9bcec9f057bc8c84a990ce83`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 81.0 KB (81049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7258fa88e319800c27fa6f4c9ee7e32c96eb9d91dfb592550fab1f8fa46f22d1`  
		Last Modified: Fri, 13 Nov 2026 01:09:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c597d09c86e9140ff3a6206586deeb32f1f881877d6e5dceb0c93fcb713553c`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 53.0 MB (52951596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811263b992ce492156c6eaf9e0bddfd553455e9992d1938af20668a6a1eef2e8`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e41e0dc02a6d8ae7b635307a2c32b5d27a0cccf907c235ff5cc45af013f4562`  
		Last Modified: Fri, 13 Nov 2026 01:09:08 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:3d028afeea43a3e118ce882e8f667670cf8cf2952628111b0e2c40d2e7d2ccf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d55e64f693df9d5b0d2a41f51c29af2526be299e3bda02166a1b5ed023399a`

```dockerfile
```

-	Layers:
	-	`sha256:89adb7aada55039633e503cedccd18bf009a288d9b7a7cdcc12f7f3eb6944b3f`  
		Last Modified: Fri, 13 Nov 2026 01:09:06 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:d6da4f1861884dba98044ba947923875832933e6d3e410e6559c3d35c7c699d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115496911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebc367fa867b69c39e0af65d78fe410541e3438b5d0b536295c19a39fd0e7a0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:30:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:30:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:30:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:30:25 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:30:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:30:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:30:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:30:30 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:30:30 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:35 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:36 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:36 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:39 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:39 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:39 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:39 GMT
CMD []
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88080670508a8184afb1a25917fced74c5ab56fc0396dde6741d9b885faf0168`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 8.1 MB (8107987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f560dd5ca034f62bdf1849f3d85caa9af7d587d41bd7a32a0cd1c500895c52f`  
		Last Modified: Fri, 13 Nov 2026 00:30:36 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2443ac28deb139ad4fd9d8bfbb9ee5be665403f35839a7bf1962dde5795e7fa`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 18.8 MB (18823225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c172003e5f6463e23c75590e9e870bc9e906f8ffacfabc999991d0ac2b279f7`  
		Last Modified: Fri, 13 Nov 2026 00:30:37 GMT  
		Size: 22.7 MB (22650806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d105a3eacb7b050340923841707f3a328cb419584eb2f8516394b335a1346cf`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 11.2 MB (11246003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ac68f28964422b4b0947d872d68a25e46412ba568c9462c2a6446e8e053bb`  
		Last Modified: Fri, 13 Nov 2026 00:30:38 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976a024d4f08968b23646b74ed0a92ac481ac3738216c7227fa728f8e3ac67ab`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0a2f41132d5e2b2a57297e2e473f6d409c3051590bf8d5bd6ef1cb0263866d`  
		Last Modified: Fri, 13 Nov 2026 00:30:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc1bc9e40504793dc08fca1ab4aaa8595430c524dfe91be56ed64dd5951caaf`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 1.5 MB (1498752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9aa7f9ce1efcc2ae053ebf80c50870c74f1548259668e847730e2966bd18c8`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 79.7 KB (79749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f5570796da6ac64b1ac242d6720c0dccacaa1aa5e66c01604b407fa0458520`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1839b5f1ecae03fd9cbe9e8c3614e73d215d2ae6259483ffd76d604bd6ab8e23`  
		Last Modified: Fri, 13 Nov 2026 01:08:50 GMT  
		Size: 49.5 MB (49523831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059d449a857815496509d3f042b3baf805b8ce6a2122f8c9888cf68751f962c0`  
		Last Modified: Fri, 13 Nov 2026 01:08:49 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e32dcbefe1c272f8acb6612634fa7904c1dadca6f8129bac959ef75fab0a397`  
		Last Modified: Fri, 13 Nov 2026 01:08:49 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:031fceb8357e69e5ac41a42214705b739b7546dc2361af86a9d8665528b2e81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455ff8fd2abf225aaa56c2fd66ee31205ebfb9df1d7e13bc452dc918c00259a7`

```dockerfile
```

-	Layers:
	-	`sha256:26e146bf35a11d829a0fd8df616dd4847ff82fddad6f0cdd7b2b548caa74297e`  
		Last Modified: Fri, 13 Nov 2026 01:08:48 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:c115b0f3d2a277eaa87fed37ad90438e1b69b058c35b5ed70c73adbbacd2abec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114178001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75347836af5a53adf433508a16e768b6d40fbe63d4697c13c6afc3f801018d55`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:47 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:51 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:59 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:09:00 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:09:00 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:09:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:09:03 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:09:03 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:09:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:09:03 GMT
CMD []
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07c11a45e9d44709e208d9c84386b7ad7f75235e30f1a0a00e554b7feb4e5db`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 7.4 MB (7403609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e41d38b92b25e039e5e93c06a4aa375a2efa9e2233f49f4ffa525e6f5482af1`  
		Last Modified: Fri, 13 Nov 2026 00:29:57 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8fbe8930233322856598da23bde7ced066e77aa53ddee1fad8548ed36e4bbb`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d3591c9924ddde4a181499494eef8c8787b54f785085cb4f4097cd66dc330d`  
		Last Modified: Fri, 13 Nov 2026 00:29:58 GMT  
		Size: 22.6 MB (22629187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286f1f909c5ab08745cdad8d7246552bed1b34bb9e0a2aa5c9df2196d3264cd0`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 11.2 MB (11234465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dfbe6aff862f322b18cb6bfa1d9f8eb86ae0f33947bc17cae9b194ead15b54`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2f88c62d378e1fe21d03a60c5f6c3ee27a531d2ef305610640a10c6c6350d6`  
		Last Modified: Fri, 13 Nov 2026 00:29:59 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fd16a29d090a2653d572d7ffd580367930adb431b3ab8cb6841d0306482bc`  
		Last Modified: Fri, 13 Nov 2026 00:30:00 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb6308a632790596cb676bb9ff64a2f699f26c339fe686d4057a208239db9c`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 1.4 MB (1384240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca1f966faa182f6a6928ff0103f6750d67e11b8ddbc143c9c3f51149a2631b9`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 76.1 KB (76119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b448c949dcece85eaf2a1b3c89c12ddc83cc90c0db07cfc05994d6297c262c56`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ece0ccb2858e1206fcf9fdb84da35bf4c43665c56e01fb240715dcb435a80dc`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 49.4 MB (49364937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9d4d8a77d2799ce44cbdadcb1ca05c59b8f70c4640f6920301883a91accbf6`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26979dc91874db095847d62a6d48ed5b0442e0b8ed24981eb929215fb90a4804`  
		Last Modified: Fri, 13 Nov 2026 01:09:13 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:657b76a2be5a10f283a20173c57b0499e92a21b3a5e96aefbed68285e5110616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c56855810f86d2e259de2a51af39a3cc9090e065f958b1b29ae574fe4171671`

```dockerfile
```

-	Layers:
	-	`sha256:791f6bb10f946d43cd5524ace8d56aeacb7e9bd2b5cd99cdfbdd8ba4da1511d5`  
		Last Modified: Fri, 13 Nov 2026 01:09:12 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ad3c03cf98cb790e69b7aedd29d0406646945f2b2bc01910efddecda0db5d24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113434561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1606b676676452e40aec52cb0531b01cc87b74ad63d9d783d90e06f1585a4c09`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 00:29:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 13 Nov 2026 00:29:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:29:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 13 Nov 2026 00:29:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:29:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 13 Nov 2026 00:29:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:29:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 13 Nov 2026 00:29:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 13 Nov 2026 00:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Nov 2026 00:29:55 GMT
CMD ["sh"]
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 13 Nov 2026 01:08:50 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 13 Nov 2026 01:08:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 01:08:53 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Nov 2026 01:08:53 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 13 Nov 2026 01:08:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Nov 2026 01:08:53 GMT
CMD []
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edf05a659f032a3662b70445c0fac1b903d5ca65d7245996e1a8d25801bd503`  
		Last Modified: Fri, 13 Nov 2026 00:29:43 GMT  
		Size: 8.3 MB (8264999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58183dae846be99cd9ca2a8a1778ad543bc8abe7c6ba2e494fdf36b06e234e`  
		Last Modified: Fri, 13 Nov 2026 00:29:42 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d7cc11cbc1daaf8fff6dbf34189f786437c53afa92882b04a30fb24526804c`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 18.7 MB (18664064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b3518e4792296852f72ae2cfcb09990e24352d04315c9ff96238791ded5123`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 21.7 MB (21734884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3073bea536fd2296f17e7d6398f1ce1cff4e6c561fc3b0b84cb60fa02f8cc7ed`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 10.7 MB (10735433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65a8fac537520208315c8750ded758bb09a4596ad138338e6548c5a6cdecd7`  
		Last Modified: Fri, 13 Nov 2026 00:30:01 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786fa6a3d2b8fc4464def3df9d67019c0e980f40eacc95b37e0637fd4bc3df8`  
		Last Modified: Fri, 13 Nov 2026 00:30:02 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3f56e6e2388d203292919e0ec06c04b887fef105dacda716b7658e39b2f85`  
		Last Modified: Fri, 13 Nov 2026 00:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896192407a6b5a0ebe5e028853394e5c6b1641f6fe52e2513b5877cf6bfb9163`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.7 MB (1744479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934f8c1a335b522e196aa8e481dc97e040c871dfdb88161266c08e7221f1a891`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d30c29fe30991cc4622f6641c0d9f21cb0232f34ad5f3f9918fe7f2202b0397`  
		Last Modified: Fri, 13 Nov 2026 01:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c5f05a4e54ed33a83144c0a5e50e89cf8fff7928768aa96b24614e3a5d3b91`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 48.0 MB (48001605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28e5b1bcf23e61aba1bea2cc2ffdb7e0d85fce1248a2fa6d6e605756c921048`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65ea3f361de975153fad005d8a389ba2d211d4f93689f0651c3f0401d83edbe`  
		Last Modified: Fri, 13 Nov 2026 01:09:03 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:91a2d06a39b995c90221bfbe44f82d856b5edbe7f474bc7c8fab59250094b713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667d53afc3760fa21711c846ddbd07280e251ca17504a607b147a178b8f497e6`

```dockerfile
```

-	Layers:
	-	`sha256:885b1b52acb6f7077d4714f896c458a9ca5157430dae45a589d6bc7ac659568e`  
		Last Modified: Fri, 13 Nov 2026 01:09:01 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:dc20a0cbff3c3699f86d8059595aeed14b5a7390a59ad63f1636a3c06a6cb019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33822; amd64

```console
$ docker pull docker@sha256:9f8ea739bcbcf57bc14a9b67679e8180e6da34face18d6a9ee21ed9327756da0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466154215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2ca1c12cc3dead6fc6e01d5354f7ac970ac11c81177dc145e348289fa15837`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Fri, 13 Nov 2026 00:35:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:36:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:36:50 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:36:53 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:37:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:37:24 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:37:35 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:37:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:37:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:37:38 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:37:46 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b642ad20f2fa37081a9fe18d65b1ab8975acac7c68e1b93e1a3fb499bb2498`  
		Last Modified: Fri, 13 Nov 2026 00:37:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7490ace18240ea46815d0c4d3c61065388d0b517d2cfdd03e5b5c4bc4321d4ad`  
		Last Modified: Fri, 13 Nov 2026 00:37:55 GMT  
		Size: 365.3 KB (365304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b07b147eef7d8d05b8a6182fa2cb969cc4bf41cf558207cc7202964067e93a2`  
		Last Modified: Fri, 13 Nov 2026 00:37:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d49beb22f788d0d0c976aa91437c0ec2782a5aad008ee788e4e9612d946a0e`  
		Last Modified: Fri, 13 Nov 2026 00:37:54 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b343c4f95cc9b4f65acf10fe5273c9574669b887cf9555fd6bfe94f639f217f0`  
		Last Modified: Fri, 13 Nov 2026 00:37:56 GMT  
		Size: 20.9 MB (20936456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659fbe852477a0fb7faa8ce71383e1da6b28a63a8b6fd3657ed50069e4b11470`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9b2e0a93b1c33bff8bde180b7ef5469fa9a03ee4b3992378f6f4164e5d3e4e`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad7b9e27fc1a17e6e90fd2b8e258e4fa86fd451a7744eb193f64c7f3614c7f7`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ded71cf12d5798b68905b74e610c9d9fad7a9b7309a1c487e31d12e01599398`  
		Last Modified: Fri, 13 Nov 2026 00:38:10 GMT  
		Size: 25.0 MB (25006271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862385d1102cb12e5a441d9358732fe5eadda6c24328c3aa66b7714af46de93`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95509bc2c647e626f6e1d1d4a88bec5ebcc939ec79d80d1e80c9a14341ac176e`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c164a4e2cf8f6d96ea492fe94e857ad6324c05be07e7e3db0d2148cfdc567d9`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1baac9ad6e262530741f7f1f102925b668d6c25cc25bf2b1399ad3c0ea3e2c`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 12.5 MB (12503727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull docker@sha256:54a9d6e37dc1b1e5722a015ffd3c5764af0de4eded79a31902816286a5cb0bbb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2304971608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f870e1df1c9d4f9a888ca3a21fc0611a2ac118f06c3ba07ab82cdec031088b34`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Fri, 13 Nov 2026 00:39:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:41:25 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:41:27 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:41:29 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:42:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:08 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:42:10 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:42:12 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:42:51 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:42:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:42:56 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:43:18 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9791a4deac2d4fc5a57091fdd10f6f34cb9e26776785130dcf1878b05ac8c94`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458970e571a66a3f4e2276abc2a1124674809db8642e2ee5c762316786fe2e27`  
		Last Modified: Fri, 13 Nov 2026 00:43:29 GMT  
		Size: 345.6 KB (345625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a257809a4dad6fcd6333da68b74dbe88f0396b9ca74a9f0c1f08d7f8735151e0`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7dbeb66c7dc15575c7535538b779f6fb50624e25e683696553fb7903864eff`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39517584f51f08c69a66c8e9e36c28614b696a690adfb33fd44d8696387a3f69`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 20.9 MB (20878292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cf9845cd84893d1b9950bd9826337abff8b4dec3b99e6c6709b8c25e02ee3`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210e190d3ce36f53809d2d3139725c8ec10a7c6e957ca5b0553079ba595a6be`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e52004c58f19f972fb6720fde83aa4574729921ad6a02ea9aca968b35f66ae`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe6529878ee00df3e29d8cbbb704f65810ce89b0ed08808a77658f1ee61bafd`  
		Last Modified: Fri, 13 Nov 2026 00:43:44 GMT  
		Size: 25.0 MB (24954306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7dad5d7b27e44b17f33f6c36f3f28acbbdd75799a54d518318a6d177338253`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fc33515a5de65bef0382584ce4153d4c13cd67f2dc2325ce1f5785e974122`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fb9082e0d149b1506ab89d2a708bf0a2fd08f7d1f36b0f5f0f2ed89946bcf4`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67029b172c37e639905c04999029aa112b0cb29a82cc9cd36a3310d57527f1d`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 12.4 MB (12433820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:d34d97b562c97b2253167abff8576d7b92d7da34c251958309c66e2f33863ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull docker@sha256:54a9d6e37dc1b1e5722a015ffd3c5764af0de4eded79a31902816286a5cb0bbb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2304971608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f870e1df1c9d4f9a888ca3a21fc0611a2ac118f06c3ba07ab82cdec031088b34`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Fri, 13 Nov 2026 00:39:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:41:25 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:41:27 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:41:29 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:42:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:08 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:42:10 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:42:12 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:42:51 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:42:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:42:56 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:43:18 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9791a4deac2d4fc5a57091fdd10f6f34cb9e26776785130dcf1878b05ac8c94`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458970e571a66a3f4e2276abc2a1124674809db8642e2ee5c762316786fe2e27`  
		Last Modified: Fri, 13 Nov 2026 00:43:29 GMT  
		Size: 345.6 KB (345625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a257809a4dad6fcd6333da68b74dbe88f0396b9ca74a9f0c1f08d7f8735151e0`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7dbeb66c7dc15575c7535538b779f6fb50624e25e683696553fb7903864eff`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39517584f51f08c69a66c8e9e36c28614b696a690adfb33fd44d8696387a3f69`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 20.9 MB (20878292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cf9845cd84893d1b9950bd9826337abff8b4dec3b99e6c6709b8c25e02ee3`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210e190d3ce36f53809d2d3139725c8ec10a7c6e957ca5b0553079ba595a6be`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e52004c58f19f972fb6720fde83aa4574729921ad6a02ea9aca968b35f66ae`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe6529878ee00df3e29d8cbbb704f65810ce89b0ed08808a77658f1ee61bafd`  
		Last Modified: Fri, 13 Nov 2026 00:43:44 GMT  
		Size: 25.0 MB (24954306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7dad5d7b27e44b17f33f6c36f3f28acbbdd75799a54d518318a6d177338253`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fc33515a5de65bef0382584ce4153d4c13cd67f2dc2325ce1f5785e974122`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fb9082e0d149b1506ab89d2a708bf0a2fd08f7d1f36b0f5f0f2ed89946bcf4`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67029b172c37e639905c04999029aa112b0cb29a82cc9cd36a3310d57527f1d`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 12.4 MB (12433820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:a544411d8ec4f2cb64ad43a6da4ab53b60552f199a0c0c1ae87759fc0be780ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull docker@sha256:9f8ea739bcbcf57bc14a9b67679e8180e6da34face18d6a9ee21ed9327756da0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466154215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2ca1c12cc3dead6fc6e01d5354f7ac970ac11c81177dc145e348289fa15837`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Fri, 13 Nov 2026 00:35:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:36:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:36:50 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:36:53 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:37:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:37:24 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:37:35 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:37:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:37:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:37:38 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:37:46 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b642ad20f2fa37081a9fe18d65b1ab8975acac7c68e1b93e1a3fb499bb2498`  
		Last Modified: Fri, 13 Nov 2026 00:37:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7490ace18240ea46815d0c4d3c61065388d0b517d2cfdd03e5b5c4bc4321d4ad`  
		Last Modified: Fri, 13 Nov 2026 00:37:55 GMT  
		Size: 365.3 KB (365304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b07b147eef7d8d05b8a6182fa2cb969cc4bf41cf558207cc7202964067e93a2`  
		Last Modified: Fri, 13 Nov 2026 00:37:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d49beb22f788d0d0c976aa91437c0ec2782a5aad008ee788e4e9612d946a0e`  
		Last Modified: Fri, 13 Nov 2026 00:37:54 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b343c4f95cc9b4f65acf10fe5273c9574669b887cf9555fd6bfe94f639f217f0`  
		Last Modified: Fri, 13 Nov 2026 00:37:56 GMT  
		Size: 20.9 MB (20936456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659fbe852477a0fb7faa8ce71383e1da6b28a63a8b6fd3657ed50069e4b11470`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9b2e0a93b1c33bff8bde180b7ef5469fa9a03ee4b3992378f6f4164e5d3e4e`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad7b9e27fc1a17e6e90fd2b8e258e4fa86fd451a7744eb193f64c7f3614c7f7`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ded71cf12d5798b68905b74e610c9d9fad7a9b7309a1c487e31d12e01599398`  
		Last Modified: Fri, 13 Nov 2026 00:38:10 GMT  
		Size: 25.0 MB (25006271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862385d1102cb12e5a441d9358732fe5eadda6c24328c3aa66b7714af46de93`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95509bc2c647e626f6e1d1d4a88bec5ebcc939ec79d80d1e80c9a14341ac176e`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c164a4e2cf8f6d96ea492fe94e857ad6324c05be07e7e3db0d2148cfdc567d9`  
		Last Modified: Fri, 13 Nov 2026 00:37:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1baac9ad6e262530741f7f1f102925b668d6c25cc25bf2b1399ad3c0ea3e2c`  
		Last Modified: Fri, 13 Nov 2026 00:37:53 GMT  
		Size: 12.5 MB (12503727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
