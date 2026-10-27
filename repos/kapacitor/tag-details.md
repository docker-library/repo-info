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
$ docker pull kapacitor@sha256:01d6b88a3ab984684c3b4339c68446e48567a7e8a327b48a7d7bccd9e0bcbb9e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:c879e886a5f18e3986c892232d328fd632cb5986d81ed2ee7bbd50ea17222365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186538944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771ca509a2f300ee673661c617a775a9d34e152cfeb969afe363e7e18124ca56`
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
# Mon, 26 Oct 2026 23:50:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 26 Oct 2026 23:50:12 GMT
ENV KAPACITOR_VERSION=1.8.8
# Mon, 26 Oct 2026 23:50:12 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 26 Oct 2026 23:50:13 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 26 Oct 2026 23:50:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:50:13 GMT
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
	-	`sha256:7c2886abda31663ae58f7bcc78b721ae461f2e9c5e3dfb9732ce47ef6785dba6`  
		Last Modified: Mon, 26 Oct 2026 23:50:35 GMT  
		Size: 55.1 MB (55148238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03edddd9d1cf8e776089abb5a98d00b99647dc2d9ecf890566e37beb6e9c955c`  
		Last Modified: Mon, 26 Oct 2026 23:50:36 GMT  
		Size: 94.6 MB (94570903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9986254c6b7774619ca86df308e9816ae6b44a098c05f0eb6b86b88d2c5b0e`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b177da53c801091cdbc634b5b92ed76eca5b4bcd4c82def22659eeb9352df31`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ab1176463e943132932631f9d4d6d4b7fc6901d4bc3f6d8e57b31e2150015fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6f63746aa8d201ecefb7e14249fa16fe6e081eb2445814eb0df876aac4228f`

```dockerfile
```

-	Layers:
	-	`sha256:dbe814d9b7c4423787a7012d1f13e3e0bc3490bb332e944f71f2f99cf72c0700`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 3.7 MB (3728640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ad0fafe03e746ccdd8d4273ae57efd7c3b423aee690bf6333df5e3136a8fde`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 15.0 KB (15019 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:f4cb777d84baf1136b965177d8989dab428fd9c2f3c5d9eb0e7e299a198253a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177676042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998a347feea52e57672f8532cc4f816ace2a084c8d873393fad5b52e7de8ef2f`
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
# Tue, 27 Oct 2026 00:26:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
ENV KAPACITOR_VERSION=1.8.8
# Tue, 27 Oct 2026 00:26:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 27 Oct 2026 00:26:29 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Oct 2026 00:26:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 00:26:29 GMT
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
	-	`sha256:f391df51117af76fa13f38d6a62f07f2909245d37247da566e6aff6320274d3d`  
		Last Modified: Tue, 27 Oct 2026 00:26:49 GMT  
		Size: 54.6 MB (54587016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7bcbc9169a3ea5a0660d3e004ba97b82143a62b6d62e6cfbbf4991b49d4dc02`  
		Last Modified: Tue, 27 Oct 2026 00:26:50 GMT  
		Size: 88.4 MB (88382524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050ee03f093932137b9219bbacaca1636c6507108ea158a3ac7099b91583e1b4`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dff80a4165fc6b5a45be0ea66bd1227cd3a7ae359ebac776e654917805df397`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:95b71c929e20339d755b64299c5041b8984a8fa617f83d0844baf24313f70cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb029c6f389db83641b13d6685240cb569fa42a8f583adca5bc09c7a822152f0`

```dockerfile
```

-	Layers:
	-	`sha256:e8cd3439009e74f0334c2cbfb463df758629050d8bd06b1cd57fb8efa407f89e`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 3.7 MB (3728114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:257c4f4638911fb30e6de060d8b26a1952be2507329668a50ae0e373255a7bc0`  
		Last Modified: Tue, 27 Oct 2026 00:26:46 GMT  
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
$ docker pull kapacitor@sha256:01d6b88a3ab984684c3b4339c68446e48567a7e8a327b48a7d7bccd9e0bcbb9e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:c879e886a5f18e3986c892232d328fd632cb5986d81ed2ee7bbd50ea17222365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186538944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771ca509a2f300ee673661c617a775a9d34e152cfeb969afe363e7e18124ca56`
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
# Mon, 26 Oct 2026 23:50:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 26 Oct 2026 23:50:12 GMT
ENV KAPACITOR_VERSION=1.8.8
# Mon, 26 Oct 2026 23:50:12 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 26 Oct 2026 23:50:13 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 26 Oct 2026 23:50:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:50:13 GMT
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
	-	`sha256:7c2886abda31663ae58f7bcc78b721ae461f2e9c5e3dfb9732ce47ef6785dba6`  
		Last Modified: Mon, 26 Oct 2026 23:50:35 GMT  
		Size: 55.1 MB (55148238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03edddd9d1cf8e776089abb5a98d00b99647dc2d9ecf890566e37beb6e9c955c`  
		Last Modified: Mon, 26 Oct 2026 23:50:36 GMT  
		Size: 94.6 MB (94570903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9986254c6b7774619ca86df308e9816ae6b44a098c05f0eb6b86b88d2c5b0e`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b177da53c801091cdbc634b5b92ed76eca5b4bcd4c82def22659eeb9352df31`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ab1176463e943132932631f9d4d6d4b7fc6901d4bc3f6d8e57b31e2150015fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6f63746aa8d201ecefb7e14249fa16fe6e081eb2445814eb0df876aac4228f`

```dockerfile
```

-	Layers:
	-	`sha256:dbe814d9b7c4423787a7012d1f13e3e0bc3490bb332e944f71f2f99cf72c0700`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 3.7 MB (3728640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ad0fafe03e746ccdd8d4273ae57efd7c3b423aee690bf6333df5e3136a8fde`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 15.0 KB (15019 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:f4cb777d84baf1136b965177d8989dab428fd9c2f3c5d9eb0e7e299a198253a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177676042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998a347feea52e57672f8532cc4f816ace2a084c8d873393fad5b52e7de8ef2f`
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
# Tue, 27 Oct 2026 00:26:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
ENV KAPACITOR_VERSION=1.8.8
# Tue, 27 Oct 2026 00:26:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 27 Oct 2026 00:26:29 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Oct 2026 00:26:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 00:26:29 GMT
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
	-	`sha256:f391df51117af76fa13f38d6a62f07f2909245d37247da566e6aff6320274d3d`  
		Last Modified: Tue, 27 Oct 2026 00:26:49 GMT  
		Size: 54.6 MB (54587016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7bcbc9169a3ea5a0660d3e004ba97b82143a62b6d62e6cfbbf4991b49d4dc02`  
		Last Modified: Tue, 27 Oct 2026 00:26:50 GMT  
		Size: 88.4 MB (88382524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050ee03f093932137b9219bbacaca1636c6507108ea158a3ac7099b91583e1b4`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dff80a4165fc6b5a45be0ea66bd1227cd3a7ae359ebac776e654917805df397`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:95b71c929e20339d755b64299c5041b8984a8fa617f83d0844baf24313f70cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb029c6f389db83641b13d6685240cb569fa42a8f583adca5bc09c7a822152f0`

```dockerfile
```

-	Layers:
	-	`sha256:e8cd3439009e74f0334c2cbfb463df758629050d8bd06b1cd57fb8efa407f89e`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 3.7 MB (3728114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:257c4f4638911fb30e6de060d8b26a1952be2507329668a50ae0e373255a7bc0`  
		Last Modified: Tue, 27 Oct 2026 00:26:46 GMT  
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
$ docker pull kapacitor@sha256:01d6b88a3ab984684c3b4339c68446e48567a7e8a327b48a7d7bccd9e0bcbb9e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:c879e886a5f18e3986c892232d328fd632cb5986d81ed2ee7bbd50ea17222365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186538944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771ca509a2f300ee673661c617a775a9d34e152cfeb969afe363e7e18124ca56`
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
# Mon, 26 Oct 2026 23:50:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 26 Oct 2026 23:50:12 GMT
ENV KAPACITOR_VERSION=1.8.8
# Mon, 26 Oct 2026 23:50:12 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 26 Oct 2026 23:50:13 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 26 Oct 2026 23:50:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:50:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:50:13 GMT
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
	-	`sha256:7c2886abda31663ae58f7bcc78b721ae461f2e9c5e3dfb9732ce47ef6785dba6`  
		Last Modified: Mon, 26 Oct 2026 23:50:35 GMT  
		Size: 55.1 MB (55148238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03edddd9d1cf8e776089abb5a98d00b99647dc2d9ecf890566e37beb6e9c955c`  
		Last Modified: Mon, 26 Oct 2026 23:50:36 GMT  
		Size: 94.6 MB (94570903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9986254c6b7774619ca86df308e9816ae6b44a098c05f0eb6b86b88d2c5b0e`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b177da53c801091cdbc634b5b92ed76eca5b4bcd4c82def22659eeb9352df31`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ab1176463e943132932631f9d4d6d4b7fc6901d4bc3f6d8e57b31e2150015fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6f63746aa8d201ecefb7e14249fa16fe6e081eb2445814eb0df876aac4228f`

```dockerfile
```

-	Layers:
	-	`sha256:dbe814d9b7c4423787a7012d1f13e3e0bc3490bb332e944f71f2f99cf72c0700`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 3.7 MB (3728640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ad0fafe03e746ccdd8d4273ae57efd7c3b423aee690bf6333df5e3136a8fde`  
		Last Modified: Mon, 26 Oct 2026 23:50:33 GMT  
		Size: 15.0 KB (15019 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:f4cb777d84baf1136b965177d8989dab428fd9c2f3c5d9eb0e7e299a198253a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177676042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998a347feea52e57672f8532cc4f816ace2a084c8d873393fad5b52e7de8ef2f`
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
# Tue, 27 Oct 2026 00:26:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
ENV KAPACITOR_VERSION=1.8.8
# Tue, 27 Oct 2026 00:26:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 27 Oct 2026 00:26:29 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 27 Oct 2026 00:26:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 00:26:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 00:26:29 GMT
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
	-	`sha256:f391df51117af76fa13f38d6a62f07f2909245d37247da566e6aff6320274d3d`  
		Last Modified: Tue, 27 Oct 2026 00:26:49 GMT  
		Size: 54.6 MB (54587016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7bcbc9169a3ea5a0660d3e004ba97b82143a62b6d62e6cfbbf4991b49d4dc02`  
		Last Modified: Tue, 27 Oct 2026 00:26:50 GMT  
		Size: 88.4 MB (88382524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050ee03f093932137b9219bbacaca1636c6507108ea158a3ac7099b91583e1b4`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dff80a4165fc6b5a45be0ea66bd1227cd3a7ae359ebac776e654917805df397`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:95b71c929e20339d755b64299c5041b8984a8fa617f83d0844baf24313f70cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb029c6f389db83641b13d6685240cb569fa42a8f583adca5bc09c7a822152f0`

```dockerfile
```

-	Layers:
	-	`sha256:e8cd3439009e74f0334c2cbfb463df758629050d8bd06b1cd57fb8efa407f89e`  
		Last Modified: Tue, 27 Oct 2026 00:26:47 GMT  
		Size: 3.7 MB (3728114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:257c4f4638911fb30e6de060d8b26a1952be2507329668a50ae0e373255a7bc0`  
		Last Modified: Tue, 27 Oct 2026 00:26:46 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
