<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.7`](#kapacitor17)
-	[`kapacitor:1.7-alpine`](#kapacitor17-alpine)
-	[`kapacitor:1.7.7`](#kapacitor177)
-	[`kapacitor:1.7.7-alpine`](#kapacitor177-alpine)
-	[`kapacitor:1.8`](#kapacitor18)
-	[`kapacitor:1.8-alpine`](#kapacitor18-alpine)
-	[`kapacitor:1.8.6`](#kapacitor186)
-	[`kapacitor:1.8.6-alpine`](#kapacitor186-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.7`

```console
$ docker pull kapacitor@sha256:78b54b3281c73e8466ece51712e4d1047fe3ff11b9a3a580439d8440bb25eaa1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:5937bef32bce95ab99d8b0191ec1b3f97c7764c5af0b038f8e79b7ad43ee3cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161750337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17dde31ec2d32698d1450f4f79a6cf396cf357fdecbf0a75c7e84b7fd0b25d4a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:26:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 02 Jul 2026 05:26:22 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 02 Jul 2026 05:26:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 02 Jul 2026 05:26:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 02 Jul 2026 05:26:22 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 02 Jul 2026 05:26:22 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 02 Jul 2026 05:26:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 05:26:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 05:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6b7e7972ce6ea20796c34adbba02cab013efc61b6f31cfe4163e003611aff5`  
		Last Modified: Thu, 02 Jul 2026 02:11:54 GMT  
		Size: 7.1 MB (7065277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79e0f89624a7a36929182294e3837737c82b879fdba10d1da22d04fab24f714`  
		Last Modified: Thu, 02 Jul 2026 05:26:37 GMT  
		Size: 52.9 MB (52894405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8726ea273f60dca637501103c355642692048574ea3f3ff6825d58f014eab317`  
		Last Modified: Thu, 02 Jul 2026 05:26:38 GMT  
		Size: 72.1 MB (72051252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7efe91cb4f54dcaa97f3aee32c4377eb0775f9a2e292eff5b095bbdb0d7e060`  
		Last Modified: Thu, 02 Jul 2026 05:26:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1feb60168b3686068508c9bc6010ec74a2a4eaf0d27fc4890dae2cd91c33f62f`  
		Last Modified: Thu, 02 Jul 2026 05:26:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:132ac8fc219e2704ff183ebd18c6306ff33949e6ee94c6ef0aec0c51d7b3e14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88ffea9f7850656b804da89e89a28e1c30465cc38d0719a2099ae7eac9030fa`

```dockerfile
```

-	Layers:
	-	`sha256:6e79903bacc71a0c2bd44b9fc415613855d6ba50f619a79f45cf7d61ce9ae507`  
		Last Modified: Thu, 02 Jul 2026 05:26:35 GMT  
		Size: 3.7 MB (3700416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0622db78bad0ea2c27e6dd3689160f125578f0452af743877133423f4f24c07a`  
		Last Modified: Thu, 02 Jul 2026 05:26:34 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:a5cb6b521cc568f4c21772b1ebd53316ca29f3df41c198f67cff43bfa7e63a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154516001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b491d777392e936d2a0b5112b2139aad42db61b31b01b5afe844a097623d5e18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:26:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 02 Jul 2026 05:26:47 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 02 Jul 2026 05:26:47 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 02 Jul 2026 05:26:47 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 02 Jul 2026 05:26:47 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 02 Jul 2026 05:26:47 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 02 Jul 2026 05:26:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 05:26:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 05:26:47 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d3f25c890d2750fc9e944989d89aaf654ceb542f012b4b9e34979fbdbcf79d`  
		Last Modified: Thu, 02 Jul 2026 02:11:51 GMT  
		Size: 7.0 MB (7019663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113d092fabf81d67887af0c55b8f7b75df2874bdd783a21c546ca39caeca2209`  
		Last Modified: Thu, 02 Jul 2026 05:27:02 GMT  
		Size: 52.1 MB (52068811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761ca4e428ae71b4e89082e9dfd06e9d07a731c6d506de0a2a1940c621085046`  
		Last Modified: Thu, 02 Jul 2026 05:27:03 GMT  
		Size: 67.8 MB (67813822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13120666b7dceefaa05a76b10ebeb67e154c09e08e87e5491ec55afa764d82e9`  
		Last Modified: Thu, 02 Jul 2026 05:27:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e10ed9cdd6c23a2141594c3aa7f9f93991616830e30f5deb0702966d60660f1`  
		Last Modified: Thu, 02 Jul 2026 05:27:00 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:a7c5cf9b9473e757325a1ecf9d466943954c4b34c2e551b568eef0a4166f4d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c34a0be85550359e82d8b19d35a87bd2567ea87bcf90a06e9633a8b9a65ae1`

```dockerfile
```

-	Layers:
	-	`sha256:9fe6e2a679fc0146b66a759fc8fa687f346bf047232082a5857321d818261be2`  
		Last Modified: Thu, 02 Jul 2026 05:27:00 GMT  
		Size: 3.7 MB (3699878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:628978ff34aaea31def1c7a227e8f7cb584174f8c5cbcfe210e147ef760980b2`  
		Last Modified: Thu, 02 Jul 2026 05:26:59 GMT  
		Size: 14.8 KB (14811 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7-alpine`

```console
$ docker pull kapacitor@sha256:d413cc02810588e8c459ea5be842408894d80457fd6bf3d17c76054bd4fbeba6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7dd27bf99a95c88a227895984474aed5a5acd9e005ee8c4ca5d230c5adce430d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75904570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3afb14c37dc00503a0e3d186c16cca67e6e6cf79f380e0768c83b473ab21723`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:26 GMT
ADD alpine-minirootfs-3.20.10-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:26 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:23:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 17 Apr 2026 00:29:59 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 17 Apr 2026 00:30:05 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 17 Apr 2026 00:30:05 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 17 Apr 2026 00:30:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:30:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:25f1d6b1951ac8eb3740558fe94cb83d377bdadf95fd9f98b50d2e1b96130471`  
		Last Modified: Thu, 16 Apr 2026 23:53:31 GMT  
		Size: 3.6 MB (3630321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16e69077797f1a90c5b8946765d6547bd0bbe62c5edf87016fc687d8691b62a`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d26afc56a247d157e5130fafb0c3e1596d90cb798a74bcd18085a2e60f5e83`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 290.8 KB (290778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62dd12f58262d16aa469c538fe54969fbd41faab46b0c454ce33250afdb5cf9`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 72.0 MB (71982697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55baa52346461779ddbbe16b9bcbe892cdd293e258d25759833687ed332ec26f`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b697b2c16e0d0a74ce9cec7f52e70573e6c357c63cea20d805fa64c4bd2a984c`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:c43b268a38b55473ac82d1c64d91b2abf473cfd8498dadaf61b7b610b7a0a384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.5 KB (381476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c6c8a59270545d801e93fbec290d5e3507d4c0ef7d1b17af7ac1a44b9f91e2`

```dockerfile
```

-	Layers:
	-	`sha256:5e93c3927eafe526f00d32bfce704d302d02d4cbe2d4104d9f70f6c2132c0cee`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 365.8 KB (365835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d021a80b9241fd4aceb41e3907131caf439210759adcdaa248d89c1e12091d7`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7`

```console
$ docker pull kapacitor@sha256:78b54b3281c73e8466ece51712e4d1047fe3ff11b9a3a580439d8440bb25eaa1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:5937bef32bce95ab99d8b0191ec1b3f97c7764c5af0b038f8e79b7ad43ee3cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161750337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17dde31ec2d32698d1450f4f79a6cf396cf357fdecbf0a75c7e84b7fd0b25d4a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:26:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 02 Jul 2026 05:26:22 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 02 Jul 2026 05:26:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 02 Jul 2026 05:26:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 02 Jul 2026 05:26:22 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 02 Jul 2026 05:26:22 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 02 Jul 2026 05:26:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 05:26:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 05:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6b7e7972ce6ea20796c34adbba02cab013efc61b6f31cfe4163e003611aff5`  
		Last Modified: Thu, 02 Jul 2026 02:11:54 GMT  
		Size: 7.1 MB (7065277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79e0f89624a7a36929182294e3837737c82b879fdba10d1da22d04fab24f714`  
		Last Modified: Thu, 02 Jul 2026 05:26:37 GMT  
		Size: 52.9 MB (52894405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8726ea273f60dca637501103c355642692048574ea3f3ff6825d58f014eab317`  
		Last Modified: Thu, 02 Jul 2026 05:26:38 GMT  
		Size: 72.1 MB (72051252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7efe91cb4f54dcaa97f3aee32c4377eb0775f9a2e292eff5b095bbdb0d7e060`  
		Last Modified: Thu, 02 Jul 2026 05:26:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1feb60168b3686068508c9bc6010ec74a2a4eaf0d27fc4890dae2cd91c33f62f`  
		Last Modified: Thu, 02 Jul 2026 05:26:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:132ac8fc219e2704ff183ebd18c6306ff33949e6ee94c6ef0aec0c51d7b3e14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88ffea9f7850656b804da89e89a28e1c30465cc38d0719a2099ae7eac9030fa`

```dockerfile
```

-	Layers:
	-	`sha256:6e79903bacc71a0c2bd44b9fc415613855d6ba50f619a79f45cf7d61ce9ae507`  
		Last Modified: Thu, 02 Jul 2026 05:26:35 GMT  
		Size: 3.7 MB (3700416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0622db78bad0ea2c27e6dd3689160f125578f0452af743877133423f4f24c07a`  
		Last Modified: Thu, 02 Jul 2026 05:26:34 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:a5cb6b521cc568f4c21772b1ebd53316ca29f3df41c198f67cff43bfa7e63a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154516001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b491d777392e936d2a0b5112b2139aad42db61b31b01b5afe844a097623d5e18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:26:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 02 Jul 2026 05:26:47 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 02 Jul 2026 05:26:47 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 02 Jul 2026 05:26:47 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 02 Jul 2026 05:26:47 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 02 Jul 2026 05:26:47 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 02 Jul 2026 05:26:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 05:26:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 05:26:47 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d3f25c890d2750fc9e944989d89aaf654ceb542f012b4b9e34979fbdbcf79d`  
		Last Modified: Thu, 02 Jul 2026 02:11:51 GMT  
		Size: 7.0 MB (7019663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113d092fabf81d67887af0c55b8f7b75df2874bdd783a21c546ca39caeca2209`  
		Last Modified: Thu, 02 Jul 2026 05:27:02 GMT  
		Size: 52.1 MB (52068811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761ca4e428ae71b4e89082e9dfd06e9d07a731c6d506de0a2a1940c621085046`  
		Last Modified: Thu, 02 Jul 2026 05:27:03 GMT  
		Size: 67.8 MB (67813822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13120666b7dceefaa05a76b10ebeb67e154c09e08e87e5491ec55afa764d82e9`  
		Last Modified: Thu, 02 Jul 2026 05:27:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e10ed9cdd6c23a2141594c3aa7f9f93991616830e30f5deb0702966d60660f1`  
		Last Modified: Thu, 02 Jul 2026 05:27:00 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:a7c5cf9b9473e757325a1ecf9d466943954c4b34c2e551b568eef0a4166f4d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c34a0be85550359e82d8b19d35a87bd2567ea87bcf90a06e9633a8b9a65ae1`

```dockerfile
```

-	Layers:
	-	`sha256:9fe6e2a679fc0146b66a759fc8fa687f346bf047232082a5857321d818261be2`  
		Last Modified: Thu, 02 Jul 2026 05:27:00 GMT  
		Size: 3.7 MB (3699878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:628978ff34aaea31def1c7a227e8f7cb584174f8c5cbcfe210e147ef760980b2`  
		Last Modified: Thu, 02 Jul 2026 05:26:59 GMT  
		Size: 14.8 KB (14811 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7-alpine`

```console
$ docker pull kapacitor@sha256:d413cc02810588e8c459ea5be842408894d80457fd6bf3d17c76054bd4fbeba6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7dd27bf99a95c88a227895984474aed5a5acd9e005ee8c4ca5d230c5adce430d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75904570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3afb14c37dc00503a0e3d186c16cca67e6e6cf79f380e0768c83b473ab21723`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:26 GMT
ADD alpine-minirootfs-3.20.10-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:26 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:23:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 17 Apr 2026 00:29:59 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 17 Apr 2026 00:30:05 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 17 Apr 2026 00:30:05 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 17 Apr 2026 00:30:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:30:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:25f1d6b1951ac8eb3740558fe94cb83d377bdadf95fd9f98b50d2e1b96130471`  
		Last Modified: Thu, 16 Apr 2026 23:53:31 GMT  
		Size: 3.6 MB (3630321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16e69077797f1a90c5b8946765d6547bd0bbe62c5edf87016fc687d8691b62a`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d26afc56a247d157e5130fafb0c3e1596d90cb798a74bcd18085a2e60f5e83`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 290.8 KB (290778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62dd12f58262d16aa469c538fe54969fbd41faab46b0c454ce33250afdb5cf9`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 72.0 MB (71982697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55baa52346461779ddbbe16b9bcbe892cdd293e258d25759833687ed332ec26f`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b697b2c16e0d0a74ce9cec7f52e70573e6c357c63cea20d805fa64c4bd2a984c`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:c43b268a38b55473ac82d1c64d91b2abf473cfd8498dadaf61b7b610b7a0a384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.5 KB (381476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c6c8a59270545d801e93fbec290d5e3507d4c0ef7d1b17af7ac1a44b9f91e2`

```dockerfile
```

-	Layers:
	-	`sha256:5e93c3927eafe526f00d32bfce704d302d02d4cbe2d4104d9f70f6c2132c0cee`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 365.8 KB (365835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d021a80b9241fd4aceb41e3907131caf439210759adcdaa248d89c1e12091d7`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8`

```console
$ docker pull kapacitor@sha256:25453167d98802edcf8d46764f05d9fb03c3faa33806f8f5ff3f113dc8cc1fb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:8789cb934b073224e7a53bf2a482ee827951566870dc5ef8764affa670ad2db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175442959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:943d63fc5f4293ef947c84bc55fb4181d8c05b86f525bab749cef59a6541579c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:26:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 02 Jul 2026 05:26:30 GMT
ENV KAPACITOR_VERSION=1.8.5
# Thu, 02 Jul 2026 05:26:30 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 02 Jul 2026 05:26:30 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 02 Jul 2026 05:26:30 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 02 Jul 2026 05:26:30 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 02 Jul 2026 05:26:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 05:26:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 05:26:30 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6b7e7972ce6ea20796c34adbba02cab013efc61b6f31cfe4163e003611aff5`  
		Last Modified: Thu, 02 Jul 2026 02:11:54 GMT  
		Size: 7.1 MB (7065277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825b2d92dee0f11504e3532090e5592416b696cb2637e5863f7f41ce1eb802e6`  
		Last Modified: Thu, 02 Jul 2026 05:26:51 GMT  
		Size: 52.9 MB (52894363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba003d9fdf089dab1796c50edeb95c47e3206db531a4efc2ff66b4ffbb502ea1`  
		Last Modified: Thu, 02 Jul 2026 05:26:52 GMT  
		Size: 85.7 MB (85743917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812239f9dbc58f3eb2c0421f7537dfb0abba528909c0530b9f8955c2ed6392e4`  
		Last Modified: Thu, 02 Jul 2026 05:26:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4400cc5353e248bb9def0a0d06b67a5d79ef84c4263026e542982dd2804ff20a`  
		Last Modified: Thu, 02 Jul 2026 05:26:48 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1a9b685087f674399f0754018230b0fad4cdad5136346af57f3165aa93212ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3730784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b0460226b2102225da2f335d8ada34ab51eec3a078f6c0284227002fb9ba0b`

```dockerfile
```

-	Layers:
	-	`sha256:a7f3701daa628133617c2d439b546c1059f279670f29e0e6ffc8c1f77dea2d2b`  
		Last Modified: Thu, 02 Jul 2026 05:26:48 GMT  
		Size: 3.7 MB (3715764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:beb2644abf99f61d3e59529dd77460fc4e0fcb517a781424065b677bea279742`  
		Last Modified: Thu, 02 Jul 2026 05:26:48 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:1f7ddfc9ec7f399f648211cffaa9312f2f34d63f17be553e679cc1996bfa2019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166865493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f7e782b28ac3f340515468293b1bf2389a539981580328e9cc68ff7289049f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:26:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 02 Jul 2026 05:26:54 GMT
ENV KAPACITOR_VERSION=1.8.5
# Thu, 02 Jul 2026 05:26:54 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 02 Jul 2026 05:26:54 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 02 Jul 2026 05:26:54 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 02 Jul 2026 05:26:54 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 02 Jul 2026 05:26:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 05:26:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 05:26:54 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d3f25c890d2750fc9e944989d89aaf654ceb542f012b4b9e34979fbdbcf79d`  
		Last Modified: Thu, 02 Jul 2026 02:11:51 GMT  
		Size: 7.0 MB (7019663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c8d981b84e28f27b3f00ff1f30a30f32ddc4ec9b71ccffa929d433df7080ef`  
		Last Modified: Thu, 02 Jul 2026 05:27:14 GMT  
		Size: 52.1 MB (52068905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6294b914ae4d695e7c78ce16367228d45a16aba0a31c5de920fecaee619394b5`  
		Last Modified: Thu, 02 Jul 2026 05:27:14 GMT  
		Size: 80.2 MB (80163220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d2f9dc9e1a0637c7edcb587754b92b1c11865afccea4ca37e451868d0ebea`  
		Last Modified: Thu, 02 Jul 2026 05:27:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8776024dc6c72d43d595f53037e0d6b34aba9e5221f41ab50c2ffd326b6288cc`  
		Last Modified: Thu, 02 Jul 2026 05:27:11 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:dfbcb5cadb54553b413a7c985af428cac9f635ffa6d98934a42a67892af20219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3730365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfcc411102cded4d1b0601139e4850f4f8d68e67aaa8c01c68603ed43313d10`

```dockerfile
```

-	Layers:
	-	`sha256:f5aca66a3b958e337a0bf5b92dc81257700fc2e7939c62d758f4761694b172eb`  
		Last Modified: Thu, 02 Jul 2026 05:27:12 GMT  
		Size: 3.7 MB (3715238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1a9720fb64029447f386515838d870e58fc03684497c8e3ebc96b9d129cb9ca`  
		Last Modified: Thu, 02 Jul 2026 05:27:11 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8-alpine`

```console
$ docker pull kapacitor@sha256:1b75a0c5384c9119b8bb3a639c4814f12e19463de38d9bb15ef687aafb47d04b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:3509230863377e606f65fbd6809441dd62d204bddcfff04271b9161a3ba1af84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89771455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5251c9f1ab9b747463275a95a7dabac0cd63c98621b8bd73514395659a769340`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:00:24 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:00:56 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:01:02 GMT
ENV KAPACITOR_VERSION=1.8.5
# Mon, 22 Jun 2026 20:01:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 22 Jun 2026 20:01:02 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 22 Jun 2026 20:01:02 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 22 Jun 2026 20:01:02 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 22 Jun 2026 20:01:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:01:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:01:02 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2de596e6e58599b275563cd7971ad9ea4ebcee65d366f85d02114624fbf249`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785b16a71c5eb5f314877e3da7831546e9823f148c3999f2786921a93f577763`  
		Last Modified: Mon, 22 Jun 2026 20:01:18 GMT  
		Size: 268.7 KB (268744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1523b495d7cf6997d542eafaa1221ad3872d783762474eb434dbc9790ef8cd1c`  
		Last Modified: Mon, 22 Jun 2026 20:01:19 GMT  
		Size: 85.7 MB (85657489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778108c2cf4ac343a0f57711f8198f004221b3ea3a9bf4da6a1dea293e72f39b`  
		Last Modified: Mon, 22 Jun 2026 20:01:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f57a8773eb946420bc883d5195990b81b30564ae3e1ff6722f4d8282af2deb9`  
		Last Modified: Mon, 22 Jun 2026 20:01:17 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:dbce504b9838621b932ebda9e22428814f1eeeaac16316b1f264367585650494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.2 KB (388158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97da902bbd0aed582adc787ad350ce85c8d3984482e2332a80177cf0ca368d5`

```dockerfile
```

-	Layers:
	-	`sha256:8e7bfa57590764500221a9df884e4a1d2e3a20441cd9a4e8809ed89784196fa2`  
		Last Modified: Mon, 22 Jun 2026 20:01:16 GMT  
		Size: 372.8 KB (372821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebaeed4adde14f5dd75418ddbb6926cdef500524a230a7ddb46feef537dd5df9`  
		Last Modified: Mon, 22 Jun 2026 20:01:17 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.6`

**does not exist** (yet?)

## `kapacitor:1.8.6-alpine`

**does not exist** (yet?)

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:d413cc02810588e8c459ea5be842408894d80457fd6bf3d17c76054bd4fbeba6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7dd27bf99a95c88a227895984474aed5a5acd9e005ee8c4ca5d230c5adce430d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75904570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3afb14c37dc00503a0e3d186c16cca67e6e6cf79f380e0768c83b473ab21723`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:26 GMT
ADD alpine-minirootfs-3.20.10-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:26 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:23:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 17 Apr 2026 00:29:59 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 17 Apr 2026 00:30:05 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 17 Apr 2026 00:30:05 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 17 Apr 2026 00:30:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:30:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:30:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:25f1d6b1951ac8eb3740558fe94cb83d377bdadf95fd9f98b50d2e1b96130471`  
		Last Modified: Thu, 16 Apr 2026 23:53:31 GMT  
		Size: 3.6 MB (3630321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16e69077797f1a90c5b8946765d6547bd0bbe62c5edf87016fc687d8691b62a`  
		Last Modified: Fri, 17 Apr 2026 00:23:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d26afc56a247d157e5130fafb0c3e1596d90cb798a74bcd18085a2e60f5e83`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 290.8 KB (290778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62dd12f58262d16aa469c538fe54969fbd41faab46b0c454ce33250afdb5cf9`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 72.0 MB (71982697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55baa52346461779ddbbe16b9bcbe892cdd293e258d25759833687ed332ec26f`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b697b2c16e0d0a74ce9cec7f52e70573e6c357c63cea20d805fa64c4bd2a984c`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:c43b268a38b55473ac82d1c64d91b2abf473cfd8498dadaf61b7b610b7a0a384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.5 KB (381476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c6c8a59270545d801e93fbec290d5e3507d4c0ef7d1b17af7ac1a44b9f91e2`

```dockerfile
```

-	Layers:
	-	`sha256:5e93c3927eafe526f00d32bfce704d302d02d4cbe2d4104d9f70f6c2132c0cee`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 365.8 KB (365835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d021a80b9241fd4aceb41e3907131caf439210759adcdaa248d89c1e12091d7`  
		Last Modified: Fri, 17 Apr 2026 00:30:17 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:25453167d98802edcf8d46764f05d9fb03c3faa33806f8f5ff3f113dc8cc1fb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:8789cb934b073224e7a53bf2a482ee827951566870dc5ef8764affa670ad2db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175442959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:943d63fc5f4293ef947c84bc55fb4181d8c05b86f525bab749cef59a6541579c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:26:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 02 Jul 2026 05:26:30 GMT
ENV KAPACITOR_VERSION=1.8.5
# Thu, 02 Jul 2026 05:26:30 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 02 Jul 2026 05:26:30 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 02 Jul 2026 05:26:30 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 02 Jul 2026 05:26:30 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 02 Jul 2026 05:26:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 05:26:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 05:26:30 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6b7e7972ce6ea20796c34adbba02cab013efc61b6f31cfe4163e003611aff5`  
		Last Modified: Thu, 02 Jul 2026 02:11:54 GMT  
		Size: 7.1 MB (7065277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825b2d92dee0f11504e3532090e5592416b696cb2637e5863f7f41ce1eb802e6`  
		Last Modified: Thu, 02 Jul 2026 05:26:51 GMT  
		Size: 52.9 MB (52894363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba003d9fdf089dab1796c50edeb95c47e3206db531a4efc2ff66b4ffbb502ea1`  
		Last Modified: Thu, 02 Jul 2026 05:26:52 GMT  
		Size: 85.7 MB (85743917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812239f9dbc58f3eb2c0421f7537dfb0abba528909c0530b9f8955c2ed6392e4`  
		Last Modified: Thu, 02 Jul 2026 05:26:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4400cc5353e248bb9def0a0d06b67a5d79ef84c4263026e542982dd2804ff20a`  
		Last Modified: Thu, 02 Jul 2026 05:26:48 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1a9b685087f674399f0754018230b0fad4cdad5136346af57f3165aa93212ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3730784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b0460226b2102225da2f335d8ada34ab51eec3a078f6c0284227002fb9ba0b`

```dockerfile
```

-	Layers:
	-	`sha256:a7f3701daa628133617c2d439b546c1059f279670f29e0e6ffc8c1f77dea2d2b`  
		Last Modified: Thu, 02 Jul 2026 05:26:48 GMT  
		Size: 3.7 MB (3715764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:beb2644abf99f61d3e59529dd77460fc4e0fcb517a781424065b677bea279742`  
		Last Modified: Thu, 02 Jul 2026 05:26:48 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:1f7ddfc9ec7f399f648211cffaa9312f2f34d63f17be553e679cc1996bfa2019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166865493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f7e782b28ac3f340515468293b1bf2389a539981580328e9cc68ff7289049f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:26:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 02 Jul 2026 05:26:54 GMT
ENV KAPACITOR_VERSION=1.8.5
# Thu, 02 Jul 2026 05:26:54 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 02 Jul 2026 05:26:54 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 02 Jul 2026 05:26:54 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 02 Jul 2026 05:26:54 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 02 Jul 2026 05:26:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 05:26:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 05:26:54 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d3f25c890d2750fc9e944989d89aaf654ceb542f012b4b9e34979fbdbcf79d`  
		Last Modified: Thu, 02 Jul 2026 02:11:51 GMT  
		Size: 7.0 MB (7019663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c8d981b84e28f27b3f00ff1f30a30f32ddc4ec9b71ccffa929d433df7080ef`  
		Last Modified: Thu, 02 Jul 2026 05:27:14 GMT  
		Size: 52.1 MB (52068905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6294b914ae4d695e7c78ce16367228d45a16aba0a31c5de920fecaee619394b5`  
		Last Modified: Thu, 02 Jul 2026 05:27:14 GMT  
		Size: 80.2 MB (80163220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d2f9dc9e1a0637c7edcb587754b92b1c11865afccea4ca37e451868d0ebea`  
		Last Modified: Thu, 02 Jul 2026 05:27:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8776024dc6c72d43d595f53037e0d6b34aba9e5221f41ab50c2ffd326b6288cc`  
		Last Modified: Thu, 02 Jul 2026 05:27:11 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:dfbcb5cadb54553b413a7c985af428cac9f635ffa6d98934a42a67892af20219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3730365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfcc411102cded4d1b0601139e4850f4f8d68e67aaa8c01c68603ed43313d10`

```dockerfile
```

-	Layers:
	-	`sha256:f5aca66a3b958e337a0bf5b92dc81257700fc2e7939c62d758f4761694b172eb`  
		Last Modified: Thu, 02 Jul 2026 05:27:12 GMT  
		Size: 3.7 MB (3715238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1a9720fb64029447f386515838d870e58fc03684497c8e3ebc96b9d129cb9ca`  
		Last Modified: Thu, 02 Jul 2026 05:27:11 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
