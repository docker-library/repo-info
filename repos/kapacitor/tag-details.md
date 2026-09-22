<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.7`](#kapacitor17)
-	[`kapacitor:1.7-alpine`](#kapacitor17-alpine)
-	[`kapacitor:1.7.7`](#kapacitor177)
-	[`kapacitor:1.7.7-alpine`](#kapacitor177-alpine)
-	[`kapacitor:1.8`](#kapacitor18)
-	[`kapacitor:1.8-alpine`](#kapacitor18-alpine)
-	[`kapacitor:1.8.7`](#kapacitor187)
-	[`kapacitor:1.8.7-alpine`](#kapacitor187-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.7`

```console
$ docker pull kapacitor@sha256:9ff2e544a9451417dcfcb2424f45ee66daf6a367eadccd1a46df3de3033023b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:e0bc43b951f7a5638c65a385a4de750943e3af306f7aaafc824eb09225756044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163142769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221f8b206ff9aca28d432690fa85ccc0a5c29e9198cb7d4d4adde49b7a86d3d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:24:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 09 Sep 2026 03:24:53 GMT
ENV KAPACITOR_VERSION=1.7.7
# Wed, 09 Sep 2026 03:24:53 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 09 Sep 2026 03:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 09 Sep 2026 03:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 09 Sep 2026 03:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 09 Sep 2026 03:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 03:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90fecedfe20ed1b059a1282e417bbe472f32a7e45e8b487cd4cd7452d2191de5`  
		Last Modified: Wed, 09 Sep 2026 03:25:08 GMT  
		Size: 54.3 MB (54275015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435020eaa7166b4de3e4becb875ece30c5285588fc40d4874b480258f85a80bc`  
		Last Modified: Wed, 09 Sep 2026 03:25:08 GMT  
		Size: 72.1 MB (72051697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47567a59049bcfe3503ea0748987d0facfa764713f5a18d844ed0730e8cdd95b`  
		Last Modified: Wed, 09 Sep 2026 03:25:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce8203ce06230044183f7133c49e91ab55f04d59b70f3238fb9b3da36b941c6`  
		Last Modified: Wed, 09 Sep 2026 03:25:05 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:48018ba26e5ed40805ce47b11f99ce1b041a905547c6598075e1cda41c6905d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d99cb4ad8895d1c27ccf3499756cf27ecac7ab13134ae8d105d1635a6081418`

```dockerfile
```

-	Layers:
	-	`sha256:c7c8d56d93da0a5d70ecfc644244cd89a40e56c60ae13ae6001a6c959dce3168`  
		Last Modified: Wed, 09 Sep 2026 03:25:06 GMT  
		Size: 3.7 MB (3700456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b36e66ba43c7308bd0c7589e401421aeaf5cc2a0f4f04c45c7638682d28e33d0`  
		Last Modified: Wed, 09 Sep 2026 03:25:05 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:8f4718239ae1862988dd8b878c86ceefdec7db4cb548281fb451e6a1b8dfaa57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156126917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df2af37ec7752b6e0fc7c9dafd5dd9c827a466b8b360d27ce796b5649cc9270`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:29:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
ENV KAPACITOR_VERSION=1.7.7
# Wed, 09 Sep 2026 02:29:33 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 09 Sep 2026 02:29:33 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 09 Sep 2026 02:29:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:33 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e9207c7b4cf547b4c9c2a30d7b8c9e0cbd316dfbb3845a9b10107f2353ca01`  
		Last Modified: Wed, 09 Sep 2026 02:29:48 GMT  
		Size: 53.6 MB (53609786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273e8466db1dc99e54f4b7d152aeaa64d46956d52702bd055d40bede7269fc5`  
		Last Modified: Wed, 09 Sep 2026 02:29:48 GMT  
		Size: 67.8 MB (67814163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d66a17533335f652425b770d4450fd3e6a767577fda7d8ebbbf37280637e4b`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c4f5ad4b7ec95d8e8e0b11afaf09d4f35a15c08fcb35fcd27271ea6aa015bf`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:e3b13dc5df82bd58185eb5d0e2798aa5eaedb850df68fd96db8140f3aababb6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b927ec360fc7f408afab05d76ecee321e2999e2fb38b6962ae92e3a48b1b3b45`

```dockerfile
```

-	Layers:
	-	`sha256:fc55bba6959753de0fbdd614b5e84dd042190fac37ceb3f58ab1a100ac200c92`  
		Last Modified: Wed, 09 Sep 2026 02:29:46 GMT  
		Size: 3.7 MB (3699918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:447bac0f26412261e2d678270496275703f0798182a41aecddddefea60d1139e`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
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
$ docker pull kapacitor@sha256:9ff2e544a9451417dcfcb2424f45ee66daf6a367eadccd1a46df3de3033023b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:e0bc43b951f7a5638c65a385a4de750943e3af306f7aaafc824eb09225756044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163142769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221f8b206ff9aca28d432690fa85ccc0a5c29e9198cb7d4d4adde49b7a86d3d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:24:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 09 Sep 2026 03:24:53 GMT
ENV KAPACITOR_VERSION=1.7.7
# Wed, 09 Sep 2026 03:24:53 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 09 Sep 2026 03:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 09 Sep 2026 03:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 09 Sep 2026 03:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 09 Sep 2026 03:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 03:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90fecedfe20ed1b059a1282e417bbe472f32a7e45e8b487cd4cd7452d2191de5`  
		Last Modified: Wed, 09 Sep 2026 03:25:08 GMT  
		Size: 54.3 MB (54275015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435020eaa7166b4de3e4becb875ece30c5285588fc40d4874b480258f85a80bc`  
		Last Modified: Wed, 09 Sep 2026 03:25:08 GMT  
		Size: 72.1 MB (72051697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47567a59049bcfe3503ea0748987d0facfa764713f5a18d844ed0730e8cdd95b`  
		Last Modified: Wed, 09 Sep 2026 03:25:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce8203ce06230044183f7133c49e91ab55f04d59b70f3238fb9b3da36b941c6`  
		Last Modified: Wed, 09 Sep 2026 03:25:05 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:48018ba26e5ed40805ce47b11f99ce1b041a905547c6598075e1cda41c6905d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d99cb4ad8895d1c27ccf3499756cf27ecac7ab13134ae8d105d1635a6081418`

```dockerfile
```

-	Layers:
	-	`sha256:c7c8d56d93da0a5d70ecfc644244cd89a40e56c60ae13ae6001a6c959dce3168`  
		Last Modified: Wed, 09 Sep 2026 03:25:06 GMT  
		Size: 3.7 MB (3700456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b36e66ba43c7308bd0c7589e401421aeaf5cc2a0f4f04c45c7638682d28e33d0`  
		Last Modified: Wed, 09 Sep 2026 03:25:05 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:8f4718239ae1862988dd8b878c86ceefdec7db4cb548281fb451e6a1b8dfaa57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156126917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df2af37ec7752b6e0fc7c9dafd5dd9c827a466b8b360d27ce796b5649cc9270`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:29:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
ENV KAPACITOR_VERSION=1.7.7
# Wed, 09 Sep 2026 02:29:33 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 09 Sep 2026 02:29:33 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 09 Sep 2026 02:29:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:33 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e9207c7b4cf547b4c9c2a30d7b8c9e0cbd316dfbb3845a9b10107f2353ca01`  
		Last Modified: Wed, 09 Sep 2026 02:29:48 GMT  
		Size: 53.6 MB (53609786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273e8466db1dc99e54f4b7d152aeaa64d46956d52702bd055d40bede7269fc5`  
		Last Modified: Wed, 09 Sep 2026 02:29:48 GMT  
		Size: 67.8 MB (67814163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d66a17533335f652425b770d4450fd3e6a767577fda7d8ebbbf37280637e4b`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c4f5ad4b7ec95d8e8e0b11afaf09d4f35a15c08fcb35fcd27271ea6aa015bf`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:e3b13dc5df82bd58185eb5d0e2798aa5eaedb850df68fd96db8140f3aababb6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b927ec360fc7f408afab05d76ecee321e2999e2fb38b6962ae92e3a48b1b3b45`

```dockerfile
```

-	Layers:
	-	`sha256:fc55bba6959753de0fbdd614b5e84dd042190fac37ceb3f58ab1a100ac200c92`  
		Last Modified: Wed, 09 Sep 2026 02:29:46 GMT  
		Size: 3.7 MB (3699918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:447bac0f26412261e2d678270496275703f0798182a41aecddddefea60d1139e`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
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
$ docker pull kapacitor@sha256:6a0d8ea3b84038fafc7fbb2a01a410ccd7af9cf6901682c697281cfb21a0ed34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:2d4852a225afa0aeed6970d2fe657d5f674786f8578e1716cf15608a51ad7cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185782098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088d1c6058f25e297a27ce0c3a6ed98fca5f7f8b40f224511063f1e45d02ee5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:49:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:14 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:14 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af697603becfca452bf4011e4b9d627f68bbad203a36e0e6c352be8665f5643`  
		Last Modified: Tue, 22 Sep 2026 18:49:35 GMT  
		Size: 54.4 MB (54433339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af41f1101d1580286ad62d825758f6c817b1aa480561487efcd7f16e2c95f1cb`  
		Last Modified: Tue, 22 Sep 2026 18:49:36 GMT  
		Size: 94.5 MB (94532703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b9f2dc74941cdecd581387bac3cbe8c98f67505d700a7ad32871e4abde9246`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3291afe3300ad1a198a0ff09701a14af01200905e1a6884083e6fe14cd37af59`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:0a67fc93f70abbbbdde5bdc2b5aba8e2c840757b013e87a0b27a1922df180545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52490e95da82968d396287708f8ab95683505259937d7d706b3ec9f4a0e66c80`

```dockerfile
```

-	Layers:
	-	`sha256:ae522cb3e6af6d38f21d49ebdc7e2cc5c204dabb66d0fdbd1cf161f1eedea892`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 3.7 MB (3729244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0afa0d9a7e66ade5c2e58828ebebfbee5dca5ebcfdba20de30be6938d605d9b4`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:c37086d17db85963b85f5fa2bcdb71a15758496667d9e5509a103a2f6740db6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.7 MB (176730862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a854393f9cf55f444607c0defa2bdb9f7f41643d6882516543d6934c7c476a15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:49:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:35 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:35 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b4a2f041c3f18dacdeb06b6ee1d6ebf5b7737ad5d87730762ea407dff0a561`  
		Last Modified: Tue, 22 Sep 2026 18:49:55 GMT  
		Size: 53.8 MB (53794800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa32f47283c94b8f2aedd1b7c4c03619ec87df7d157290f72654231a0bcf5f0`  
		Last Modified: Tue, 22 Sep 2026 18:49:56 GMT  
		Size: 88.2 MB (88233090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92e45011170ea0e97b91fc87716671d8bc8460d72ead925dbf03e4140ee6ad5`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff97f0e0db6886d3ed445631b906b3479361225e34608bbf46ddb4f1451998e`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:9fbfe37335dbc1bcc7cf9626baf8ca62177e50e74a9fe09b955ef8984a909ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f4ce517e240761982b3f259c2b8f10b562d9188f33af29adaacf34fd60f170`

```dockerfile
```

-	Layers:
	-	`sha256:12d3dd3bb840f40ab8551d32b8147aa70f07ffcf18fa7fb70ce856eeefc154c0`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 3.7 MB (3728718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f607954e3c9bab27f286a0ecf67df2ad336c5c5056f48b696a6d17a29b18cd50`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8-alpine`

```console
$ docker pull kapacitor@sha256:b7359e163e1a0b5894db57a032e3fca074ddf07d06fb8b9e728272321fdcabd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:c9f50b21e739d4879f5c38ebe7877fef1dfdc49b2827642be18a68b459914627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101672191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad84a38f74190fa87e2ab20406dd66845ae8344ee1566f8810748753735fde46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:49:01 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:49:01 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:49:08 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:09 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:09 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99c8637e7ba83f82c8d299d34aa6d1ccdc55a75fc0d91ad21bb06333aa13602`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e7bfc63e194295ac3d922dbbfa8645d44b2304d8c747f1b70d90c15675897`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 296.7 KB (296654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9268f0ff3135b097c852ee6dd5d7b894e26b5b7056ee56e83a276d8820b4349d`  
		Last Modified: Tue, 22 Sep 2026 18:49:28 GMT  
		Size: 97.5 MB (97525000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33956ebab649be5edb2da8a727bff2d6a991c8eb618fc6453d4f000705f4e7`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2c6f4963bc9214e489feacbfbdf85581622b248d5fb11ab67e99e8b764b74e`  
		Last Modified: Tue, 22 Sep 2026 18:49:26 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:25bebc7256490c850df506dbcacaf7e908cb5eeb99ee897739bfa2b62ddfe981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 KB (405703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db08134b12ab2b4778d694c3ec3bf94db9558895e31506c87714607b10e9b36`

```dockerfile
```

-	Layers:
	-	`sha256:765824261d9abe26e4d6a9e8c17f3e4db9a795b246edf3e2e7fbd7a7937442de`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 390.1 KB (390062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1cdceefd447ba3615f5fd33866d2cf4382a96457454dfcf8726e5307de5dfe`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.7`

```console
$ docker pull kapacitor@sha256:6a0d8ea3b84038fafc7fbb2a01a410ccd7af9cf6901682c697281cfb21a0ed34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:2d4852a225afa0aeed6970d2fe657d5f674786f8578e1716cf15608a51ad7cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185782098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088d1c6058f25e297a27ce0c3a6ed98fca5f7f8b40f224511063f1e45d02ee5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:49:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:14 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:14 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af697603becfca452bf4011e4b9d627f68bbad203a36e0e6c352be8665f5643`  
		Last Modified: Tue, 22 Sep 2026 18:49:35 GMT  
		Size: 54.4 MB (54433339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af41f1101d1580286ad62d825758f6c817b1aa480561487efcd7f16e2c95f1cb`  
		Last Modified: Tue, 22 Sep 2026 18:49:36 GMT  
		Size: 94.5 MB (94532703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b9f2dc74941cdecd581387bac3cbe8c98f67505d700a7ad32871e4abde9246`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3291afe3300ad1a198a0ff09701a14af01200905e1a6884083e6fe14cd37af59`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:0a67fc93f70abbbbdde5bdc2b5aba8e2c840757b013e87a0b27a1922df180545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52490e95da82968d396287708f8ab95683505259937d7d706b3ec9f4a0e66c80`

```dockerfile
```

-	Layers:
	-	`sha256:ae522cb3e6af6d38f21d49ebdc7e2cc5c204dabb66d0fdbd1cf161f1eedea892`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 3.7 MB (3729244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0afa0d9a7e66ade5c2e58828ebebfbee5dca5ebcfdba20de30be6938d605d9b4`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:c37086d17db85963b85f5fa2bcdb71a15758496667d9e5509a103a2f6740db6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.7 MB (176730862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a854393f9cf55f444607c0defa2bdb9f7f41643d6882516543d6934c7c476a15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:49:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:35 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:35 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b4a2f041c3f18dacdeb06b6ee1d6ebf5b7737ad5d87730762ea407dff0a561`  
		Last Modified: Tue, 22 Sep 2026 18:49:55 GMT  
		Size: 53.8 MB (53794800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa32f47283c94b8f2aedd1b7c4c03619ec87df7d157290f72654231a0bcf5f0`  
		Last Modified: Tue, 22 Sep 2026 18:49:56 GMT  
		Size: 88.2 MB (88233090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92e45011170ea0e97b91fc87716671d8bc8460d72ead925dbf03e4140ee6ad5`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff97f0e0db6886d3ed445631b906b3479361225e34608bbf46ddb4f1451998e`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:9fbfe37335dbc1bcc7cf9626baf8ca62177e50e74a9fe09b955ef8984a909ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f4ce517e240761982b3f259c2b8f10b562d9188f33af29adaacf34fd60f170`

```dockerfile
```

-	Layers:
	-	`sha256:12d3dd3bb840f40ab8551d32b8147aa70f07ffcf18fa7fb70ce856eeefc154c0`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 3.7 MB (3728718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f607954e3c9bab27f286a0ecf67df2ad336c5c5056f48b696a6d17a29b18cd50`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.7-alpine`

```console
$ docker pull kapacitor@sha256:b7359e163e1a0b5894db57a032e3fca074ddf07d06fb8b9e728272321fdcabd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:c9f50b21e739d4879f5c38ebe7877fef1dfdc49b2827642be18a68b459914627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101672191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad84a38f74190fa87e2ab20406dd66845ae8344ee1566f8810748753735fde46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:49:01 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:49:01 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:49:08 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:09 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:09 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99c8637e7ba83f82c8d299d34aa6d1ccdc55a75fc0d91ad21bb06333aa13602`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e7bfc63e194295ac3d922dbbfa8645d44b2304d8c747f1b70d90c15675897`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 296.7 KB (296654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9268f0ff3135b097c852ee6dd5d7b894e26b5b7056ee56e83a276d8820b4349d`  
		Last Modified: Tue, 22 Sep 2026 18:49:28 GMT  
		Size: 97.5 MB (97525000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33956ebab649be5edb2da8a727bff2d6a991c8eb618fc6453d4f000705f4e7`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2c6f4963bc9214e489feacbfbdf85581622b248d5fb11ab67e99e8b764b74e`  
		Last Modified: Tue, 22 Sep 2026 18:49:26 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:25bebc7256490c850df506dbcacaf7e908cb5eeb99ee897739bfa2b62ddfe981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 KB (405703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db08134b12ab2b4778d694c3ec3bf94db9558895e31506c87714607b10e9b36`

```dockerfile
```

-	Layers:
	-	`sha256:765824261d9abe26e4d6a9e8c17f3e4db9a795b246edf3e2e7fbd7a7937442de`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 390.1 KB (390062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1cdceefd447ba3615f5fd33866d2cf4382a96457454dfcf8726e5307de5dfe`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:b7359e163e1a0b5894db57a032e3fca074ddf07d06fb8b9e728272321fdcabd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:c9f50b21e739d4879f5c38ebe7877fef1dfdc49b2827642be18a68b459914627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101672191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad84a38f74190fa87e2ab20406dd66845ae8344ee1566f8810748753735fde46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:49:01 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:49:01 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:49:08 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:09 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:09 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99c8637e7ba83f82c8d299d34aa6d1ccdc55a75fc0d91ad21bb06333aa13602`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e7bfc63e194295ac3d922dbbfa8645d44b2304d8c747f1b70d90c15675897`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 296.7 KB (296654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9268f0ff3135b097c852ee6dd5d7b894e26b5b7056ee56e83a276d8820b4349d`  
		Last Modified: Tue, 22 Sep 2026 18:49:28 GMT  
		Size: 97.5 MB (97525000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33956ebab649be5edb2da8a727bff2d6a991c8eb618fc6453d4f000705f4e7`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2c6f4963bc9214e489feacbfbdf85581622b248d5fb11ab67e99e8b764b74e`  
		Last Modified: Tue, 22 Sep 2026 18:49:26 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:25bebc7256490c850df506dbcacaf7e908cb5eeb99ee897739bfa2b62ddfe981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 KB (405703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db08134b12ab2b4778d694c3ec3bf94db9558895e31506c87714607b10e9b36`

```dockerfile
```

-	Layers:
	-	`sha256:765824261d9abe26e4d6a9e8c17f3e4db9a795b246edf3e2e7fbd7a7937442de`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 390.1 KB (390062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1cdceefd447ba3615f5fd33866d2cf4382a96457454dfcf8726e5307de5dfe`  
		Last Modified: Tue, 22 Sep 2026 18:49:25 GMT  
		Size: 15.6 KB (15641 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:6a0d8ea3b84038fafc7fbb2a01a410ccd7af9cf6901682c697281cfb21a0ed34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:2d4852a225afa0aeed6970d2fe657d5f674786f8578e1716cf15608a51ad7cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185782098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088d1c6058f25e297a27ce0c3a6ed98fca5f7f8b40f224511063f1e45d02ee5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:49:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:14 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:14 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af697603becfca452bf4011e4b9d627f68bbad203a36e0e6c352be8665f5643`  
		Last Modified: Tue, 22 Sep 2026 18:49:35 GMT  
		Size: 54.4 MB (54433339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af41f1101d1580286ad62d825758f6c817b1aa480561487efcd7f16e2c95f1cb`  
		Last Modified: Tue, 22 Sep 2026 18:49:36 GMT  
		Size: 94.5 MB (94532703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b9f2dc74941cdecd581387bac3cbe8c98f67505d700a7ad32871e4abde9246`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3291afe3300ad1a198a0ff09701a14af01200905e1a6884083e6fe14cd37af59`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:0a67fc93f70abbbbdde5bdc2b5aba8e2c840757b013e87a0b27a1922df180545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52490e95da82968d396287708f8ab95683505259937d7d706b3ec9f4a0e66c80`

```dockerfile
```

-	Layers:
	-	`sha256:ae522cb3e6af6d38f21d49ebdc7e2cc5c204dabb66d0fdbd1cf161f1eedea892`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 3.7 MB (3729244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0afa0d9a7e66ade5c2e58828ebebfbee5dca5ebcfdba20de30be6938d605d9b4`  
		Last Modified: Tue, 22 Sep 2026 18:49:33 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:c37086d17db85963b85f5fa2bcdb71a15758496667d9e5509a103a2f6740db6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.7 MB (176730862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a854393f9cf55f444607c0defa2bdb9f7f41643d6882516543d6934c7c476a15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:49:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
ENV KAPACITOR_VERSION=1.8.7
# Tue, 22 Sep 2026 18:49:35 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 22 Sep 2026 18:49:35 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 22 Sep 2026 18:49:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b4a2f041c3f18dacdeb06b6ee1d6ebf5b7737ad5d87730762ea407dff0a561`  
		Last Modified: Tue, 22 Sep 2026 18:49:55 GMT  
		Size: 53.8 MB (53794800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa32f47283c94b8f2aedd1b7c4c03619ec87df7d157290f72654231a0bcf5f0`  
		Last Modified: Tue, 22 Sep 2026 18:49:56 GMT  
		Size: 88.2 MB (88233090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92e45011170ea0e97b91fc87716671d8bc8460d72ead925dbf03e4140ee6ad5`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff97f0e0db6886d3ed445631b906b3479361225e34608bbf46ddb4f1451998e`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:9fbfe37335dbc1bcc7cf9626baf8ca62177e50e74a9fe09b955ef8984a909ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f4ce517e240761982b3f259c2b8f10b562d9188f33af29adaacf34fd60f170`

```dockerfile
```

-	Layers:
	-	`sha256:12d3dd3bb840f40ab8551d32b8147aa70f07ffcf18fa7fb70ce856eeefc154c0`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 3.7 MB (3728718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f607954e3c9bab27f286a0ecf67df2ad336c5c5056f48b696a6d17a29b18cd50`  
		Last Modified: Tue, 22 Sep 2026 18:49:53 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
