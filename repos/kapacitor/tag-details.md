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
$ docker pull kapacitor@sha256:53a61e1504277171dcb1599322ba93efb99175710075a6debe276be51d739ba3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:f3cf13937284f91c2727aef8b58ff9b5b6ff7d16fcfd45ebc965ac4467c1f27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79130467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7842c8fae6cbb6a9c93fe717f8d0d9476f29c2d6a77ce9e589a28d5f5eb72229`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:01 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:47:02 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:47:06 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 17 Sep 2026 21:47:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 17 Sep 2026 21:47:06 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 17 Sep 2026 21:47:06 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 17 Sep 2026 21:47:06 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 17 Sep 2026 21:47:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:47:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:06 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a756823423bfb688401a5fe8b85226a8068a16ca9437e1fee494fc928a5a524`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e341478d6c934d223a4b91ebedf1041b18018fc90bb48f9f3ebcb2ed57e1f5d2`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
		Size: 249.3 KB (249333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a04a8d3f42decd20ee6bc86813be2f65a080c6eee3a4296d258ee3a233ff7ec`  
		Last Modified: Thu, 17 Sep 2026 21:47:18 GMT  
		Size: 75.0 MB (75030618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f9231308241ac7e9c90db459ecb55785c13c8ce32dcd9c01347161ccfb7e99`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8229a993149af923b3bf7a2bcba76d235e8346b22b8aafe804d45caf08b3e0`  
		Last Modified: Thu, 17 Sep 2026 21:47:17 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:09c3ee688cfed3e152b4573c88fb8030064c4bc560782707fb368d52a0257fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.7 KB (370666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5a4c76eae62bc50a9948fd6a37be4bf7bb747060418e65a168085dc4daa759`

```dockerfile
```

-	Layers:
	-	`sha256:4eeb3536bf317777be8c060bd0dd7b76348f5eb0feca28402d3c29cf6f16ab59`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
		Size: 355.3 KB (355329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4643a1de8ded522a7dded831fe49eb99e1a8fb29c0fbdd663d5922701312955`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
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
$ docker pull kapacitor@sha256:53a61e1504277171dcb1599322ba93efb99175710075a6debe276be51d739ba3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:f3cf13937284f91c2727aef8b58ff9b5b6ff7d16fcfd45ebc965ac4467c1f27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79130467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7842c8fae6cbb6a9c93fe717f8d0d9476f29c2d6a77ce9e589a28d5f5eb72229`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:01 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:47:02 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:47:06 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 17 Sep 2026 21:47:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 17 Sep 2026 21:47:06 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 17 Sep 2026 21:47:06 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 17 Sep 2026 21:47:06 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 17 Sep 2026 21:47:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:47:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:06 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a756823423bfb688401a5fe8b85226a8068a16ca9437e1fee494fc928a5a524`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e341478d6c934d223a4b91ebedf1041b18018fc90bb48f9f3ebcb2ed57e1f5d2`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
		Size: 249.3 KB (249333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a04a8d3f42decd20ee6bc86813be2f65a080c6eee3a4296d258ee3a233ff7ec`  
		Last Modified: Thu, 17 Sep 2026 21:47:18 GMT  
		Size: 75.0 MB (75030618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f9231308241ac7e9c90db459ecb55785c13c8ce32dcd9c01347161ccfb7e99`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8229a993149af923b3bf7a2bcba76d235e8346b22b8aafe804d45caf08b3e0`  
		Last Modified: Thu, 17 Sep 2026 21:47:17 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:09c3ee688cfed3e152b4573c88fb8030064c4bc560782707fb368d52a0257fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.7 KB (370666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5a4c76eae62bc50a9948fd6a37be4bf7bb747060418e65a168085dc4daa759`

```dockerfile
```

-	Layers:
	-	`sha256:4eeb3536bf317777be8c060bd0dd7b76348f5eb0feca28402d3c29cf6f16ab59`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
		Size: 355.3 KB (355329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4643a1de8ded522a7dded831fe49eb99e1a8fb29c0fbdd663d5922701312955`  
		Last Modified: Thu, 17 Sep 2026 21:47:16 GMT  
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
$ docker pull kapacitor@sha256:0d9418b686b32d0287aec27c429c7d62d5dced068a7517bff3f8e43d15fcc659
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:dd3ad929b77b73a2298c34bf45567d495069e1ee93a230bb06465fa8740ca95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101694584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599dd9ee001ff84967f6a3a267239d6233826483620ac69890e4531a61bf2475`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 17:43:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 17:43:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:43:44 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:43:44 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:43:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:43:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63da2a6bbe2850468098d1cb11ed5d0d88c4a0d34e9a39e9dcdf28f20bcabc25`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1acb61cd457a8e2c081d346844911f066d7228e9a4dde8caf160cabfa7a487d`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 296.7 KB (296661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bad43c6e04406de9ff8e56739b148b4431ef443d53653c97eeb3597445e3d8a`  
		Last Modified: Fri, 16 Oct 2026 17:44:04 GMT  
		Size: 97.5 MB (97547385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af12a443f3c373d2c3378edb5a6de614275a5290e3b537bdaed765506ae2c60`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45905d946177276487fd5b23ad7ae69c954fe6cf5ce67b37ff7167e42dae57e5`  
		Last Modified: Fri, 16 Oct 2026 17:44:02 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:bbdade624cb9d7876f01c6f53f6f155f0056d75fcc700cd6b7c6f5b9a05e2347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 KB (405703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f911bfd9aa41768cd275ecd16fada6f7ec6fb74897bcdf20039988e88046b8be`

```dockerfile
```

-	Layers:
	-	`sha256:0e898503a90ea437a15062dd17b8c6b7b3811b37b142e6a23fe0eb1ba1443ad9`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 390.1 KB (390062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1837a78a10f48625fc9a4094e54a29fbe5944a4aa477d0c7fb4fa7969a6e9ea0`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
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
$ docker pull kapacitor@sha256:0d9418b686b32d0287aec27c429c7d62d5dced068a7517bff3f8e43d15fcc659
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:dd3ad929b77b73a2298c34bf45567d495069e1ee93a230bb06465fa8740ca95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101694584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599dd9ee001ff84967f6a3a267239d6233826483620ac69890e4531a61bf2475`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 17:43:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 17:43:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:43:44 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:43:44 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:43:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:43:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63da2a6bbe2850468098d1cb11ed5d0d88c4a0d34e9a39e9dcdf28f20bcabc25`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1acb61cd457a8e2c081d346844911f066d7228e9a4dde8caf160cabfa7a487d`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 296.7 KB (296661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bad43c6e04406de9ff8e56739b148b4431ef443d53653c97eeb3597445e3d8a`  
		Last Modified: Fri, 16 Oct 2026 17:44:04 GMT  
		Size: 97.5 MB (97547385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af12a443f3c373d2c3378edb5a6de614275a5290e3b537bdaed765506ae2c60`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45905d946177276487fd5b23ad7ae69c954fe6cf5ce67b37ff7167e42dae57e5`  
		Last Modified: Fri, 16 Oct 2026 17:44:02 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:bbdade624cb9d7876f01c6f53f6f155f0056d75fcc700cd6b7c6f5b9a05e2347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 KB (405703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f911bfd9aa41768cd275ecd16fada6f7ec6fb74897bcdf20039988e88046b8be`

```dockerfile
```

-	Layers:
	-	`sha256:0e898503a90ea437a15062dd17b8c6b7b3811b37b142e6a23fe0eb1ba1443ad9`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 390.1 KB (390062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1837a78a10f48625fc9a4094e54a29fbe5944a4aa477d0c7fb4fa7969a6e9ea0`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:0d9418b686b32d0287aec27c429c7d62d5dced068a7517bff3f8e43d15fcc659
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:dd3ad929b77b73a2298c34bf45567d495069e1ee93a230bb06465fa8740ca95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101694584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599dd9ee001ff84967f6a3a267239d6233826483620ac69890e4531a61bf2475`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 17:43:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 17:43:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:43:44 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:43:44 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:43:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:43:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:43:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63da2a6bbe2850468098d1cb11ed5d0d88c4a0d34e9a39e9dcdf28f20bcabc25`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1acb61cd457a8e2c081d346844911f066d7228e9a4dde8caf160cabfa7a487d`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 296.7 KB (296661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bad43c6e04406de9ff8e56739b148b4431ef443d53653c97eeb3597445e3d8a`  
		Last Modified: Fri, 16 Oct 2026 17:44:04 GMT  
		Size: 97.5 MB (97547385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af12a443f3c373d2c3378edb5a6de614275a5290e3b537bdaed765506ae2c60`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45905d946177276487fd5b23ad7ae69c954fe6cf5ce67b37ff7167e42dae57e5`  
		Last Modified: Fri, 16 Oct 2026 17:44:02 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:bbdade624cb9d7876f01c6f53f6f155f0056d75fcc700cd6b7c6f5b9a05e2347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 KB (405703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f911bfd9aa41768cd275ecd16fada6f7ec6fb74897bcdf20039988e88046b8be`

```dockerfile
```

-	Layers:
	-	`sha256:0e898503a90ea437a15062dd17b8c6b7b3811b37b142e6a23fe0eb1ba1443ad9`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 390.1 KB (390062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1837a78a10f48625fc9a4094e54a29fbe5944a4aa477d0c7fb4fa7969a6e9ea0`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
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
