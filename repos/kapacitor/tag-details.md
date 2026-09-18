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
$ docker pull kapacitor@sha256:044100f53f3285f3f5f1265efe35a2adcac5e1fe0d1347aabe7f9d32f36fcefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:db3c411129ee508231c44c4ff5281945c6e75db560fc2600bfbe42dae0de414e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184262342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96716cc409276b26ae2041b9c7d6960aa638125e7e591449e888bbc550745291`
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
# Wed, 09 Sep 2026 03:24:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
ENV KAPACITOR_VERSION=1.8.6
# Wed, 09 Sep 2026 03:24:55 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 09 Sep 2026 03:24:55 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 09 Sep 2026 03:24:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:24:55 GMT
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
	-	`sha256:c09cbf60981817fbcff5e5181f1eeda2aefc180781e75f6b23cf8bc86e12f5a4`  
		Last Modified: Wed, 09 Sep 2026 03:25:14 GMT  
		Size: 54.3 MB (54275002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4f0b4386df1aa23a4260a8183b1a4b9af3d48841aa919c94da6c1980f7a637`  
		Last Modified: Wed, 09 Sep 2026 03:25:15 GMT  
		Size: 93.2 MB (93171284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e070805d825d6393557ea79d28de2bb06d84b575b950935a9bd4ef3038a69b8`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db00765d6e994905a2866659b72fb8823b7ca55e6e0ff79bc0a78738b131855`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:314b3f2af9e76bfce09358e4b49c675c5769a1aa84d2e3898ea8a2c485c1dd10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524b92229f7145bae7f3b9eee411c749e188abec25d32a2018a2540ede613b06`

```dockerfile
```

-	Layers:
	-	`sha256:67876d89d757eff672c9d92e3f754a2d1f6d277c86a2845931834ba1eb209bb4`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 3.7 MB (3730041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d9ee9a989b5fd3ea3bcff69e9972d429f3fee435bebe19f9426ebf9c79911a`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:221ee4864ad62bf1424ba0f9ea9f6d86fd4459a1cf3c1a2551e6dad76b41635d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175465298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3034c5778f47a1b655f6ee44bb682943aff1839ef21d7fd4041bc9b39f1abd1c`
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
ENV KAPACITOR_VERSION=1.8.6
# Wed, 09 Sep 2026 02:29:33 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
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
	-	`sha256:ec1361cc4842850a93918e1e86dad46f8f3e002ac5656d83226b6e71852671eb`  
		Last Modified: Wed, 09 Sep 2026 02:29:54 GMT  
		Size: 53.6 MB (53609796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11186490c8758a3f02bf7e43407d1e177bcaad6c73c75f354547500c32d17fa8`  
		Last Modified: Wed, 09 Sep 2026 02:29:54 GMT  
		Size: 87.2 MB (87152535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aded3663baf1728e707f8f83ca5e5d65749f7f24c1073ea34befee4d6dcafea`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c4f5ad4b7ec95d8e8e0b11afaf09d4f35a15c08fcb35fcd27271ea6aa015bf`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:d840e58ffbe15e59f75a987079699a0817506101eb27dc6ff9bef29cf15ee675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efba3a19e01140e2a628dd727559172e63883fe229080409135c9892c093bfa`

```dockerfile
```

-	Layers:
	-	`sha256:feeb1f23deb7d438a135f8fcd0cdfbf8e86ac7ffe7007fa33bbaa54d6468d065`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.7 MB (3729515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67999f592053aacfbc5fbfab76cf25ad10da0abfdeb1eefa5df478da0b1acfb6`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8-alpine`

```console
$ docker pull kapacitor@sha256:2a44b2c76f47ebbf726e9122ac9aacee8c6f248976c57cde77f1e215e3e456d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0669a7ebbbe99c588f9ba6337eafa56792da354f3216c96b51fda89d8b5850f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.3 MB (100307272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e705f809e9728222517a200c971ab2f2d3cfe1e13bd6dec42ecc25a9609aa7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ENV KAPACITOR_VERSION=1.8.6
# Thu, 17 Sep 2026 21:47:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 17 Sep 2026 21:47:12 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 17 Sep 2026 21:47:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:12 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50e3fd511a7d2c74212813e90f4e1319640de782176e2c3cf4aef845d68a37b`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97f95609d764155ac30a2a43a358cb651335cf6383831515676a27a1712dde3`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 296.6 KB (296650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5973c9349803e3541f35bb312c4af42def2afa6d2289c9d17ded17976782f114`  
		Last Modified: Thu, 17 Sep 2026 21:47:29 GMT  
		Size: 96.2 MB (96160085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c03ae7a919dcf28e656342c99b68712978bc0464f93bde361d4e806c26ddd6f`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdf54d59e027e7fcf89a7c7766b512ca7a4d23721153e8030f652b127615887`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:13f128101f0b4b899833b5ddd42001d22a19fe8d2e71f911c9aeaaf7adc3130a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.5 KB (406499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0266073eac8780854d07726f3efaf34372d4ab92d75eab46650de464a791fa`

```dockerfile
```

-	Layers:
	-	`sha256:d5c6a26fd0f77f63c8307fade8e481089d556c3e9b2f855e8aa6126d9c9c19d5`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 390.9 KB (390859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fda756deb357b51d252f5d77897e433c267e44941ec6466fb353db2c36eee3d`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 15.6 KB (15640 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.6`

```console
$ docker pull kapacitor@sha256:044100f53f3285f3f5f1265efe35a2adcac5e1fe0d1347aabe7f9d32f36fcefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.6` - linux; amd64

```console
$ docker pull kapacitor@sha256:db3c411129ee508231c44c4ff5281945c6e75db560fc2600bfbe42dae0de414e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184262342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96716cc409276b26ae2041b9c7d6960aa638125e7e591449e888bbc550745291`
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
# Wed, 09 Sep 2026 03:24:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
ENV KAPACITOR_VERSION=1.8.6
# Wed, 09 Sep 2026 03:24:55 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 09 Sep 2026 03:24:55 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 09 Sep 2026 03:24:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:24:55 GMT
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
	-	`sha256:c09cbf60981817fbcff5e5181f1eeda2aefc180781e75f6b23cf8bc86e12f5a4`  
		Last Modified: Wed, 09 Sep 2026 03:25:14 GMT  
		Size: 54.3 MB (54275002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4f0b4386df1aa23a4260a8183b1a4b9af3d48841aa919c94da6c1980f7a637`  
		Last Modified: Wed, 09 Sep 2026 03:25:15 GMT  
		Size: 93.2 MB (93171284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e070805d825d6393557ea79d28de2bb06d84b575b950935a9bd4ef3038a69b8`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db00765d6e994905a2866659b72fb8823b7ca55e6e0ff79bc0a78738b131855`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6` - unknown; unknown

```console
$ docker pull kapacitor@sha256:314b3f2af9e76bfce09358e4b49c675c5769a1aa84d2e3898ea8a2c485c1dd10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524b92229f7145bae7f3b9eee411c749e188abec25d32a2018a2540ede613b06`

```dockerfile
```

-	Layers:
	-	`sha256:67876d89d757eff672c9d92e3f754a2d1f6d277c86a2845931834ba1eb209bb4`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 3.7 MB (3730041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d9ee9a989b5fd3ea3bcff69e9972d429f3fee435bebe19f9426ebf9c79911a`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.6` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:221ee4864ad62bf1424ba0f9ea9f6d86fd4459a1cf3c1a2551e6dad76b41635d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175465298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3034c5778f47a1b655f6ee44bb682943aff1839ef21d7fd4041bc9b39f1abd1c`
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
ENV KAPACITOR_VERSION=1.8.6
# Wed, 09 Sep 2026 02:29:33 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
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
	-	`sha256:ec1361cc4842850a93918e1e86dad46f8f3e002ac5656d83226b6e71852671eb`  
		Last Modified: Wed, 09 Sep 2026 02:29:54 GMT  
		Size: 53.6 MB (53609796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11186490c8758a3f02bf7e43407d1e177bcaad6c73c75f354547500c32d17fa8`  
		Last Modified: Wed, 09 Sep 2026 02:29:54 GMT  
		Size: 87.2 MB (87152535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aded3663baf1728e707f8f83ca5e5d65749f7f24c1073ea34befee4d6dcafea`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c4f5ad4b7ec95d8e8e0b11afaf09d4f35a15c08fcb35fcd27271ea6aa015bf`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6` - unknown; unknown

```console
$ docker pull kapacitor@sha256:d840e58ffbe15e59f75a987079699a0817506101eb27dc6ff9bef29cf15ee675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efba3a19e01140e2a628dd727559172e63883fe229080409135c9892c093bfa`

```dockerfile
```

-	Layers:
	-	`sha256:feeb1f23deb7d438a135f8fcd0cdfbf8e86ac7ffe7007fa33bbaa54d6468d065`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.7 MB (3729515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67999f592053aacfbc5fbfab76cf25ad10da0abfdeb1eefa5df478da0b1acfb6`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.6-alpine`

```console
$ docker pull kapacitor@sha256:2a44b2c76f47ebbf726e9122ac9aacee8c6f248976c57cde77f1e215e3e456d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8.6-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0669a7ebbbe99c588f9ba6337eafa56792da354f3216c96b51fda89d8b5850f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.3 MB (100307272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e705f809e9728222517a200c971ab2f2d3cfe1e13bd6dec42ecc25a9609aa7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ENV KAPACITOR_VERSION=1.8.6
# Thu, 17 Sep 2026 21:47:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 17 Sep 2026 21:47:12 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 17 Sep 2026 21:47:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:12 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50e3fd511a7d2c74212813e90f4e1319640de782176e2c3cf4aef845d68a37b`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97f95609d764155ac30a2a43a358cb651335cf6383831515676a27a1712dde3`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 296.6 KB (296650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5973c9349803e3541f35bb312c4af42def2afa6d2289c9d17ded17976782f114`  
		Last Modified: Thu, 17 Sep 2026 21:47:29 GMT  
		Size: 96.2 MB (96160085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c03ae7a919dcf28e656342c99b68712978bc0464f93bde361d4e806c26ddd6f`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdf54d59e027e7fcf89a7c7766b512ca7a4d23721153e8030f652b127615887`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:13f128101f0b4b899833b5ddd42001d22a19fe8d2e71f911c9aeaaf7adc3130a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.5 KB (406499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0266073eac8780854d07726f3efaf34372d4ab92d75eab46650de464a791fa`

```dockerfile
```

-	Layers:
	-	`sha256:d5c6a26fd0f77f63c8307fade8e481089d556c3e9b2f855e8aa6126d9c9c19d5`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 390.9 KB (390859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fda756deb357b51d252f5d77897e433c267e44941ec6466fb353db2c36eee3d`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 15.6 KB (15640 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:2a44b2c76f47ebbf726e9122ac9aacee8c6f248976c57cde77f1e215e3e456d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0669a7ebbbe99c588f9ba6337eafa56792da354f3216c96b51fda89d8b5850f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.3 MB (100307272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e705f809e9728222517a200c971ab2f2d3cfe1e13bd6dec42ecc25a9609aa7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ENV KAPACITOR_VERSION=1.8.6
# Thu, 17 Sep 2026 21:47:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 17 Sep 2026 21:47:12 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 17 Sep 2026 21:47:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:12 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50e3fd511a7d2c74212813e90f4e1319640de782176e2c3cf4aef845d68a37b`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97f95609d764155ac30a2a43a358cb651335cf6383831515676a27a1712dde3`  
		Last Modified: Thu, 17 Sep 2026 21:39:53 GMT  
		Size: 296.6 KB (296650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5973c9349803e3541f35bb312c4af42def2afa6d2289c9d17ded17976782f114`  
		Last Modified: Thu, 17 Sep 2026 21:47:29 GMT  
		Size: 96.2 MB (96160085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c03ae7a919dcf28e656342c99b68712978bc0464f93bde361d4e806c26ddd6f`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdf54d59e027e7fcf89a7c7766b512ca7a4d23721153e8030f652b127615887`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:13f128101f0b4b899833b5ddd42001d22a19fe8d2e71f911c9aeaaf7adc3130a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.5 KB (406499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0266073eac8780854d07726f3efaf34372d4ab92d75eab46650de464a791fa`

```dockerfile
```

-	Layers:
	-	`sha256:d5c6a26fd0f77f63c8307fade8e481089d556c3e9b2f855e8aa6126d9c9c19d5`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 390.9 KB (390859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fda756deb357b51d252f5d77897e433c267e44941ec6466fb353db2c36eee3d`  
		Last Modified: Thu, 17 Sep 2026 21:47:27 GMT  
		Size: 15.6 KB (15640 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:044100f53f3285f3f5f1265efe35a2adcac5e1fe0d1347aabe7f9d32f36fcefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:db3c411129ee508231c44c4ff5281945c6e75db560fc2600bfbe42dae0de414e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184262342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96716cc409276b26ae2041b9c7d6960aa638125e7e591449e888bbc550745291`
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
# Wed, 09 Sep 2026 03:24:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
ENV KAPACITOR_VERSION=1.8.6
# Wed, 09 Sep 2026 03:24:55 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 09 Sep 2026 03:24:55 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 09 Sep 2026 03:24:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 03:24:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:24:55 GMT
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
	-	`sha256:c09cbf60981817fbcff5e5181f1eeda2aefc180781e75f6b23cf8bc86e12f5a4`  
		Last Modified: Wed, 09 Sep 2026 03:25:14 GMT  
		Size: 54.3 MB (54275002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4f0b4386df1aa23a4260a8183b1a4b9af3d48841aa919c94da6c1980f7a637`  
		Last Modified: Wed, 09 Sep 2026 03:25:15 GMT  
		Size: 93.2 MB (93171284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e070805d825d6393557ea79d28de2bb06d84b575b950935a9bd4ef3038a69b8`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db00765d6e994905a2866659b72fb8823b7ca55e6e0ff79bc0a78738b131855`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:314b3f2af9e76bfce09358e4b49c675c5769a1aa84d2e3898ea8a2c485c1dd10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524b92229f7145bae7f3b9eee411c749e188abec25d32a2018a2540ede613b06`

```dockerfile
```

-	Layers:
	-	`sha256:67876d89d757eff672c9d92e3f754a2d1f6d277c86a2845931834ba1eb209bb4`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 3.7 MB (3730041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d9ee9a989b5fd3ea3bcff69e9972d429f3fee435bebe19f9426ebf9c79911a`  
		Last Modified: Wed, 09 Sep 2026 03:25:12 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:221ee4864ad62bf1424ba0f9ea9f6d86fd4459a1cf3c1a2551e6dad76b41635d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175465298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3034c5778f47a1b655f6ee44bb682943aff1839ef21d7fd4041bc9b39f1abd1c`
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
ENV KAPACITOR_VERSION=1.8.6
# Wed, 09 Sep 2026 02:29:33 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
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
	-	`sha256:ec1361cc4842850a93918e1e86dad46f8f3e002ac5656d83226b6e71852671eb`  
		Last Modified: Wed, 09 Sep 2026 02:29:54 GMT  
		Size: 53.6 MB (53609796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11186490c8758a3f02bf7e43407d1e177bcaad6c73c75f354547500c32d17fa8`  
		Last Modified: Wed, 09 Sep 2026 02:29:54 GMT  
		Size: 87.2 MB (87152535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aded3663baf1728e707f8f83ca5e5d65749f7f24c1073ea34befee4d6dcafea`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c4f5ad4b7ec95d8e8e0b11afaf09d4f35a15c08fcb35fcd27271ea6aa015bf`  
		Last Modified: Wed, 09 Sep 2026 02:29:45 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:d840e58ffbe15e59f75a987079699a0817506101eb27dc6ff9bef29cf15ee675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efba3a19e01140e2a628dd727559172e63883fe229080409135c9892c093bfa`

```dockerfile
```

-	Layers:
	-	`sha256:feeb1f23deb7d438a135f8fcd0cdfbf8e86ac7ffe7007fa33bbaa54d6468d065`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.7 MB (3729515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67999f592053aacfbc5fbfab76cf25ad10da0abfdeb1eefa5df478da0b1acfb6`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
