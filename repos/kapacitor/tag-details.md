<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.7`](#kapacitor17)
-	[`kapacitor:1.7-alpine`](#kapacitor17-alpine)
-	[`kapacitor:1.7.7`](#kapacitor177)
-	[`kapacitor:1.7.7-alpine`](#kapacitor177-alpine)
-	[`kapacitor:1.8`](#kapacitor18)
-	[`kapacitor:1.8-alpine`](#kapacitor18-alpine)
-	[`kapacitor:1.8.8`](#kapacitor188)
-	[`kapacitor:1.8.8-alpine`](#kapacitor188-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.7`

```console
$ docker pull kapacitor@sha256:094b248d4447560d5a846ca1a925899bea0aaae81aaed91b56e6ea8b88a21737
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:a687eca5424eacfe51e6b828fab258afbb13bc745d5feb4d0ffde66ff7986f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164016445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0a79a178415415176596fcb08ad4c1e1ca26e0c7cbf02e75c57b53843005e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:14 GMT
ENV KAPACITOR_VERSION=1.7.7
# Sat, 17 Oct 2026 01:26:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:14 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:14 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:14 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:14 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4bd2e1cf8d1673ed087d13e7d4484e4202ae74747f4712409ed1e6adfb72f2`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 7.1 MB (7069053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15757fcd7ba2c6262a6da3ab7d9a1a4040c249c655c1a7c9d06251ed9088ee38`  
		Last Modified: Sat, 17 Oct 2026 01:26:29 GMT  
		Size: 55.1 MB (55142712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2698f740ed311b7b80c470fcc18ea5ecbb7ef62710b1e80a6efef12df4b10be1`  
		Last Modified: Sat, 17 Oct 2026 01:26:30 GMT  
		Size: 72.1 MB (72051680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5fce0a58272a6a6018610e2b9c0d21bfea3f02d5b7a5f1df9a1c977e398ecf`  
		Last Modified: Sat, 17 Oct 2026 01:26:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123fd41a65a950b96c15524d3102f3b6a51d2623855354b379eb7034a6b3a5a0`  
		Last Modified: Sat, 17 Oct 2026 01:26:27 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f09b365eb1fcfd69e633c131fb414e6d6e263f1b74097d860869c442591005b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec1a45ddccf176a4cf591555d23dca79393c92f0a28fd0bfa902a3726a44d0c`

```dockerfile
```

-	Layers:
	-	`sha256:18fc72a91e394cc90880d349602bee03290e2685e8979334bc7a15230da3dac5`  
		Last Modified: Sat, 17 Oct 2026 01:26:27 GMT  
		Size: 3.7 MB (3700484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b0fa364399959dd065faf4fe4eb27ab51b795db411d3b3043346d458f4bb9bc`  
		Last Modified: Sat, 17 Oct 2026 01:26:26 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:8da27f02e2c6875f8ceb626a5ea2ea2bc184e931178c35bf4971f56eefbf79b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157102626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1910eab413a1a6eced149308bec2176658805616e43e22abd7579c2009829b2c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:47 GMT
ENV KAPACITOR_VERSION=1.7.7
# Sat, 17 Oct 2026 01:26:47 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:47 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:47 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:47 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:47 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95774da1dbe68bb0136b29920ab4d48aea1373113a4ef80d7a8fb7e68edbba`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 MB (7022101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de89d81a9db7f70a8208d7191220526c18edb5b7b52585153e2fafa198465c`  
		Last Modified: Sat, 17 Oct 2026 01:27:02 GMT  
		Size: 54.6 MB (54580980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b7d8751c30f6d8610c7eef54c61e2530117011861bb82ac0f0dca1f54b3f91`  
		Last Modified: Sat, 17 Oct 2026 01:27:02 GMT  
		Size: 67.8 MB (67814299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be11e44615168c982e6eb50209a7008afada96ee99f8437382fed92c01f41f1`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0573d0f37cfef23f6aeaafd138686b93d2dfc2dc82c104406f6628f8311727`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b71ce6b42a543ae1d9601d5b6c99c4ffac306c569a48eeb0ac9a9224e719a31a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e976e8681061d3c627adc6579a1d14666d951c47e7a37f52c2e87703f0ae3b`

```dockerfile
```

-	Layers:
	-	`sha256:e67d5fb9b2a9bcca6e99cde9ef7bd8ba8d0deeb4f539becd3ca596f2d3a4d45f`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 3.7 MB (3699946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9c7a882968abbe920a2f489c1a21e586d73bf0854019b02da5f77134084462`  
		Last Modified: Sat, 17 Oct 2026 01:26:59 GMT  
		Size: 14.8 KB (14811 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7-alpine`

```console
$ docker pull kapacitor@sha256:de3e2c2e5465cb986d52e4129c05c31f01f3156147c0a72f65359721077101c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:1c98d6a4632e0bf46da28d27d85a9c25e25ff6e79c700296fae64f3e2469741c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79133902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ce8ea31e2b8c5ca10ce8578e81817cc20e61e0dd0e951a464a26fa7c8a45f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:42 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:16 GMT
ENV KAPACITOR_VERSION=1.7.7
# Wed, 21 Oct 2026 22:58:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Wed, 21 Oct 2026 22:58:16 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 21 Oct 2026 22:58:16 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 21 Oct 2026 22:58:16 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 21 Oct 2026 22:58:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:58:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:58:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f27d2d9cf4f1430155a6ce8026ee386edff95e39bfe3085b2bde3fad01d3e5e`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37e249082a05d70298cbd5eebc9c53cff232327a8ec6e22501d6dd9415eb813`  
		Last Modified: Wed, 21 Oct 2026 22:58:26 GMT  
		Size: 246.3 KB (246306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f882481b50606256c6f2677e50212b92d7bda3daa1289c77689f7e14a21600`  
		Last Modified: Wed, 21 Oct 2026 22:58:28 GMT  
		Size: 75.0 MB (75033706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91417525523325c24df74391a4d5b21f574686d23d2eb8b0324d7aa345e7105c`  
		Last Modified: Wed, 21 Oct 2026 22:58:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7fc6b56b7b8eaa644b20443a6b1b3de917efcd952c464b53efad693b401f4b`  
		Last Modified: Wed, 21 Oct 2026 22:58:27 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b8088753fc85fbc43d8cd4f160ed62920cb4b4741474550dc76ff70970077864
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 KB (368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e69e5c6d8a82c82c4f96c809e1b08aa0000d9611f7548af0e9019eea87471f`

```dockerfile
```

-	Layers:
	-	`sha256:b99e0f28a53aa79757ef882b52baa62dd38e2437fb0d2eff790f5dd35832bd57`  
		Last Modified: Wed, 21 Oct 2026 22:58:27 GMT  
		Size: 353.4 KB (353392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9efeab626074e953890d3a59412a69e4ec5bbea3935c6f494b645fd502e3c19d`  
		Last Modified: Wed, 21 Oct 2026 22:58:27 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7`

```console
$ docker pull kapacitor@sha256:094b248d4447560d5a846ca1a925899bea0aaae81aaed91b56e6ea8b88a21737
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:a687eca5424eacfe51e6b828fab258afbb13bc745d5feb4d0ffde66ff7986f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164016445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0a79a178415415176596fcb08ad4c1e1ca26e0c7cbf02e75c57b53843005e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:14 GMT
ENV KAPACITOR_VERSION=1.7.7
# Sat, 17 Oct 2026 01:26:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:14 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:14 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:14 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:14 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4bd2e1cf8d1673ed087d13e7d4484e4202ae74747f4712409ed1e6adfb72f2`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 7.1 MB (7069053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15757fcd7ba2c6262a6da3ab7d9a1a4040c249c655c1a7c9d06251ed9088ee38`  
		Last Modified: Sat, 17 Oct 2026 01:26:29 GMT  
		Size: 55.1 MB (55142712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2698f740ed311b7b80c470fcc18ea5ecbb7ef62710b1e80a6efef12df4b10be1`  
		Last Modified: Sat, 17 Oct 2026 01:26:30 GMT  
		Size: 72.1 MB (72051680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5fce0a58272a6a6018610e2b9c0d21bfea3f02d5b7a5f1df9a1c977e398ecf`  
		Last Modified: Sat, 17 Oct 2026 01:26:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123fd41a65a950b96c15524d3102f3b6a51d2623855354b379eb7034a6b3a5a0`  
		Last Modified: Sat, 17 Oct 2026 01:26:27 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f09b365eb1fcfd69e633c131fb414e6d6e263f1b74097d860869c442591005b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec1a45ddccf176a4cf591555d23dca79393c92f0a28fd0bfa902a3726a44d0c`

```dockerfile
```

-	Layers:
	-	`sha256:18fc72a91e394cc90880d349602bee03290e2685e8979334bc7a15230da3dac5`  
		Last Modified: Sat, 17 Oct 2026 01:26:27 GMT  
		Size: 3.7 MB (3700484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b0fa364399959dd065faf4fe4eb27ab51b795db411d3b3043346d458f4bb9bc`  
		Last Modified: Sat, 17 Oct 2026 01:26:26 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:8da27f02e2c6875f8ceb626a5ea2ea2bc184e931178c35bf4971f56eefbf79b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157102626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1910eab413a1a6eced149308bec2176658805616e43e22abd7579c2009829b2c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:47 GMT
ENV KAPACITOR_VERSION=1.7.7
# Sat, 17 Oct 2026 01:26:47 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:47 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:47 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:47 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:47 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95774da1dbe68bb0136b29920ab4d48aea1373113a4ef80d7a8fb7e68edbba`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 MB (7022101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de89d81a9db7f70a8208d7191220526c18edb5b7b52585153e2fafa198465c`  
		Last Modified: Sat, 17 Oct 2026 01:27:02 GMT  
		Size: 54.6 MB (54580980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b7d8751c30f6d8610c7eef54c61e2530117011861bb82ac0f0dca1f54b3f91`  
		Last Modified: Sat, 17 Oct 2026 01:27:02 GMT  
		Size: 67.8 MB (67814299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be11e44615168c982e6eb50209a7008afada96ee99f8437382fed92c01f41f1`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0573d0f37cfef23f6aeaafd138686b93d2dfc2dc82c104406f6628f8311727`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b71ce6b42a543ae1d9601d5b6c99c4ffac306c569a48eeb0ac9a9224e719a31a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e976e8681061d3c627adc6579a1d14666d951c47e7a37f52c2e87703f0ae3b`

```dockerfile
```

-	Layers:
	-	`sha256:e67d5fb9b2a9bcca6e99cde9ef7bd8ba8d0deeb4f539becd3ca596f2d3a4d45f`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 3.7 MB (3699946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9c7a882968abbe920a2f489c1a21e586d73bf0854019b02da5f77134084462`  
		Last Modified: Sat, 17 Oct 2026 01:26:59 GMT  
		Size: 14.8 KB (14811 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7-alpine`

```console
$ docker pull kapacitor@sha256:de3e2c2e5465cb986d52e4129c05c31f01f3156147c0a72f65359721077101c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:1c98d6a4632e0bf46da28d27d85a9c25e25ff6e79c700296fae64f3e2469741c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79133902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ce8ea31e2b8c5ca10ce8578e81817cc20e61e0dd0e951a464a26fa7c8a45f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:42 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:16 GMT
ENV KAPACITOR_VERSION=1.7.7
# Wed, 21 Oct 2026 22:58:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Wed, 21 Oct 2026 22:58:16 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 21 Oct 2026 22:58:16 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 21 Oct 2026 22:58:16 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 21 Oct 2026 22:58:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:58:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:58:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f27d2d9cf4f1430155a6ce8026ee386edff95e39bfe3085b2bde3fad01d3e5e`  
		Last Modified: Wed, 21 Oct 2026 22:56:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37e249082a05d70298cbd5eebc9c53cff232327a8ec6e22501d6dd9415eb813`  
		Last Modified: Wed, 21 Oct 2026 22:58:26 GMT  
		Size: 246.3 KB (246306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f882481b50606256c6f2677e50212b92d7bda3daa1289c77689f7e14a21600`  
		Last Modified: Wed, 21 Oct 2026 22:58:28 GMT  
		Size: 75.0 MB (75033706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91417525523325c24df74391a4d5b21f574686d23d2eb8b0324d7aa345e7105c`  
		Last Modified: Wed, 21 Oct 2026 22:58:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7fc6b56b7b8eaa644b20443a6b1b3de917efcd952c464b53efad693b401f4b`  
		Last Modified: Wed, 21 Oct 2026 22:58:27 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b8088753fc85fbc43d8cd4f160ed62920cb4b4741474550dc76ff70970077864
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 KB (368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e69e5c6d8a82c82c4f96c809e1b08aa0000d9611f7548af0e9019eea87471f`

```dockerfile
```

-	Layers:
	-	`sha256:b99e0f28a53aa79757ef882b52baa62dd38e2437fb0d2eff790f5dd35832bd57`  
		Last Modified: Wed, 21 Oct 2026 22:58:27 GMT  
		Size: 353.4 KB (353392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9efeab626074e953890d3a59412a69e4ec5bbea3935c6f494b645fd502e3c19d`  
		Last Modified: Wed, 21 Oct 2026 22:58:27 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8`

```console
$ docker pull kapacitor@sha256:4e939083f8d750800942611b136795f2b8dd05455da2c9b9c9fe329e38d89f18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:842a8aa96c4ce0e077c69ef0a18d531c1f86b1736b0b3b24f36604951c53aba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186535596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d9cf3760e1b89e825f0ec32f8f63d83f54f378a1f1793cfcc17dfdb6f64f51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
ENV KAPACITOR_VERSION=1.8.8
# Sat, 17 Oct 2026 01:26:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:22 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4bd2e1cf8d1673ed087d13e7d4484e4202ae74747f4712409ed1e6adfb72f2`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 7.1 MB (7069053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d905493090df18f13b5bc44007ee2c9136b21ad1a6c32f6837fa2924cd8238b5`  
		Last Modified: Sat, 17 Oct 2026 01:26:44 GMT  
		Size: 55.1 MB (55142645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132408668eae5329142d79b13f0de5553de252ec46b01fd1756f576f391fc5b9`  
		Last Modified: Sat, 17 Oct 2026 01:26:45 GMT  
		Size: 94.6 MB (94570898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faba968b7feb339c971bd915e9642962afe8801deff72099dc85c28cf2afded9`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5487f9a70b2732228b469a9e7d2b79114e11ca3e4671af6d34a62e9ca81017c4`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:42ffa800f2cc05823d58ff6622cce1660908ed29c60662eb2ae05dcfed13c207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f866f1571be9eea8ee1aac4d2bbcd8733fbc9b639f41d86114a8565cc0c12a2`

```dockerfile
```

-	Layers:
	-	`sha256:09412fd29487fd99ff9b29dedaf1e76247a14fe735cc5f189d17aaa7b855cfda`  
		Last Modified: Sat, 17 Oct 2026 01:26:42 GMT  
		Size: 3.7 MB (3729272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3067450e362fe3c8fab0810e741dca8983a610ebd408f42ae437125c023fc37`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:6a38271c7b7363a087e0756b208bdf974813fef1c6db7437f5e17c3fe3c400db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177670892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8cba82d122c825446041d127ad06e946ea866fc9d715cab070b6aa8f5a503b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
ENV KAPACITOR_VERSION=1.8.8
# Sat, 17 Oct 2026 01:26:48 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:48 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:49 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95774da1dbe68bb0136b29920ab4d48aea1373113a4ef80d7a8fb7e68edbba`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 MB (7022101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c8f17afe922286d4acf9071e6ca1c8aa6462eb37c10c24ea3d7601989c6ae1`  
		Last Modified: Sat, 17 Oct 2026 01:27:10 GMT  
		Size: 54.6 MB (54580980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57378d942af8c5921b4531c1c4c193d9a6542ba471d2672e1e4abf583f72e77f`  
		Last Modified: Sat, 17 Oct 2026 01:27:10 GMT  
		Size: 88.4 MB (88382565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080501d881a6ac61ecbd099cb5320e49796395747a01e68e0d499547464b2739`  
		Last Modified: Sat, 17 Oct 2026 01:27:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0573d0f37cfef23f6aeaafd138686b93d2dfc2dc82c104406f6628f8311727`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:82a82bbb875c8dd688375606949cfc1232c0560c19c18f2122a92e29c869c39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589b37b6977ec01de34e470e31021de399ff3969fd62b53fba916d098ed4fe1`

```dockerfile
```

-	Layers:
	-	`sha256:16fc88ec1fce96c84afdf2209454994c494fd9b62de6a6373549e57674dd6a1f`  
		Last Modified: Sat, 17 Oct 2026 01:27:08 GMT  
		Size: 3.7 MB (3728746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8165c89bbfc51c7cdd277869305a2d1c344a75dbba8e8cb3addca8704228184b`  
		Last Modified: Sat, 17 Oct 2026 01:27:07 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8-alpine`

```console
$ docker pull kapacitor@sha256:7a33d3ac7382db5f4b38729c0cac6913506976a8e8df6946eee2c1ba68e5a690
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:c5758026be845309441d79d402176acb9ea59ea5a1a0300f943e499f1a1e996f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101697800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ac393b38b66566816673581b64037a97aa9bbb4698a47d89b57c369e58479a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:17 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:58:17 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
ENV KAPACITOR_VERSION=1.8.8
# Wed, 21 Oct 2026 22:58:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 21 Oct 2026 22:58:25 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 21 Oct 2026 22:58:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:58:25 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a191dc4edd79df91b7a547b5b5e9a58aa00be2dd6805f2c1e132fa1641bb80ce`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f11c69ce3736f03582a74ab1a22d5bb084780266ca70be83e6c33f68791507`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 293.8 KB (293848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd8dad89eb9f6104c993b4f99f670187794cd1e141be6b4a4035aed734c7630`  
		Last Modified: Wed, 21 Oct 2026 22:58:43 GMT  
		Size: 97.6 MB (97550042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af070eba3b9b581d1bc09b20c1430a35f967f3351a7723f81112fd7126120ad5`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8166c0fb3ca2f59fe175119e7ab2ed5949229b5fe08f087bfb977f210ce503c8`  
		Last Modified: Wed, 21 Oct 2026 22:58:42 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:92e352b7b01068abf3a2ced3d693130c9a4a11a7a15eebe48e6ed0cc8a182430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.8 KB (403766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc66ca80eb116babff2c85e6ca8ae5ca82fe5588e2539b71d2939387c1d423ce`

```dockerfile
```

-	Layers:
	-	`sha256:9384d24b267eb8607b964f6e0ea42c40dc14b0980f976b760ca4e1a6d863e79d`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 388.1 KB (388125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e59b2f3900938d2efc2fc8e22dc7cdc2734ce5d75e3ed0a58d51d7d63275ff88`  
		Last Modified: Wed, 21 Oct 2026 22:58:40 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.8`

```console
$ docker pull kapacitor@sha256:4e939083f8d750800942611b136795f2b8dd05455da2c9b9c9fe329e38d89f18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:842a8aa96c4ce0e077c69ef0a18d531c1f86b1736b0b3b24f36604951c53aba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186535596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d9cf3760e1b89e825f0ec32f8f63d83f54f378a1f1793cfcc17dfdb6f64f51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
ENV KAPACITOR_VERSION=1.8.8
# Sat, 17 Oct 2026 01:26:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:22 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4bd2e1cf8d1673ed087d13e7d4484e4202ae74747f4712409ed1e6adfb72f2`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 7.1 MB (7069053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d905493090df18f13b5bc44007ee2c9136b21ad1a6c32f6837fa2924cd8238b5`  
		Last Modified: Sat, 17 Oct 2026 01:26:44 GMT  
		Size: 55.1 MB (55142645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132408668eae5329142d79b13f0de5553de252ec46b01fd1756f576f391fc5b9`  
		Last Modified: Sat, 17 Oct 2026 01:26:45 GMT  
		Size: 94.6 MB (94570898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faba968b7feb339c971bd915e9642962afe8801deff72099dc85c28cf2afded9`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5487f9a70b2732228b469a9e7d2b79114e11ca3e4671af6d34a62e9ca81017c4`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:42ffa800f2cc05823d58ff6622cce1660908ed29c60662eb2ae05dcfed13c207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f866f1571be9eea8ee1aac4d2bbcd8733fbc9b639f41d86114a8565cc0c12a2`

```dockerfile
```

-	Layers:
	-	`sha256:09412fd29487fd99ff9b29dedaf1e76247a14fe735cc5f189d17aaa7b855cfda`  
		Last Modified: Sat, 17 Oct 2026 01:26:42 GMT  
		Size: 3.7 MB (3729272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3067450e362fe3c8fab0810e741dca8983a610ebd408f42ae437125c023fc37`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:6a38271c7b7363a087e0756b208bdf974813fef1c6db7437f5e17c3fe3c400db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177670892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8cba82d122c825446041d127ad06e946ea866fc9d715cab070b6aa8f5a503b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
ENV KAPACITOR_VERSION=1.8.8
# Sat, 17 Oct 2026 01:26:48 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:48 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:49 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95774da1dbe68bb0136b29920ab4d48aea1373113a4ef80d7a8fb7e68edbba`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 MB (7022101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c8f17afe922286d4acf9071e6ca1c8aa6462eb37c10c24ea3d7601989c6ae1`  
		Last Modified: Sat, 17 Oct 2026 01:27:10 GMT  
		Size: 54.6 MB (54580980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57378d942af8c5921b4531c1c4c193d9a6542ba471d2672e1e4abf583f72e77f`  
		Last Modified: Sat, 17 Oct 2026 01:27:10 GMT  
		Size: 88.4 MB (88382565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080501d881a6ac61ecbd099cb5320e49796395747a01e68e0d499547464b2739`  
		Last Modified: Sat, 17 Oct 2026 01:27:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0573d0f37cfef23f6aeaafd138686b93d2dfc2dc82c104406f6628f8311727`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:82a82bbb875c8dd688375606949cfc1232c0560c19c18f2122a92e29c869c39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589b37b6977ec01de34e470e31021de399ff3969fd62b53fba916d098ed4fe1`

```dockerfile
```

-	Layers:
	-	`sha256:16fc88ec1fce96c84afdf2209454994c494fd9b62de6a6373549e57674dd6a1f`  
		Last Modified: Sat, 17 Oct 2026 01:27:08 GMT  
		Size: 3.7 MB (3728746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8165c89bbfc51c7cdd277869305a2d1c344a75dbba8e8cb3addca8704228184b`  
		Last Modified: Sat, 17 Oct 2026 01:27:07 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.8-alpine`

```console
$ docker pull kapacitor@sha256:7a33d3ac7382db5f4b38729c0cac6913506976a8e8df6946eee2c1ba68e5a690
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:c5758026be845309441d79d402176acb9ea59ea5a1a0300f943e499f1a1e996f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101697800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ac393b38b66566816673581b64037a97aa9bbb4698a47d89b57c369e58479a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:17 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:58:17 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
ENV KAPACITOR_VERSION=1.8.8
# Wed, 21 Oct 2026 22:58:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 21 Oct 2026 22:58:25 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 21 Oct 2026 22:58:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:58:25 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a191dc4edd79df91b7a547b5b5e9a58aa00be2dd6805f2c1e132fa1641bb80ce`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f11c69ce3736f03582a74ab1a22d5bb084780266ca70be83e6c33f68791507`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 293.8 KB (293848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd8dad89eb9f6104c993b4f99f670187794cd1e141be6b4a4035aed734c7630`  
		Last Modified: Wed, 21 Oct 2026 22:58:43 GMT  
		Size: 97.6 MB (97550042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af070eba3b9b581d1bc09b20c1430a35f967f3351a7723f81112fd7126120ad5`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8166c0fb3ca2f59fe175119e7ab2ed5949229b5fe08f087bfb977f210ce503c8`  
		Last Modified: Wed, 21 Oct 2026 22:58:42 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:92e352b7b01068abf3a2ced3d693130c9a4a11a7a15eebe48e6ed0cc8a182430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.8 KB (403766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc66ca80eb116babff2c85e6ca8ae5ca82fe5588e2539b71d2939387c1d423ce`

```dockerfile
```

-	Layers:
	-	`sha256:9384d24b267eb8607b964f6e0ea42c40dc14b0980f976b760ca4e1a6d863e79d`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 388.1 KB (388125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e59b2f3900938d2efc2fc8e22dc7cdc2734ce5d75e3ed0a58d51d7d63275ff88`  
		Last Modified: Wed, 21 Oct 2026 22:58:40 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:7a33d3ac7382db5f4b38729c0cac6913506976a8e8df6946eee2c1ba68e5a690
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:c5758026be845309441d79d402176acb9ea59ea5a1a0300f943e499f1a1e996f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101697800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ac393b38b66566816673581b64037a97aa9bbb4698a47d89b57c369e58479a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:17 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:58:17 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
ENV KAPACITOR_VERSION=1.8.8
# Wed, 21 Oct 2026 22:58:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 21 Oct 2026 22:58:25 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 21 Oct 2026 22:58:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:58:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:58:25 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a191dc4edd79df91b7a547b5b5e9a58aa00be2dd6805f2c1e132fa1641bb80ce`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f11c69ce3736f03582a74ab1a22d5bb084780266ca70be83e6c33f68791507`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 293.8 KB (293848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd8dad89eb9f6104c993b4f99f670187794cd1e141be6b4a4035aed734c7630`  
		Last Modified: Wed, 21 Oct 2026 22:58:43 GMT  
		Size: 97.6 MB (97550042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af070eba3b9b581d1bc09b20c1430a35f967f3351a7723f81112fd7126120ad5`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8166c0fb3ca2f59fe175119e7ab2ed5949229b5fe08f087bfb977f210ce503c8`  
		Last Modified: Wed, 21 Oct 2026 22:58:42 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:92e352b7b01068abf3a2ced3d693130c9a4a11a7a15eebe48e6ed0cc8a182430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.8 KB (403766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc66ca80eb116babff2c85e6ca8ae5ca82fe5588e2539b71d2939387c1d423ce`

```dockerfile
```

-	Layers:
	-	`sha256:9384d24b267eb8607b964f6e0ea42c40dc14b0980f976b760ca4e1a6d863e79d`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 388.1 KB (388125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e59b2f3900938d2efc2fc8e22dc7cdc2734ce5d75e3ed0a58d51d7d63275ff88`  
		Last Modified: Wed, 21 Oct 2026 22:58:40 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:4e939083f8d750800942611b136795f2b8dd05455da2c9b9c9fe329e38d89f18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:842a8aa96c4ce0e077c69ef0a18d531c1f86b1736b0b3b24f36604951c53aba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186535596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d9cf3760e1b89e825f0ec32f8f63d83f54f378a1f1793cfcc17dfdb6f64f51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
ENV KAPACITOR_VERSION=1.8.8
# Sat, 17 Oct 2026 01:26:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:22 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4bd2e1cf8d1673ed087d13e7d4484e4202ae74747f4712409ed1e6adfb72f2`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 7.1 MB (7069053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d905493090df18f13b5bc44007ee2c9136b21ad1a6c32f6837fa2924cd8238b5`  
		Last Modified: Sat, 17 Oct 2026 01:26:44 GMT  
		Size: 55.1 MB (55142645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132408668eae5329142d79b13f0de5553de252ec46b01fd1756f576f391fc5b9`  
		Last Modified: Sat, 17 Oct 2026 01:26:45 GMT  
		Size: 94.6 MB (94570898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faba968b7feb339c971bd915e9642962afe8801deff72099dc85c28cf2afded9`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5487f9a70b2732228b469a9e7d2b79114e11ca3e4671af6d34a62e9ca81017c4`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:42ffa800f2cc05823d58ff6622cce1660908ed29c60662eb2ae05dcfed13c207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f866f1571be9eea8ee1aac4d2bbcd8733fbc9b639f41d86114a8565cc0c12a2`

```dockerfile
```

-	Layers:
	-	`sha256:09412fd29487fd99ff9b29dedaf1e76247a14fe735cc5f189d17aaa7b855cfda`  
		Last Modified: Sat, 17 Oct 2026 01:26:42 GMT  
		Size: 3.7 MB (3729272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3067450e362fe3c8fab0810e741dca8983a610ebd408f42ae437125c023fc37`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:6a38271c7b7363a087e0756b208bdf974813fef1c6db7437f5e17c3fe3c400db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177670892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8cba82d122c825446041d127ad06e946ea866fc9d715cab070b6aa8f5a503b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
ENV KAPACITOR_VERSION=1.8.8
# Sat, 17 Oct 2026 01:26:48 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:48 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:49 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95774da1dbe68bb0136b29920ab4d48aea1373113a4ef80d7a8fb7e68edbba`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 MB (7022101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c8f17afe922286d4acf9071e6ca1c8aa6462eb37c10c24ea3d7601989c6ae1`  
		Last Modified: Sat, 17 Oct 2026 01:27:10 GMT  
		Size: 54.6 MB (54580980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57378d942af8c5921b4531c1c4c193d9a6542ba471d2672e1e4abf583f72e77f`  
		Last Modified: Sat, 17 Oct 2026 01:27:10 GMT  
		Size: 88.4 MB (88382565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080501d881a6ac61ecbd099cb5320e49796395747a01e68e0d499547464b2739`  
		Last Modified: Sat, 17 Oct 2026 01:27:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0573d0f37cfef23f6aeaafd138686b93d2dfc2dc82c104406f6628f8311727`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:82a82bbb875c8dd688375606949cfc1232c0560c19c18f2122a92e29c869c39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589b37b6977ec01de34e470e31021de399ff3969fd62b53fba916d098ed4fe1`

```dockerfile
```

-	Layers:
	-	`sha256:16fc88ec1fce96c84afdf2209454994c494fd9b62de6a6373549e57674dd6a1f`  
		Last Modified: Sat, 17 Oct 2026 01:27:08 GMT  
		Size: 3.7 MB (3728746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8165c89bbfc51c7cdd277869305a2d1c344a75dbba8e8cb3addca8704228184b`  
		Last Modified: Sat, 17 Oct 2026 01:27:07 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
