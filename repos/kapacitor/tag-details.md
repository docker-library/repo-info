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
$ docker pull kapacitor@sha256:3d4728a5333d9c73b4d29fed9035dfc7b66fad17c3420cf3b2310ce779890106
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:9ade99706f559ef36ddf722a5b07290314b61963ca4b158d0f840753c77a8095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164019746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227fd3f29070e423aab7bff7718dbad06623f279b7cb264fb851c7236ca7b737`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:50:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 26 Oct 2026 23:50:04 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 26 Oct 2026 23:50:04 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 26 Oct 2026 23:50:04 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 26 Oct 2026 23:50:04 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 26 Oct 2026 23:50:04 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 26 Oct 2026 23:50:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:50:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:50:04 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8683688cadbe2a286c64253ef3f6cd7760bf514bf2ee3ee0c44c3e7f59ec4c05`  
		Last Modified: Mon, 26 Oct 2026 23:02:20 GMT  
		Size: 7.1 MB (7066793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fdc0a3a51535cee76beeedca0241258ec3787f5eff55389d1126f039dfc2f4c`  
		Last Modified: Mon, 26 Oct 2026 23:50:20 GMT  
		Size: 55.1 MB (55148206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cb6c6f2ea19c725386616b74f8c70218574a1e308f9ac65b215e72df8a1a6d`  
		Last Modified: Mon, 26 Oct 2026 23:50:21 GMT  
		Size: 72.1 MB (72051735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d645863bf11cae7a5ab2f9a4cbb034b7406f30a959bd829c97c01c9344faac`  
		Last Modified: Mon, 26 Oct 2026 23:50:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ff8ad8248d9ede1cf90158da22dcbbc574288e53958b82a928f931efa3063e`  
		Last Modified: Mon, 26 Oct 2026 23:50:17 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:31a904d1eb72b75691938dcc32c6fd740dd2f26596740feeb04a2a17f1c323bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e867f5c01555d88b0de49a827be6427b9d6241b28b15d8fa759a0740eb2197`

```dockerfile
```

-	Layers:
	-	`sha256:089ae4e1e5d1f8434c97d6b5e0bac57629ee4bbc69d83a66e799b3d49ec88f56`  
		Last Modified: Mon, 26 Oct 2026 23:50:17 GMT  
		Size: 3.7 MB (3699852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4bdaf59848cb530d2661ba85af96cf609842aef93f6c31b42646fb4810a0625`  
		Last Modified: Mon, 26 Oct 2026 23:50:17 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:447a92b533558030925ff0bcf9753c086c399ada4e9c15c3664cfe49778fffdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157107737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e357ed66c68c6a01a73b1be3d5f62ed30165d12028163f777293bbd8d2bb6c75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:26:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 27 Oct 2026 00:26:22 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 27 Oct 2026 00:26:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 27 Oct 2026 00:26:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 27 Oct 2026 00:26:22 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 27 Oct 2026 00:26:22 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Oct 2026 00:26:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 00:26:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 00:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4e2e86b0d238d884dc7bed967d31bfa9f7a8d39a2ac1b85ffc01099046e925`  
		Last Modified: Mon, 26 Oct 2026 23:08:19 GMT  
		Size: 7.0 MB (7021372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a6b021b6e4847d4a47e0963868f215bb736625baad76669a8db447b8876085`  
		Last Modified: Tue, 27 Oct 2026 00:26:37 GMT  
		Size: 54.6 MB (54587074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a88ee128088d7ad2eec9ec5be24a6113c11aa1d845319ccdef461e82950723`  
		Last Modified: Tue, 27 Oct 2026 00:26:38 GMT  
		Size: 67.8 MB (67814160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808d8cd09fe52a7a00306a8ba7b7ba5a387cb3455bf4c187b0f37eb4e426b12`  
		Last Modified: Tue, 27 Oct 2026 00:26:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81edd6d5710c91961ad7fc4a401deb4bba333d0f70a52866c8636fff5c0b418`  
		Last Modified: Tue, 27 Oct 2026 00:26:35 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:a1cc4e16a2e782ff205841d99f7a0c7b8de82d26a67201862e51434dc6e58700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78456c66d57dc051fee885f551d2e93f2860c2009f59117ea3c4692ddda4183`

```dockerfile
```

-	Layers:
	-	`sha256:fda6523fb9594b00a9de1b8cbaef9e1b83e28cab8ebdd9e7a17b32b4471d7f2c`  
		Last Modified: Tue, 27 Oct 2026 00:26:35 GMT  
		Size: 3.7 MB (3699314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da2dd2966368a08111750fdcdafb8d32109cd5c8766f23689bae8403442eab6d`  
		Last Modified: Tue, 27 Oct 2026 00:26:35 GMT  
		Size: 14.8 KB (14811 bytes)  
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
$ docker pull kapacitor@sha256:3d4728a5333d9c73b4d29fed9035dfc7b66fad17c3420cf3b2310ce779890106
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:9ade99706f559ef36ddf722a5b07290314b61963ca4b158d0f840753c77a8095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164019746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227fd3f29070e423aab7bff7718dbad06623f279b7cb264fb851c7236ca7b737`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:50:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 26 Oct 2026 23:50:04 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 26 Oct 2026 23:50:04 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 26 Oct 2026 23:50:04 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 26 Oct 2026 23:50:04 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 26 Oct 2026 23:50:04 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 26 Oct 2026 23:50:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:50:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:50:04 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8683688cadbe2a286c64253ef3f6cd7760bf514bf2ee3ee0c44c3e7f59ec4c05`  
		Last Modified: Mon, 26 Oct 2026 23:02:20 GMT  
		Size: 7.1 MB (7066793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fdc0a3a51535cee76beeedca0241258ec3787f5eff55389d1126f039dfc2f4c`  
		Last Modified: Mon, 26 Oct 2026 23:50:20 GMT  
		Size: 55.1 MB (55148206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cb6c6f2ea19c725386616b74f8c70218574a1e308f9ac65b215e72df8a1a6d`  
		Last Modified: Mon, 26 Oct 2026 23:50:21 GMT  
		Size: 72.1 MB (72051735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d645863bf11cae7a5ab2f9a4cbb034b7406f30a959bd829c97c01c9344faac`  
		Last Modified: Mon, 26 Oct 2026 23:50:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ff8ad8248d9ede1cf90158da22dcbbc574288e53958b82a928f931efa3063e`  
		Last Modified: Mon, 26 Oct 2026 23:50:17 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:31a904d1eb72b75691938dcc32c6fd740dd2f26596740feeb04a2a17f1c323bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e867f5c01555d88b0de49a827be6427b9d6241b28b15d8fa759a0740eb2197`

```dockerfile
```

-	Layers:
	-	`sha256:089ae4e1e5d1f8434c97d6b5e0bac57629ee4bbc69d83a66e799b3d49ec88f56`  
		Last Modified: Mon, 26 Oct 2026 23:50:17 GMT  
		Size: 3.7 MB (3699852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4bdaf59848cb530d2661ba85af96cf609842aef93f6c31b42646fb4810a0625`  
		Last Modified: Mon, 26 Oct 2026 23:50:17 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:447a92b533558030925ff0bcf9753c086c399ada4e9c15c3664cfe49778fffdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157107737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e357ed66c68c6a01a73b1be3d5f62ed30165d12028163f777293bbd8d2bb6c75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:26:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 27 Oct 2026 00:26:22 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 27 Oct 2026 00:26:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 27 Oct 2026 00:26:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 27 Oct 2026 00:26:22 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 27 Oct 2026 00:26:22 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Oct 2026 00:26:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 00:26:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 00:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4e2e86b0d238d884dc7bed967d31bfa9f7a8d39a2ac1b85ffc01099046e925`  
		Last Modified: Mon, 26 Oct 2026 23:08:19 GMT  
		Size: 7.0 MB (7021372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a6b021b6e4847d4a47e0963868f215bb736625baad76669a8db447b8876085`  
		Last Modified: Tue, 27 Oct 2026 00:26:37 GMT  
		Size: 54.6 MB (54587074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a88ee128088d7ad2eec9ec5be24a6113c11aa1d845319ccdef461e82950723`  
		Last Modified: Tue, 27 Oct 2026 00:26:38 GMT  
		Size: 67.8 MB (67814160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808d8cd09fe52a7a00306a8ba7b7ba5a387cb3455bf4c187b0f37eb4e426b12`  
		Last Modified: Tue, 27 Oct 2026 00:26:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81edd6d5710c91961ad7fc4a401deb4bba333d0f70a52866c8636fff5c0b418`  
		Last Modified: Tue, 27 Oct 2026 00:26:35 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:a1cc4e16a2e782ff205841d99f7a0c7b8de82d26a67201862e51434dc6e58700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78456c66d57dc051fee885f551d2e93f2860c2009f59117ea3c4692ddda4183`

```dockerfile
```

-	Layers:
	-	`sha256:fda6523fb9594b00a9de1b8cbaef9e1b83e28cab8ebdd9e7a17b32b4471d7f2c`  
		Last Modified: Tue, 27 Oct 2026 00:26:35 GMT  
		Size: 3.7 MB (3699314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da2dd2966368a08111750fdcdafb8d32109cd5c8766f23689bae8403442eab6d`  
		Last Modified: Tue, 27 Oct 2026 00:26:35 GMT  
		Size: 14.8 KB (14811 bytes)  
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
$ docker pull kapacitor@sha256:5398416f228ce2d4de111be48c297b48b49d5a18cd3020673db7de4d82d6ad50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:953b7714adb631dca1467bfe8cd0cf707d31700f207b66f02535752a75b6e958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.0 MB (197963874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888c8f178a8743098bd6f2a6d060825574a4d67867ace48a878be4a25e79cb15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:58:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
ENV KAPACITOR_VERSION=1.8.9
# Wed, 04 Nov 2026 23:58:37 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 04 Nov 2026 23:58:37 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 04 Nov 2026 23:58:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:58:37 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8683688cadbe2a286c64253ef3f6cd7760bf514bf2ee3ee0c44c3e7f59ec4c05`  
		Last Modified: Mon, 26 Oct 2026 23:02:20 GMT  
		Size: 7.1 MB (7066793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccd96ad2fd4d03450186b660949c6e33b6c85c7b25e11a596d9d2031582633f`  
		Last Modified: Wed, 04 Nov 2026 23:59:01 GMT  
		Size: 55.3 MB (55334202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc77aa0878a9a3bd55d092a41e0683d54460b62b706bcaf0d1e2a887b8ba872`  
		Last Modified: Wed, 04 Nov 2026 23:59:02 GMT  
		Size: 105.8 MB (105809868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fc58f79a95c7ac4f7c09cb377fa6fe0db041a0f30a14fa90016a89a5af26f5`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad9f3d7bf86971242aa4b5ae345915521800b57cbcc59d172cd9eb9a1d5cfe8`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:462d5a1a2d15135c7a44a34e766082f81e65c9a52753a109cd994d5caa3732e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cb4d07ee42781ce8b70e58cb93af572691a3126dc4d3b897e90f14e738e47a`

```dockerfile
```

-	Layers:
	-	`sha256:9f4774ed25ed7c88db7866c5b2148e680908ad12987654476e29c51ddf3b4d25`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 3.7 MB (3738265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f04364f1eaf698eddc3ad24ac16ceeb4cb5c2462bd24c062e76e8dee83e8c0e`  
		Last Modified: Wed, 04 Nov 2026 23:58:58 GMT  
		Size: 15.0 KB (15021 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:894e214d867d057327e368acf8db6ff0bc97674e89da2b4f19ef892fc211e026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187864789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0756c95dba3a1877e90838912899d07dd478541db66747557e9ae5fab7a83ae1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:58:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
ENV KAPACITOR_VERSION=1.8.9
# Wed, 04 Nov 2026 23:58:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 04 Nov 2026 23:58:22 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 04 Nov 2026 23:58:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:58:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4e2e86b0d238d884dc7bed967d31bfa9f7a8d39a2ac1b85ffc01099046e925`  
		Last Modified: Mon, 26 Oct 2026 23:08:19 GMT  
		Size: 7.0 MB (7021372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbd33d780db083d0966f268ff200af67ebcbdb4b1a89a85d31f3cba24f741bb`  
		Last Modified: Wed, 04 Nov 2026 23:58:44 GMT  
		Size: 54.8 MB (54768201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee027c8246b270ae6997b6170e47f3938c7721d01dd8642492e51fadcd5e7a1`  
		Last Modified: Wed, 04 Nov 2026 23:58:45 GMT  
		Size: 98.4 MB (98390087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81daab8df1a36b4f78f2de9d15cbc36bf1a29cfa8dcea7fc37df8e47ddb27f9a`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a3cb1c95a362e285524231436e848e5e2064d62643667d32d0803f545bdd67`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:93d166d236a83059ba9b896053c80aabbb8bb82a2842915d4624bb84feb3fbaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3752612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63b03c86e07eaa1bd4b0a63dd04464a2527a2c2fa9b4847e2080d279d96be8d`

```dockerfile
```

-	Layers:
	-	`sha256:cea555d6d7fc5e57ed97d299979d118a3c25a9441b0f6a5401a3ed44bcfe6071`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 3.7 MB (3737485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325e2565e7d0f684fdb2cb2a009258a4d89cbdcdeec86374e6547fb6b1660cd9`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
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
$ docker pull kapacitor@sha256:5398416f228ce2d4de111be48c297b48b49d5a18cd3020673db7de4d82d6ad50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.9` - linux; amd64

```console
$ docker pull kapacitor@sha256:953b7714adb631dca1467bfe8cd0cf707d31700f207b66f02535752a75b6e958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.0 MB (197963874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888c8f178a8743098bd6f2a6d060825574a4d67867ace48a878be4a25e79cb15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:58:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
ENV KAPACITOR_VERSION=1.8.9
# Wed, 04 Nov 2026 23:58:37 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 04 Nov 2026 23:58:37 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 04 Nov 2026 23:58:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:58:37 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8683688cadbe2a286c64253ef3f6cd7760bf514bf2ee3ee0c44c3e7f59ec4c05`  
		Last Modified: Mon, 26 Oct 2026 23:02:20 GMT  
		Size: 7.1 MB (7066793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccd96ad2fd4d03450186b660949c6e33b6c85c7b25e11a596d9d2031582633f`  
		Last Modified: Wed, 04 Nov 2026 23:59:01 GMT  
		Size: 55.3 MB (55334202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc77aa0878a9a3bd55d092a41e0683d54460b62b706bcaf0d1e2a887b8ba872`  
		Last Modified: Wed, 04 Nov 2026 23:59:02 GMT  
		Size: 105.8 MB (105809868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fc58f79a95c7ac4f7c09cb377fa6fe0db041a0f30a14fa90016a89a5af26f5`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad9f3d7bf86971242aa4b5ae345915521800b57cbcc59d172cd9eb9a1d5cfe8`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.9` - unknown; unknown

```console
$ docker pull kapacitor@sha256:462d5a1a2d15135c7a44a34e766082f81e65c9a52753a109cd994d5caa3732e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cb4d07ee42781ce8b70e58cb93af572691a3126dc4d3b897e90f14e738e47a`

```dockerfile
```

-	Layers:
	-	`sha256:9f4774ed25ed7c88db7866c5b2148e680908ad12987654476e29c51ddf3b4d25`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 3.7 MB (3738265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f04364f1eaf698eddc3ad24ac16ceeb4cb5c2462bd24c062e76e8dee83e8c0e`  
		Last Modified: Wed, 04 Nov 2026 23:58:58 GMT  
		Size: 15.0 KB (15021 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.9` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:894e214d867d057327e368acf8db6ff0bc97674e89da2b4f19ef892fc211e026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187864789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0756c95dba3a1877e90838912899d07dd478541db66747557e9ae5fab7a83ae1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:58:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
ENV KAPACITOR_VERSION=1.8.9
# Wed, 04 Nov 2026 23:58:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 04 Nov 2026 23:58:22 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 04 Nov 2026 23:58:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:58:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4e2e86b0d238d884dc7bed967d31bfa9f7a8d39a2ac1b85ffc01099046e925`  
		Last Modified: Mon, 26 Oct 2026 23:08:19 GMT  
		Size: 7.0 MB (7021372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbd33d780db083d0966f268ff200af67ebcbdb4b1a89a85d31f3cba24f741bb`  
		Last Modified: Wed, 04 Nov 2026 23:58:44 GMT  
		Size: 54.8 MB (54768201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee027c8246b270ae6997b6170e47f3938c7721d01dd8642492e51fadcd5e7a1`  
		Last Modified: Wed, 04 Nov 2026 23:58:45 GMT  
		Size: 98.4 MB (98390087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81daab8df1a36b4f78f2de9d15cbc36bf1a29cfa8dcea7fc37df8e47ddb27f9a`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a3cb1c95a362e285524231436e848e5e2064d62643667d32d0803f545bdd67`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.9` - unknown; unknown

```console
$ docker pull kapacitor@sha256:93d166d236a83059ba9b896053c80aabbb8bb82a2842915d4624bb84feb3fbaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3752612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63b03c86e07eaa1bd4b0a63dd04464a2527a2c2fa9b4847e2080d279d96be8d`

```dockerfile
```

-	Layers:
	-	`sha256:cea555d6d7fc5e57ed97d299979d118a3c25a9441b0f6a5401a3ed44bcfe6071`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 3.7 MB (3737485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325e2565e7d0f684fdb2cb2a009258a4d89cbdcdeec86374e6547fb6b1660cd9`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
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
$ docker pull kapacitor@sha256:5398416f228ce2d4de111be48c297b48b49d5a18cd3020673db7de4d82d6ad50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:953b7714adb631dca1467bfe8cd0cf707d31700f207b66f02535752a75b6e958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.0 MB (197963874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888c8f178a8743098bd6f2a6d060825574a4d67867ace48a878be4a25e79cb15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:58:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
ENV KAPACITOR_VERSION=1.8.9
# Wed, 04 Nov 2026 23:58:37 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 04 Nov 2026 23:58:37 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 04 Nov 2026 23:58:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:58:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:58:37 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8683688cadbe2a286c64253ef3f6cd7760bf514bf2ee3ee0c44c3e7f59ec4c05`  
		Last Modified: Mon, 26 Oct 2026 23:02:20 GMT  
		Size: 7.1 MB (7066793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccd96ad2fd4d03450186b660949c6e33b6c85c7b25e11a596d9d2031582633f`  
		Last Modified: Wed, 04 Nov 2026 23:59:01 GMT  
		Size: 55.3 MB (55334202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc77aa0878a9a3bd55d092a41e0683d54460b62b706bcaf0d1e2a887b8ba872`  
		Last Modified: Wed, 04 Nov 2026 23:59:02 GMT  
		Size: 105.8 MB (105809868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fc58f79a95c7ac4f7c09cb377fa6fe0db041a0f30a14fa90016a89a5af26f5`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad9f3d7bf86971242aa4b5ae345915521800b57cbcc59d172cd9eb9a1d5cfe8`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:462d5a1a2d15135c7a44a34e766082f81e65c9a52753a109cd994d5caa3732e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cb4d07ee42781ce8b70e58cb93af572691a3126dc4d3b897e90f14e738e47a`

```dockerfile
```

-	Layers:
	-	`sha256:9f4774ed25ed7c88db7866c5b2148e680908ad12987654476e29c51ddf3b4d25`  
		Last Modified: Wed, 04 Nov 2026 23:58:59 GMT  
		Size: 3.7 MB (3738265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f04364f1eaf698eddc3ad24ac16ceeb4cb5c2462bd24c062e76e8dee83e8c0e`  
		Last Modified: Wed, 04 Nov 2026 23:58:58 GMT  
		Size: 15.0 KB (15021 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:894e214d867d057327e368acf8db6ff0bc97674e89da2b4f19ef892fc211e026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187864789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0756c95dba3a1877e90838912899d07dd478541db66747557e9ae5fab7a83ae1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:58:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
ENV KAPACITOR_VERSION=1.8.9
# Wed, 04 Nov 2026 23:58:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 04 Nov 2026 23:58:22 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 04 Nov 2026 23:58:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:58:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:58:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4e2e86b0d238d884dc7bed967d31bfa9f7a8d39a2ac1b85ffc01099046e925`  
		Last Modified: Mon, 26 Oct 2026 23:08:19 GMT  
		Size: 7.0 MB (7021372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbd33d780db083d0966f268ff200af67ebcbdb4b1a89a85d31f3cba24f741bb`  
		Last Modified: Wed, 04 Nov 2026 23:58:44 GMT  
		Size: 54.8 MB (54768201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee027c8246b270ae6997b6170e47f3938c7721d01dd8642492e51fadcd5e7a1`  
		Last Modified: Wed, 04 Nov 2026 23:58:45 GMT  
		Size: 98.4 MB (98390087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81daab8df1a36b4f78f2de9d15cbc36bf1a29cfa8dcea7fc37df8e47ddb27f9a`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a3cb1c95a362e285524231436e848e5e2064d62643667d32d0803f545bdd67`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:93d166d236a83059ba9b896053c80aabbb8bb82a2842915d4624bb84feb3fbaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3752612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63b03c86e07eaa1bd4b0a63dd04464a2527a2c2fa9b4847e2080d279d96be8d`

```dockerfile
```

-	Layers:
	-	`sha256:cea555d6d7fc5e57ed97d299979d118a3c25a9441b0f6a5401a3ed44bcfe6071`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 3.7 MB (3737485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325e2565e7d0f684fdb2cb2a009258a4d89cbdcdeec86374e6547fb6b1660cd9`  
		Last Modified: Wed, 04 Nov 2026 23:58:42 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
