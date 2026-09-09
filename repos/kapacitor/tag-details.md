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
$ docker pull kapacitor@sha256:9e800ab84f6e55477f0f32725a07cc65971814aa029b90a2bab6ef781dec2ab0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d642f1246ee977700b45d6f1c1a677c537c5a0317a74475dc79fb38133f13f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76077263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579dee0aaddfe2ce8db2b0a6780a162c9fab94fbc5ad6074042701e3076b2f66`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:48:22 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 20 Jul 2026 18:48:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:26 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:26 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebd2156cd67d6054fcbcf000f3e61597135229866ceb73837dc980a73118ef5`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 246.9 KB (246868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcd1639839e58f1c2056d0a46ee6e13087618776665fa7c2be1285d9b7f7895`  
		Last Modified: Mon, 20 Jul 2026 18:48:39 GMT  
		Size: 72.0 MB (71983221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e730d188cd6d367cb2827c1395715f71f2424d388268c062c734c156333433`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd106f6107edf05b8a52994fa58da475bef51cc6c539daffb16d8eed65faf879`  
		Last Modified: Mon, 20 Jul 2026 18:48:38 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1ee9d4461c41552955dcebe99acbf65ed71205890bfd6e3026d5cdb224e7b137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 KB (369981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4632d298c19e43abb91cbe79b901acc585fcc3a09ce7e83f77fac500b1b7654`

```dockerfile
```

-	Layers:
	-	`sha256:5be486745f3aca1717cfff83198f7c979888f602262d251a7e613617317931d5`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 354.3 KB (354340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f777630344f35c5344cb6ec0f440244c50772ca892266a5d678e3464f3d981b0`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 15.6 KB (15641 bytes)  
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
$ docker pull kapacitor@sha256:9e800ab84f6e55477f0f32725a07cc65971814aa029b90a2bab6ef781dec2ab0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:d642f1246ee977700b45d6f1c1a677c537c5a0317a74475dc79fb38133f13f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76077263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579dee0aaddfe2ce8db2b0a6780a162c9fab94fbc5ad6074042701e3076b2f66`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:48:22 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 20 Jul 2026 18:48:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:26 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:26 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebd2156cd67d6054fcbcf000f3e61597135229866ceb73837dc980a73118ef5`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 246.9 KB (246868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcd1639839e58f1c2056d0a46ee6e13087618776665fa7c2be1285d9b7f7895`  
		Last Modified: Mon, 20 Jul 2026 18:48:39 GMT  
		Size: 72.0 MB (71983221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e730d188cd6d367cb2827c1395715f71f2424d388268c062c734c156333433`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd106f6107edf05b8a52994fa58da475bef51cc6c539daffb16d8eed65faf879`  
		Last Modified: Mon, 20 Jul 2026 18:48:38 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1ee9d4461c41552955dcebe99acbf65ed71205890bfd6e3026d5cdb224e7b137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 KB (369981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4632d298c19e43abb91cbe79b901acc585fcc3a09ce7e83f77fac500b1b7654`

```dockerfile
```

-	Layers:
	-	`sha256:5be486745f3aca1717cfff83198f7c979888f602262d251a7e613617317931d5`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 354.3 KB (354340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f777630344f35c5344cb6ec0f440244c50772ca892266a5d678e3464f3d981b0`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 15.6 KB (15641 bytes)  
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
$ docker pull kapacitor@sha256:b3f24ce78141f03e30185738688ff564299a9920d244a3a1794a3b84edf1fc48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7d30e734c47523a3498eed34139e832c6f8c6fc7cdd00afe7f73199f59291331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97254311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d41e2563825e9aea22ff4612cb8725b76fd05c8e264b2620adb815130c68c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:49:16 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:49:22 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:49:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:49:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8782d10ad554fdcdae9d843aa5deda64e0da8f313c2c8ab79c3741f9d6b19444`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 294.3 KB (294343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed84eed67ca9143e27e9c9f4a14d42553ccb53fe702ec9a6e778491714ce911`  
		Last Modified: Mon, 20 Jul 2026 18:49:40 GMT  
		Size: 93.1 MB (93112775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58948abc6c9ccdb955f021d14cf35281ecfa81c4532c2ad3d02ea51015524104`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdd794310e6d156bd824e443d86a48fd2c9754f124f135455d86cc233360a31`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b91380df4545f3b6c4480fe8bc1932dd76ea2e0502d605bcb96735c6425fd0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 KB (404599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c46fd2ff2cf703e92ef8cb6836a09683dd5a6f52c52bbadc7e876fdcd6433`

```dockerfile
```

-	Layers:
	-	`sha256:dc7d77c7c3dee2e3bddcd598fecea3c46bba9adb7471a95dd7ae555b9e571b53`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 389.3 KB (389262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:306a8d09ce7672699020f53fcb183ae5242aa03ae0cdd618cac8b05e7b1914cb`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 15.3 KB (15337 bytes)  
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
$ docker pull kapacitor@sha256:b3f24ce78141f03e30185738688ff564299a9920d244a3a1794a3b84edf1fc48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8.6-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7d30e734c47523a3498eed34139e832c6f8c6fc7cdd00afe7f73199f59291331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97254311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d41e2563825e9aea22ff4612cb8725b76fd05c8e264b2620adb815130c68c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:49:16 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:49:22 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:49:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:49:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8782d10ad554fdcdae9d843aa5deda64e0da8f313c2c8ab79c3741f9d6b19444`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 294.3 KB (294343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed84eed67ca9143e27e9c9f4a14d42553ccb53fe702ec9a6e778491714ce911`  
		Last Modified: Mon, 20 Jul 2026 18:49:40 GMT  
		Size: 93.1 MB (93112775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58948abc6c9ccdb955f021d14cf35281ecfa81c4532c2ad3d02ea51015524104`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdd794310e6d156bd824e443d86a48fd2c9754f124f135455d86cc233360a31`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b91380df4545f3b6c4480fe8bc1932dd76ea2e0502d605bcb96735c6425fd0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 KB (404599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c46fd2ff2cf703e92ef8cb6836a09683dd5a6f52c52bbadc7e876fdcd6433`

```dockerfile
```

-	Layers:
	-	`sha256:dc7d77c7c3dee2e3bddcd598fecea3c46bba9adb7471a95dd7ae555b9e571b53`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 389.3 KB (389262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:306a8d09ce7672699020f53fcb183ae5242aa03ae0cdd618cac8b05e7b1914cb`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:b3f24ce78141f03e30185738688ff564299a9920d244a3a1794a3b84edf1fc48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7d30e734c47523a3498eed34139e832c6f8c6fc7cdd00afe7f73199f59291331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97254311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d41e2563825e9aea22ff4612cb8725b76fd05c8e264b2620adb815130c68c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 18:48:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 18:49:16 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:49:22 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:49:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:49:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:49:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a8788998b7ea0e3cdbf561f1a5df7f87b21cc567e45ce3f71b3438731e03e`  
		Last Modified: Mon, 20 Jul 2026 18:48:37 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8782d10ad554fdcdae9d843aa5deda64e0da8f313c2c8ab79c3741f9d6b19444`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 294.3 KB (294343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed84eed67ca9143e27e9c9f4a14d42553ccb53fe702ec9a6e778491714ce911`  
		Last Modified: Mon, 20 Jul 2026 18:49:40 GMT  
		Size: 93.1 MB (93112775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58948abc6c9ccdb955f021d14cf35281ecfa81c4532c2ad3d02ea51015524104`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdd794310e6d156bd824e443d86a48fd2c9754f124f135455d86cc233360a31`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:b91380df4545f3b6c4480fe8bc1932dd76ea2e0502d605bcb96735c6425fd0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 KB (404599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c46fd2ff2cf703e92ef8cb6836a09683dd5a6f52c52bbadc7e876fdcd6433`

```dockerfile
```

-	Layers:
	-	`sha256:dc7d77c7c3dee2e3bddcd598fecea3c46bba9adb7471a95dd7ae555b9e571b53`  
		Last Modified: Mon, 20 Jul 2026 18:49:38 GMT  
		Size: 389.3 KB (389262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:306a8d09ce7672699020f53fcb183ae5242aa03ae0cdd618cac8b05e7b1914cb`  
		Last Modified: Mon, 20 Jul 2026 18:49:37 GMT  
		Size: 15.3 KB (15337 bytes)  
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
