<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.7`](#kapacitor17)
-	[`kapacitor:1.7-alpine`](#kapacitor17-alpine)
-	[`kapacitor:1.7.7`](#kapacitor177)
-	[`kapacitor:1.7.7-alpine`](#kapacitor177-alpine)
-	[`kapacitor:1.8`](#kapacitor18)
-	[`kapacitor:1.8-alpine`](#kapacitor18-alpine)
-	[`kapacitor:1.8.9`](#kapacitor189)
-	[`kapacitor:1.8.9-alpine`](#kapacitor189-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.7`

```console
$ docker pull kapacitor@sha256:0e5db7e4f393a419a5655a18bc7e1cf87c4d0ac7606a10bad6a0b7ce469c0e49
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:a38c6bc72860975b8879b9cd2b74fef5ade1e7c7532ed31752885234a8adc065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164791070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fae2f4d5f9d8e5ff3cdca881d69641f91d092a3dddd2b4ac2a52b1e625c27f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:24:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:24:56 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 12 Nov 2026 00:24:56 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:24:56 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:24:56 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:24:56 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:24:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:24:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:24:56 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9edce514dd70a2d9de1ccd1bac80bb9ed3ffa0ae7360e7651e45586e3009bb`  
		Last Modified: Wed, 11 Nov 2026 23:08:20 GMT  
		Size: 7.1 MB (7066843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76b9a3f2bbdc4ecb13cc9a9188df4086bbef354a230bfe449560c6d5752072`  
		Last Modified: Thu, 12 Nov 2026 00:25:12 GMT  
		Size: 55.6 MB (55602519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f43b933f941c56a8173bc668eeee79b6fd2763ca973896ad1efb33a8669a76`  
		Last Modified: Thu, 12 Nov 2026 00:25:12 GMT  
		Size: 72.1 MB (72051650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2f9619facf0c2d1ebd478d2f6853329074d62656252a4c3297ceef3a9a0df9`  
		Last Modified: Thu, 12 Nov 2026 00:25:09 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd15575ea4afd6dc8baaf9168280bd742db5ec784c173d4e7fd5747a805cfd3`  
		Last Modified: Thu, 12 Nov 2026 00:25:09 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f60d53f6754ab8acfc6d2b437ac63b1dbd49e070092143cedb0bf2d498f372a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1104e5e74ab8e84ae42b2ddfbe7a4965ede09a29a63d905dd9a6bb9cc9c0a88`

```dockerfile
```

-	Layers:
	-	`sha256:2b5469c05258fd327862b9ae95641ecd7027b0370eeab18a13e86f8112cac911`  
		Last Modified: Thu, 12 Nov 2026 00:25:10 GMT  
		Size: 3.7 MB (3700460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3029d89f86a9e370ef0ef1bd5f9b234eb246b93ace97c774ee15ca6ec0a3c40`  
		Last Modified: Thu, 12 Nov 2026 00:25:09 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:70b87cdef269d964943d7039a22a54508bcc0385dd57210e27ea53169eab4fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157888866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9832ab0e22647dbe47175366f8de1cdb5135051b24d6537f58123a21354d6dcb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:39:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:39:56 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 12 Nov 2026 00:39:56 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:39:56 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:39:56 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:39:56 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:39:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:39:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:39:56 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c042b2a99c1c6c9547f81996147224b49c69bc7da0cbb6948db3cab514e19a`  
		Last Modified: Wed, 11 Nov 2026 23:13:27 GMT  
		Size: 7.0 MB (7021923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c04d1e1b8561f719136e092384753ec886459f08dbbcfb4337dcfeb8f22868`  
		Last Modified: Thu, 12 Nov 2026 00:40:13 GMT  
		Size: 55.1 MB (55050653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21ae5dcd32f015e7f4611e37f7450d9dab5704efb741a06d1e68da465337c1f`  
		Last Modified: Thu, 12 Nov 2026 00:40:13 GMT  
		Size: 67.8 MB (67814359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e5d3753a40936c7fb39e67ec7d165d01f51c2b7fb9d0282a41fb33c42fbaf0`  
		Last Modified: Thu, 12 Nov 2026 00:40:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4daa036c1bd24aa31410626d0cb60a67c98488bb85b9c0f5f416cca1b07da1`  
		Last Modified: Thu, 12 Nov 2026 00:40:10 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:49341845d87f63a0f4663cb1ce75211d17ca06e97b57d318ad491d94bed53f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c9777a2f3edbc0d72c1c285f7cb6cce8d727ec3d02298e660cd5db5a751bca6`

```dockerfile
```

-	Layers:
	-	`sha256:c07f217f44a429ceb75f2c6410fa33381f0c5e1223067822589d8b9d2f8a71f3`  
		Last Modified: Thu, 12 Nov 2026 00:40:10 GMT  
		Size: 3.7 MB (3699922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ed3850deecbaf573e800686a4632dea4a2f2cc1737e6c6d55cbd2db368b0a84`  
		Last Modified: Thu, 12 Nov 2026 00:40:10 GMT  
		Size: 14.8 KB (14809 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7-alpine`

```console
$ docker pull kapacitor@sha256:b650005c82f715657f691c7e4242264d6ab52b0f0c4796cbf2a134793f1ec2fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:de5f4a35faf77825b827229a6ac101895d6ac07698eeaeb79e1d0d36dcd22e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79135270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ea590e909ef8eeb8d6d6beee631f807f3c8df8632f09605596541cb9f87b56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:43 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 05 Nov 2026 19:24:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:44 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29030ee4eb3051347643585d429c302df76223ba9356ed0acdda84b3ef80c57`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b192bf3d200335439fff3547791aff6d76694d6c4edfa64e415b97fc78d6cb5`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 246.3 KB (246292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03840ebf3d658a9aba6dffbfa21d674d3d078de33ec3a1f249b420b519b13813`  
		Last Modified: Thu, 05 Nov 2026 19:24:56 GMT  
		Size: 75.0 MB (75034526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b98d4f5c95c091c54d94db87d7101af87572ebf65b9a9c6790d59a4bc87e1d`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d7537f8985a466517fcf1bf1abbdadf61f4c2713be6aebd6ff90ace2ccbd9`  
		Last Modified: Thu, 05 Nov 2026 19:24:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:96e0dc8c80c209857de1c63820cbf845fd3e215bbef18e136c79f6bf0d596d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 KB (368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd8ad8b3441aecfee156024057a3837905df27b2f6a7ea5e847e03d66548ff6`

```dockerfile
```

-	Layers:
	-	`sha256:56c2c34ae75109815b3fe5b5e62cf94bfb40bc2c0f7c75383633efa7d78280dd`  
		Last Modified: Thu, 05 Nov 2026 19:24:54 GMT  
		Size: 353.4 KB (353392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f450c4955f40506bbe0cddef187215fb0138f1609f99ee833ef46b0c1ebe7c5`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7`

```console
$ docker pull kapacitor@sha256:0e5db7e4f393a419a5655a18bc7e1cf87c4d0ac7606a10bad6a0b7ce469c0e49
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:a38c6bc72860975b8879b9cd2b74fef5ade1e7c7532ed31752885234a8adc065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164791070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fae2f4d5f9d8e5ff3cdca881d69641f91d092a3dddd2b4ac2a52b1e625c27f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:24:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:24:56 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 12 Nov 2026 00:24:56 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:24:56 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:24:56 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:24:56 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:24:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:24:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:24:56 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9edce514dd70a2d9de1ccd1bac80bb9ed3ffa0ae7360e7651e45586e3009bb`  
		Last Modified: Wed, 11 Nov 2026 23:08:20 GMT  
		Size: 7.1 MB (7066843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76b9a3f2bbdc4ecb13cc9a9188df4086bbef354a230bfe449560c6d5752072`  
		Last Modified: Thu, 12 Nov 2026 00:25:12 GMT  
		Size: 55.6 MB (55602519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f43b933f941c56a8173bc668eeee79b6fd2763ca973896ad1efb33a8669a76`  
		Last Modified: Thu, 12 Nov 2026 00:25:12 GMT  
		Size: 72.1 MB (72051650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2f9619facf0c2d1ebd478d2f6853329074d62656252a4c3297ceef3a9a0df9`  
		Last Modified: Thu, 12 Nov 2026 00:25:09 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd15575ea4afd6dc8baaf9168280bd742db5ec784c173d4e7fd5747a805cfd3`  
		Last Modified: Thu, 12 Nov 2026 00:25:09 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f60d53f6754ab8acfc6d2b437ac63b1dbd49e070092143cedb0bf2d498f372a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1104e5e74ab8e84ae42b2ddfbe7a4965ede09a29a63d905dd9a6bb9cc9c0a88`

```dockerfile
```

-	Layers:
	-	`sha256:2b5469c05258fd327862b9ae95641ecd7027b0370eeab18a13e86f8112cac911`  
		Last Modified: Thu, 12 Nov 2026 00:25:10 GMT  
		Size: 3.7 MB (3700460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3029d89f86a9e370ef0ef1bd5f9b234eb246b93ace97c774ee15ca6ec0a3c40`  
		Last Modified: Thu, 12 Nov 2026 00:25:09 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:70b87cdef269d964943d7039a22a54508bcc0385dd57210e27ea53169eab4fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157888866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9832ab0e22647dbe47175366f8de1cdb5135051b24d6537f58123a21354d6dcb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:39:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:39:56 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 12 Nov 2026 00:39:56 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:39:56 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:39:56 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:39:56 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:39:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:39:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:39:56 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c042b2a99c1c6c9547f81996147224b49c69bc7da0cbb6948db3cab514e19a`  
		Last Modified: Wed, 11 Nov 2026 23:13:27 GMT  
		Size: 7.0 MB (7021923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c04d1e1b8561f719136e092384753ec886459f08dbbcfb4337dcfeb8f22868`  
		Last Modified: Thu, 12 Nov 2026 00:40:13 GMT  
		Size: 55.1 MB (55050653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21ae5dcd32f015e7f4611e37f7450d9dab5704efb741a06d1e68da465337c1f`  
		Last Modified: Thu, 12 Nov 2026 00:40:13 GMT  
		Size: 67.8 MB (67814359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e5d3753a40936c7fb39e67ec7d165d01f51c2b7fb9d0282a41fb33c42fbaf0`  
		Last Modified: Thu, 12 Nov 2026 00:40:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4daa036c1bd24aa31410626d0cb60a67c98488bb85b9c0f5f416cca1b07da1`  
		Last Modified: Thu, 12 Nov 2026 00:40:10 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:49341845d87f63a0f4663cb1ce75211d17ca06e97b57d318ad491d94bed53f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c9777a2f3edbc0d72c1c285f7cb6cce8d727ec3d02298e660cd5db5a751bca6`

```dockerfile
```

-	Layers:
	-	`sha256:c07f217f44a429ceb75f2c6410fa33381f0c5e1223067822589d8b9d2f8a71f3`  
		Last Modified: Thu, 12 Nov 2026 00:40:10 GMT  
		Size: 3.7 MB (3699922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ed3850deecbaf573e800686a4632dea4a2f2cc1737e6c6d55cbd2db368b0a84`  
		Last Modified: Thu, 12 Nov 2026 00:40:10 GMT  
		Size: 14.8 KB (14809 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.7.7-alpine`

```console
$ docker pull kapacitor@sha256:b650005c82f715657f691c7e4242264d6ab52b0f0c4796cbf2a134793f1ec2fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.7.7-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:de5f4a35faf77825b827229a6ac101895d6ac07698eeaeb79e1d0d36dcd22e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79135270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ea590e909ef8eeb8d6d6beee631f807f3c8df8632f09605596541cb9f87b56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
RUN apk add --no-cache ca-certificates su-exec &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:43 GMT
ENV KAPACITOR_VERSION=1.7.7
# Thu, 05 Nov 2026 19:24:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:44 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29030ee4eb3051347643585d429c302df76223ba9356ed0acdda84b3ef80c57`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b192bf3d200335439fff3547791aff6d76694d6c4edfa64e415b97fc78d6cb5`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 246.3 KB (246292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03840ebf3d658a9aba6dffbfa21d674d3d078de33ec3a1f249b420b519b13813`  
		Last Modified: Thu, 05 Nov 2026 19:24:56 GMT  
		Size: 75.0 MB (75034526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b98d4f5c95c091c54d94db87d7101af87572ebf65b9a9c6790d59a4bc87e1d`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d7537f8985a466517fcf1bf1abbdadf61f4c2713be6aebd6ff90ace2ccbd9`  
		Last Modified: Thu, 05 Nov 2026 19:24:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:96e0dc8c80c209857de1c63820cbf845fd3e215bbef18e136c79f6bf0d596d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 KB (368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd8ad8b3441aecfee156024057a3837905df27b2f6a7ea5e847e03d66548ff6`

```dockerfile
```

-	Layers:
	-	`sha256:56c2c34ae75109815b3fe5b5e62cf94bfb40bc2c0f7c75383633efa7d78280dd`  
		Last Modified: Thu, 05 Nov 2026 19:24:54 GMT  
		Size: 353.4 KB (353392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f450c4955f40506bbe0cddef187215fb0138f1609f99ee833ef46b0c1ebe7c5`  
		Last Modified: Thu, 05 Nov 2026 19:24:53 GMT  
		Size: 15.3 KB (15337 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8`

```console
$ docker pull kapacitor@sha256:2abf1343ee3161b4fcd9c5fa624132b2510a1636cf693d9558d6f28d05eb536f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:6d4a0636ffefc127488f7e3456ed0d3ff09583bd445b077316a105f0a6fe7217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198549168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9572379ccd9879f26eb6cb7d8a49eb7511d3fe53e2b1afae23c5e16fee9854c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:24:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 12 Nov 2026 00:25:00 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:25:00 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:25:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:00 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9edce514dd70a2d9de1ccd1bac80bb9ed3ffa0ae7360e7651e45586e3009bb`  
		Last Modified: Wed, 11 Nov 2026 23:08:20 GMT  
		Size: 7.1 MB (7066843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcec94fee7afd9c6d71d31d2214818c36c011cb27d67910e1bb1a4e25a96fd2`  
		Last Modified: Thu, 12 Nov 2026 00:25:23 GMT  
		Size: 55.6 MB (55602554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6380724561aa7df878f6629b942487cdb45507d030ed9ff4245aba4c56a768`  
		Last Modified: Thu, 12 Nov 2026 00:25:24 GMT  
		Size: 105.8 MB (105809718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0f6aedfab1c31ea2caf9fd5a7a87a92734770ea3763ab8b0d75f992819dca9`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0f6c24772d98a2859b78eac0e9a350802eedd188e01a3982164f9b16c728e5`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:7a358ef2f632db9c8a23e9855a3d573d3db979d835d18562f10c54f4af4aab34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da58b5fc731444124062910337e69624437a6d1f2950e5b699d62bccf2ed9a9d`

```dockerfile
```

-	Layers:
	-	`sha256:8059262364460fa3cb30cd5bc1ee9c3794b1b481ce64c3db92d76dd05c232152`  
		Last Modified: Thu, 12 Nov 2026 00:25:21 GMT  
		Size: 3.7 MB (3738873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27584d2c73166a940abfcb1677f667c96ffd9e73f06825fd792ecab85f9251bb`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 15.0 KB (15023 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:f9042cfba255331e9b698ff11d356e038af096853bdf02259d8823791247965b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.5 MB (188464753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59506b7a8c0547cd86fe7e213770dfcbc8a78414e3021d1565b8de9574e0142`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:39:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 12 Nov 2026 00:39:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:39:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:39:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:39:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c042b2a99c1c6c9547f81996147224b49c69bc7da0cbb6948db3cab514e19a`  
		Last Modified: Wed, 11 Nov 2026 23:13:27 GMT  
		Size: 7.0 MB (7021923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9171aa587a2220c6046137f172a04ab3d4160c1387f266eb9e0a6bfbfbe572`  
		Last Modified: Thu, 12 Nov 2026 00:40:21 GMT  
		Size: 55.1 MB (55050655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59276c2e2dc9d18b199cf799ee69116d6cdf3ff4ad57d5e1e10541efba4b4d80`  
		Last Modified: Thu, 12 Nov 2026 00:40:22 GMT  
		Size: 98.4 MB (98390242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d2e1f950ad641aff6e39e8ca794406036ce3da5f7f1a19b79c2eda63daf142`  
		Last Modified: Thu, 12 Nov 2026 00:40:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd2bf271585ddc86456831dbb631857e36e6806da4b53ad3c97d4d5c95f2826`  
		Last Modified: Thu, 12 Nov 2026 00:40:18 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f296dc534cda956fc9f20cbdb97881a35fdf676e6bd8c8679d0640d02a74d171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3fb1c30a6f6f4fbb26ee2f44f544ba25e4df46c42470856267e3b7fca265d0`

```dockerfile
```

-	Layers:
	-	`sha256:7d96ce8277c4601239c4597a86e8ec3ed78a0eb3acccd550768e30d5b6d292fc`  
		Last Modified: Thu, 12 Nov 2026 00:40:19 GMT  
		Size: 3.7 MB (3738093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64f5dae6974419d5809907fd4adaf1bf955189e17792da8f6c3babef3fd2e628`  
		Last Modified: Thu, 12 Nov 2026 00:40:19 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8-alpine`

```console
$ docker pull kapacitor@sha256:9d406c186006c189dae4346071d5e59e9eb848950ce98c5a8e1ae789e2cc5b6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a478bc48340105e56bbfaf830c231e4b9c6a4895e38ba8ee2e4892d1229df2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112935812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daa159d55c1606326e4b8c3bf48aac178dcaa2afb75014456b900f2f9de6423`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 05 Nov 2026 19:24:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3dd009e1c1249e2ba89699e8d2439ed8814351a34ef9d91e75973dfa06fc41`  
		Last Modified: Thu, 05 Nov 2026 19:25:13 GMT  
		Size: 108.8 MB (108787500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7811d243468216e9baccff3a63221c4b993e89235aa2d238f1b34f9c1ca8420`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271b7d1a589410039d134c5e59efc9cf5da36e41470ffeac8bd9d078c25a422`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:4ff1824ba1123b5cd70ba54a48d247f4458365a319e4b5e8526dd47999c60920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 KB (413394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ad256bd1bf55763501b52b730d01d43bdf23aaf135d44436f7b10fc5b2b64`

```dockerfile
```

-	Layers:
	-	`sha256:d92201a99488c16b777d10fa87a13f6399b51f4f9b181a4a0c4a5213a7748a84`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 397.8 KB (397750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f956bacb8c859de72ae8235e7da8ca80f3c0038ac61cdea906cec6cf6c9f904`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 15.6 KB (15644 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.9`

```console
$ docker pull kapacitor@sha256:2abf1343ee3161b4fcd9c5fa624132b2510a1636cf693d9558d6f28d05eb536f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.9` - linux; amd64

```console
$ docker pull kapacitor@sha256:6d4a0636ffefc127488f7e3456ed0d3ff09583bd445b077316a105f0a6fe7217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198549168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9572379ccd9879f26eb6cb7d8a49eb7511d3fe53e2b1afae23c5e16fee9854c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:24:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 12 Nov 2026 00:25:00 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:25:00 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:25:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:00 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9edce514dd70a2d9de1ccd1bac80bb9ed3ffa0ae7360e7651e45586e3009bb`  
		Last Modified: Wed, 11 Nov 2026 23:08:20 GMT  
		Size: 7.1 MB (7066843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcec94fee7afd9c6d71d31d2214818c36c011cb27d67910e1bb1a4e25a96fd2`  
		Last Modified: Thu, 12 Nov 2026 00:25:23 GMT  
		Size: 55.6 MB (55602554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6380724561aa7df878f6629b942487cdb45507d030ed9ff4245aba4c56a768`  
		Last Modified: Thu, 12 Nov 2026 00:25:24 GMT  
		Size: 105.8 MB (105809718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0f6aedfab1c31ea2caf9fd5a7a87a92734770ea3763ab8b0d75f992819dca9`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0f6c24772d98a2859b78eac0e9a350802eedd188e01a3982164f9b16c728e5`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.9` - unknown; unknown

```console
$ docker pull kapacitor@sha256:7a358ef2f632db9c8a23e9855a3d573d3db979d835d18562f10c54f4af4aab34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da58b5fc731444124062910337e69624437a6d1f2950e5b699d62bccf2ed9a9d`

```dockerfile
```

-	Layers:
	-	`sha256:8059262364460fa3cb30cd5bc1ee9c3794b1b481ce64c3db92d76dd05c232152`  
		Last Modified: Thu, 12 Nov 2026 00:25:21 GMT  
		Size: 3.7 MB (3738873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27584d2c73166a940abfcb1677f667c96ffd9e73f06825fd792ecab85f9251bb`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 15.0 KB (15023 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.9` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:f9042cfba255331e9b698ff11d356e038af096853bdf02259d8823791247965b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.5 MB (188464753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59506b7a8c0547cd86fe7e213770dfcbc8a78414e3021d1565b8de9574e0142`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:39:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 12 Nov 2026 00:39:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:39:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:39:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:39:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c042b2a99c1c6c9547f81996147224b49c69bc7da0cbb6948db3cab514e19a`  
		Last Modified: Wed, 11 Nov 2026 23:13:27 GMT  
		Size: 7.0 MB (7021923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9171aa587a2220c6046137f172a04ab3d4160c1387f266eb9e0a6bfbfbe572`  
		Last Modified: Thu, 12 Nov 2026 00:40:21 GMT  
		Size: 55.1 MB (55050655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59276c2e2dc9d18b199cf799ee69116d6cdf3ff4ad57d5e1e10541efba4b4d80`  
		Last Modified: Thu, 12 Nov 2026 00:40:22 GMT  
		Size: 98.4 MB (98390242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d2e1f950ad641aff6e39e8ca794406036ce3da5f7f1a19b79c2eda63daf142`  
		Last Modified: Thu, 12 Nov 2026 00:40:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd2bf271585ddc86456831dbb631857e36e6806da4b53ad3c97d4d5c95f2826`  
		Last Modified: Thu, 12 Nov 2026 00:40:18 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.9` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f296dc534cda956fc9f20cbdb97881a35fdf676e6bd8c8679d0640d02a74d171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3fb1c30a6f6f4fbb26ee2f44f544ba25e4df46c42470856267e3b7fca265d0`

```dockerfile
```

-	Layers:
	-	`sha256:7d96ce8277c4601239c4597a86e8ec3ed78a0eb3acccd550768e30d5b6d292fc`  
		Last Modified: Thu, 12 Nov 2026 00:40:19 GMT  
		Size: 3.7 MB (3738093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64f5dae6974419d5809907fd4adaf1bf955189e17792da8f6c3babef3fd2e628`  
		Last Modified: Thu, 12 Nov 2026 00:40:19 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:1.8.9-alpine`

```console
$ docker pull kapacitor@sha256:9d406c186006c189dae4346071d5e59e9eb848950ce98c5a8e1ae789e2cc5b6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:1.8.9-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a478bc48340105e56bbfaf830c231e4b9c6a4895e38ba8ee2e4892d1229df2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112935812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daa159d55c1606326e4b8c3bf48aac178dcaa2afb75014456b900f2f9de6423`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 05 Nov 2026 19:24:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3dd009e1c1249e2ba89699e8d2439ed8814351a34ef9d91e75973dfa06fc41`  
		Last Modified: Thu, 05 Nov 2026 19:25:13 GMT  
		Size: 108.8 MB (108787500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7811d243468216e9baccff3a63221c4b993e89235aa2d238f1b34f9c1ca8420`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271b7d1a589410039d134c5e59efc9cf5da36e41470ffeac8bd9d078c25a422`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.9-alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:4ff1824ba1123b5cd70ba54a48d247f4458365a319e4b5e8526dd47999c60920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 KB (413394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ad256bd1bf55763501b52b730d01d43bdf23aaf135d44436f7b10fc5b2b64`

```dockerfile
```

-	Layers:
	-	`sha256:d92201a99488c16b777d10fa87a13f6399b51f4f9b181a4a0c4a5213a7748a84`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 397.8 KB (397750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f956bacb8c859de72ae8235e7da8ca80f3c0038ac61cdea906cec6cf6c9f904`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 15.6 KB (15644 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:9d406c186006c189dae4346071d5e59e9eb848950ce98c5a8e1ae789e2cc5b6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7a478bc48340105e56bbfaf830c231e4b9c6a4895e38ba8ee2e4892d1229df2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112935812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daa159d55c1606326e4b8c3bf48aac178dcaa2afb75014456b900f2f9de6423`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 05 Nov 2026 19:24:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 05 Nov 2026 19:24:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 05 Nov 2026 19:24:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3dd009e1c1249e2ba89699e8d2439ed8814351a34ef9d91e75973dfa06fc41`  
		Last Modified: Thu, 05 Nov 2026 19:25:13 GMT  
		Size: 108.8 MB (108787500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7811d243468216e9baccff3a63221c4b993e89235aa2d238f1b34f9c1ca8420`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271b7d1a589410039d134c5e59efc9cf5da36e41470ffeac8bd9d078c25a422`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:4ff1824ba1123b5cd70ba54a48d247f4458365a319e4b5e8526dd47999c60920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 KB (413394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ad256bd1bf55763501b52b730d01d43bdf23aaf135d44436f7b10fc5b2b64`

```dockerfile
```

-	Layers:
	-	`sha256:d92201a99488c16b777d10fa87a13f6399b51f4f9b181a4a0c4a5213a7748a84`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 397.8 KB (397750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f956bacb8c859de72ae8235e7da8ca80f3c0038ac61cdea906cec6cf6c9f904`  
		Last Modified: Thu, 05 Nov 2026 19:25:10 GMT  
		Size: 15.6 KB (15644 bytes)  
		MIME: application/vnd.in-toto+json

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:2abf1343ee3161b4fcd9c5fa624132b2510a1636cf693d9558d6f28d05eb536f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:6d4a0636ffefc127488f7e3456ed0d3ff09583bd445b077316a105f0a6fe7217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198549168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9572379ccd9879f26eb6cb7d8a49eb7511d3fe53e2b1afae23c5e16fee9854c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:24:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 12 Nov 2026 00:25:00 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:25:00 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:25:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:25:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:00 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9edce514dd70a2d9de1ccd1bac80bb9ed3ffa0ae7360e7651e45586e3009bb`  
		Last Modified: Wed, 11 Nov 2026 23:08:20 GMT  
		Size: 7.1 MB (7066843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcec94fee7afd9c6d71d31d2214818c36c011cb27d67910e1bb1a4e25a96fd2`  
		Last Modified: Thu, 12 Nov 2026 00:25:23 GMT  
		Size: 55.6 MB (55602554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6380724561aa7df878f6629b942487cdb45507d030ed9ff4245aba4c56a768`  
		Last Modified: Thu, 12 Nov 2026 00:25:24 GMT  
		Size: 105.8 MB (105809718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0f6aedfab1c31ea2caf9fd5a7a87a92734770ea3763ab8b0d75f992819dca9`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0f6c24772d98a2859b78eac0e9a350802eedd188e01a3982164f9b16c728e5`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:7a358ef2f632db9c8a23e9855a3d573d3db979d835d18562f10c54f4af4aab34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da58b5fc731444124062910337e69624437a6d1f2950e5b699d62bccf2ed9a9d`

```dockerfile
```

-	Layers:
	-	`sha256:8059262364460fa3cb30cd5bc1ee9c3794b1b481ce64c3db92d76dd05c232152`  
		Last Modified: Thu, 12 Nov 2026 00:25:21 GMT  
		Size: 3.7 MB (3738873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27584d2c73166a940abfcb1677f667c96ffd9e73f06825fd792ecab85f9251bb`  
		Last Modified: Thu, 12 Nov 2026 00:25:20 GMT  
		Size: 15.0 KB (15023 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:f9042cfba255331e9b698ff11d356e038af096853bdf02259d8823791247965b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.5 MB (188464753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59506b7a8c0547cd86fe7e213770dfcbc8a78414e3021d1565b8de9574e0142`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:39:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENV KAPACITOR_VERSION=1.8.9
# Thu, 12 Nov 2026 00:39:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
EXPOSE map[9092/tcp:{}]
# Thu, 12 Nov 2026 00:39:59 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 12 Nov 2026 00:39:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 00:39:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c042b2a99c1c6c9547f81996147224b49c69bc7da0cbb6948db3cab514e19a`  
		Last Modified: Wed, 11 Nov 2026 23:13:27 GMT  
		Size: 7.0 MB (7021923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9171aa587a2220c6046137f172a04ab3d4160c1387f266eb9e0a6bfbfbe572`  
		Last Modified: Thu, 12 Nov 2026 00:40:21 GMT  
		Size: 55.1 MB (55050655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59276c2e2dc9d18b199cf799ee69116d6cdf3ff4ad57d5e1e10541efba4b4d80`  
		Last Modified: Thu, 12 Nov 2026 00:40:22 GMT  
		Size: 98.4 MB (98390242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d2e1f950ad641aff6e39e8ca794406036ce3da5f7f1a19b79c2eda63daf142`  
		Last Modified: Thu, 12 Nov 2026 00:40:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd2bf271585ddc86456831dbb631857e36e6806da4b53ad3c97d4d5c95f2826`  
		Last Modified: Thu, 12 Nov 2026 00:40:18 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f296dc534cda956fc9f20cbdb97881a35fdf676e6bd8c8679d0640d02a74d171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3fb1c30a6f6f4fbb26ee2f44f544ba25e4df46c42470856267e3b7fca265d0`

```dockerfile
```

-	Layers:
	-	`sha256:7d96ce8277c4601239c4597a86e8ec3ed78a0eb3acccd550768e30d5b6d292fc`  
		Last Modified: Thu, 12 Nov 2026 00:40:19 GMT  
		Size: 3.7 MB (3738093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64f5dae6974419d5809907fd4adaf1bf955189e17792da8f6c3babef3fd2e628`  
		Last Modified: Thu, 12 Nov 2026 00:40:19 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
