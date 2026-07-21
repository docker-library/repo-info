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
$ docker pull kapacitor@sha256:3bf563d0e64ca7180b8dbc49c8036e9a27da10507ad0bfe275475249136874de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:bab159987eaa308c22f7be6e067e0969e508d9beda32cf4da401ef0a7be99db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161926664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b01a3bf9e85ec34062f1fb92553870f5d7b7628cf9119f2001f8e6a0a647d4`
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
# Mon, 20 Jul 2026 18:47:55 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:47:59 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 20 Jul 2026 18:47:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:47:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:47:59 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:47:59 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:47:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:47:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:47:59 GMT
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
	-	`sha256:5bf9872253ed0034c2fb25b8cc9cf49ec651cb52cb36c3052ad4d6cfc11128e9`  
		Last Modified: Mon, 20 Jul 2026 18:48:14 GMT  
		Size: 53.1 MB (53070716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c52b127f732037f4397c891b8d4ebbcffb9e3999e0510969852d4d2261cf2d`  
		Last Modified: Mon, 20 Jul 2026 18:48:14 GMT  
		Size: 72.1 MB (72051267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8021791582c52c5d26275b4876ef5af6b259637a1df2d7b01197b9b74b3605c1`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6845ebc76e43edf59f5e5b79c20f3320e01717822d2064f68a8769e453ca0fd4`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:6696fe1321f212e990b75a28ed3787fe76bd5914a7c0ae3747c3fcd0defff4e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40d64fffa2e91756797e4c1d2ec1837e8b7544ff36eb18af28e85c30bd93142`

```dockerfile
```

-	Layers:
	-	`sha256:dc230553698ef6952bb41780f0591714c4101d908ff4ef2ba462acc045740a3d`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 3.7 MB (3700416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:866c100986551e6a9c51221d6f2c0f8ed37f19f3752bfb274febbcb1ef7c070c`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:26a2072dd1c2657094b8c2f184c5df503ff768b15b3b34f426e9ae34389afead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154713803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:895251bf493adff92feb49f7b2bee0b607897e36ab14ac4b6ff445d5d7817ae9`
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
# Mon, 20 Jul 2026 18:47:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:48:02 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 20 Jul 2026 18:48:02 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:48:02 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:02 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:02 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:02 GMT
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
	-	`sha256:eb0f967b7f0701d183fb3e7e8fa1a3f054ad5bfcd66314800106a70aea9365b6`  
		Last Modified: Mon, 20 Jul 2026 18:48:17 GMT  
		Size: 52.3 MB (52266585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777758dc8c7678176aa8bea925ca4687e229fc821b560ca2f8385b719ee9ded6`  
		Last Modified: Mon, 20 Jul 2026 18:48:18 GMT  
		Size: 67.8 MB (67813849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043bc953c6b59623759cf009f5952a246f52b6eecdd0d231b251f0836e930e93`  
		Last Modified: Mon, 20 Jul 2026 18:48:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6845ebc76e43edf59f5e5b79c20f3320e01717822d2064f68a8769e453ca0fd4`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:669f61167778c9ad618fd47c772c1907bf7b8f0698d7fefc8442506ea0ae52b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10ceec94d91c9701d005093befd88833bf2a0cc1e0580ea1fd04913db46611`

```dockerfile
```

-	Layers:
	-	`sha256:12d8841b205e4f1992d25d7d7b81c6f380fec68d374af44bf3b6ae982da6b8b8`  
		Last Modified: Mon, 20 Jul 2026 18:48:15 GMT  
		Size: 3.7 MB (3699878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff34839a50440592a91b0036d7cccf117b724528bb5c14706c37ce87a8fd2f6a`  
		Last Modified: Mon, 20 Jul 2026 18:48:15 GMT  
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
$ docker pull kapacitor@sha256:3bf563d0e64ca7180b8dbc49c8036e9a27da10507ad0bfe275475249136874de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:bab159987eaa308c22f7be6e067e0969e508d9beda32cf4da401ef0a7be99db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161926664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b01a3bf9e85ec34062f1fb92553870f5d7b7628cf9119f2001f8e6a0a647d4`
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
# Mon, 20 Jul 2026 18:47:55 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:47:59 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 20 Jul 2026 18:47:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:47:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:47:59 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:47:59 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:47:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:47:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:47:59 GMT
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
	-	`sha256:5bf9872253ed0034c2fb25b8cc9cf49ec651cb52cb36c3052ad4d6cfc11128e9`  
		Last Modified: Mon, 20 Jul 2026 18:48:14 GMT  
		Size: 53.1 MB (53070716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c52b127f732037f4397c891b8d4ebbcffb9e3999e0510969852d4d2261cf2d`  
		Last Modified: Mon, 20 Jul 2026 18:48:14 GMT  
		Size: 72.1 MB (72051267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8021791582c52c5d26275b4876ef5af6b259637a1df2d7b01197b9b74b3605c1`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6845ebc76e43edf59f5e5b79c20f3320e01717822d2064f68a8769e453ca0fd4`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:6696fe1321f212e990b75a28ed3787fe76bd5914a7c0ae3747c3fcd0defff4e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40d64fffa2e91756797e4c1d2ec1837e8b7544ff36eb18af28e85c30bd93142`

```dockerfile
```

-	Layers:
	-	`sha256:dc230553698ef6952bb41780f0591714c4101d908ff4ef2ba462acc045740a3d`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 3.7 MB (3700416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:866c100986551e6a9c51221d6f2c0f8ed37f19f3752bfb274febbcb1ef7c070c`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:26a2072dd1c2657094b8c2f184c5df503ff768b15b3b34f426e9ae34389afead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154713803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:895251bf493adff92feb49f7b2bee0b607897e36ab14ac4b6ff445d5d7817ae9`
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
# Mon, 20 Jul 2026 18:47:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:48:02 GMT
ENV KAPACITOR_VERSION=1.7.7
# Mon, 20 Jul 2026 18:48:02 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:48:02 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:02 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:02 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:02 GMT
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
	-	`sha256:eb0f967b7f0701d183fb3e7e8fa1a3f054ad5bfcd66314800106a70aea9365b6`  
		Last Modified: Mon, 20 Jul 2026 18:48:17 GMT  
		Size: 52.3 MB (52266585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777758dc8c7678176aa8bea925ca4687e229fc821b560ca2f8385b719ee9ded6`  
		Last Modified: Mon, 20 Jul 2026 18:48:18 GMT  
		Size: 67.8 MB (67813849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043bc953c6b59623759cf009f5952a246f52b6eecdd0d231b251f0836e930e93`  
		Last Modified: Mon, 20 Jul 2026 18:48:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6845ebc76e43edf59f5e5b79c20f3320e01717822d2064f68a8769e453ca0fd4`  
		Last Modified: Mon, 20 Jul 2026 18:48:12 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:669f61167778c9ad618fd47c772c1907bf7b8f0698d7fefc8442506ea0ae52b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10ceec94d91c9701d005093befd88833bf2a0cc1e0580ea1fd04913db46611`

```dockerfile
```

-	Layers:
	-	`sha256:12d8841b205e4f1992d25d7d7b81c6f380fec68d374af44bf3b6ae982da6b8b8`  
		Last Modified: Mon, 20 Jul 2026 18:48:15 GMT  
		Size: 3.7 MB (3699878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff34839a50440592a91b0036d7cccf117b724528bb5c14706c37ce87a8fd2f6a`  
		Last Modified: Mon, 20 Jul 2026 18:48:15 GMT  
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
$ docker pull kapacitor@sha256:920171ab8733aa5e9352a08b7fd336da9c0074b6795898ae923246dcc2630949
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:2530e2c0c6500515735cbac9b4c5f1f7455f0f947a871e2337e52df4cf3016a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183046264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc8b001cd6511aa4111c32186d8ec23b1e389303bae8e512d0c714415f323cc`
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
# Mon, 20 Jul 2026 18:47:55 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:48:50 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:50 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:50 GMT
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
	-	`sha256:5bf9872253ed0034c2fb25b8cc9cf49ec651cb52cb36c3052ad4d6cfc11128e9`  
		Last Modified: Mon, 20 Jul 2026 18:48:14 GMT  
		Size: 53.1 MB (53070716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df7bfb2dde727e2972a61be5d593da781014fd71baf9161c7bc8599795b84a4`  
		Last Modified: Mon, 20 Jul 2026 18:49:09 GMT  
		Size: 93.2 MB (93170864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d558c1e506e6f93d1b2a8a53287ee194d037bf25b6a704b2435ced06203e8`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0100931cac5030349e7d1e2fe34ae7d884773c44687a617b50fc1419104954f5`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:de0ea3f0fea580bc93edaa2c454f48894a62e4b3ec076fb38e2ea1f209b1db12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5561ae0afd77337f4a215e32e7e73e43d3d24197d56c1c22c4d1f3a55e59452`

```dockerfile
```

-	Layers:
	-	`sha256:cbd69f99cf5e0c46a4be13f9315cc77d26da15a059eebba98f3e8c6341958b2f`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 3.7 MB (3730001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a5d888f7f6960b8411ff44520297437f75f6b5a3d0e4e6b40251c236abb199`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3fe0ac76f9e9c64eef2b82043e2ee7d176f1ec4d2b70d8e06d4dbc3b77dba935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174052159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44cae59b2c3f93cd08e267e4aaf992280cbc297bcbceebdc22d62c1036583d4c`
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
# Mon, 20 Jul 2026 18:47:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:48:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:29 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:29 GMT
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
	-	`sha256:eb0f967b7f0701d183fb3e7e8fa1a3f054ad5bfcd66314800106a70aea9365b6`  
		Last Modified: Mon, 20 Jul 2026 18:48:17 GMT  
		Size: 52.3 MB (52266585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aadb7f24edf6b62587d094010ca1e1e8ae43dc71a865d50166408866b4b7eaf`  
		Last Modified: Mon, 20 Jul 2026 18:48:49 GMT  
		Size: 87.2 MB (87152204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb414c5d0ed36d27547350a81e51767de2c5e46619e20d70bb02b31dcecde91`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2108d1527303102d1ebb898a074967fc353b268914ac739c4454e1214ba13961`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:593d0a997d1ae89ac926569f82a6bcfa361218b1b59caf7617a2a4c63db1ac90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1245979e0960904b8dfe0f23b62fc7c093afcb9e7d1356590c3c7ce9149d48`

```dockerfile
```

-	Layers:
	-	`sha256:89d29891aa106554b247d20ca709d1c15e6a64f0e790dc1ffb929e33641fe9b2`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 3.7 MB (3729475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e151ab8f7781358e2ddad7657138edbf502137a6d6f28c042533eb905084282d`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
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
$ docker pull kapacitor@sha256:920171ab8733aa5e9352a08b7fd336da9c0074b6795898ae923246dcc2630949
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.6` - linux; amd64

```console
$ docker pull kapacitor@sha256:2530e2c0c6500515735cbac9b4c5f1f7455f0f947a871e2337e52df4cf3016a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183046264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc8b001cd6511aa4111c32186d8ec23b1e389303bae8e512d0c714415f323cc`
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
# Mon, 20 Jul 2026 18:47:55 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:48:50 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:50 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:50 GMT
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
	-	`sha256:5bf9872253ed0034c2fb25b8cc9cf49ec651cb52cb36c3052ad4d6cfc11128e9`  
		Last Modified: Mon, 20 Jul 2026 18:48:14 GMT  
		Size: 53.1 MB (53070716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df7bfb2dde727e2972a61be5d593da781014fd71baf9161c7bc8599795b84a4`  
		Last Modified: Mon, 20 Jul 2026 18:49:09 GMT  
		Size: 93.2 MB (93170864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d558c1e506e6f93d1b2a8a53287ee194d037bf25b6a704b2435ced06203e8`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0100931cac5030349e7d1e2fe34ae7d884773c44687a617b50fc1419104954f5`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6` - unknown; unknown

```console
$ docker pull kapacitor@sha256:de0ea3f0fea580bc93edaa2c454f48894a62e4b3ec076fb38e2ea1f209b1db12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5561ae0afd77337f4a215e32e7e73e43d3d24197d56c1c22c4d1f3a55e59452`

```dockerfile
```

-	Layers:
	-	`sha256:cbd69f99cf5e0c46a4be13f9315cc77d26da15a059eebba98f3e8c6341958b2f`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 3.7 MB (3730001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a5d888f7f6960b8411ff44520297437f75f6b5a3d0e4e6b40251c236abb199`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.6` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3fe0ac76f9e9c64eef2b82043e2ee7d176f1ec4d2b70d8e06d4dbc3b77dba935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174052159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44cae59b2c3f93cd08e267e4aaf992280cbc297bcbceebdc22d62c1036583d4c`
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
# Mon, 20 Jul 2026 18:47:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:48:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:29 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:29 GMT
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
	-	`sha256:eb0f967b7f0701d183fb3e7e8fa1a3f054ad5bfcd66314800106a70aea9365b6`  
		Last Modified: Mon, 20 Jul 2026 18:48:17 GMT  
		Size: 52.3 MB (52266585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aadb7f24edf6b62587d094010ca1e1e8ae43dc71a865d50166408866b4b7eaf`  
		Last Modified: Mon, 20 Jul 2026 18:48:49 GMT  
		Size: 87.2 MB (87152204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb414c5d0ed36d27547350a81e51767de2c5e46619e20d70bb02b31dcecde91`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2108d1527303102d1ebb898a074967fc353b268914ac739c4454e1214ba13961`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6` - unknown; unknown

```console
$ docker pull kapacitor@sha256:593d0a997d1ae89ac926569f82a6bcfa361218b1b59caf7617a2a4c63db1ac90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1245979e0960904b8dfe0f23b62fc7c093afcb9e7d1356590c3c7ce9149d48`

```dockerfile
```

-	Layers:
	-	`sha256:89d29891aa106554b247d20ca709d1c15e6a64f0e790dc1ffb929e33641fe9b2`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 3.7 MB (3729475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e151ab8f7781358e2ddad7657138edbf502137a6d6f28c042533eb905084282d`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
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
$ docker pull kapacitor@sha256:920171ab8733aa5e9352a08b7fd336da9c0074b6795898ae923246dcc2630949
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:2530e2c0c6500515735cbac9b4c5f1f7455f0f947a871e2337e52df4cf3016a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183046264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc8b001cd6511aa4111c32186d8ec23b1e389303bae8e512d0c714415f323cc`
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
# Mon, 20 Jul 2026 18:47:55 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:48:50 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:50 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:50 GMT
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
	-	`sha256:5bf9872253ed0034c2fb25b8cc9cf49ec651cb52cb36c3052ad4d6cfc11128e9`  
		Last Modified: Mon, 20 Jul 2026 18:48:14 GMT  
		Size: 53.1 MB (53070716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df7bfb2dde727e2972a61be5d593da781014fd71baf9161c7bc8599795b84a4`  
		Last Modified: Mon, 20 Jul 2026 18:49:09 GMT  
		Size: 93.2 MB (93170864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d558c1e506e6f93d1b2a8a53287ee194d037bf25b6a704b2435ced06203e8`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0100931cac5030349e7d1e2fe34ae7d884773c44687a617b50fc1419104954f5`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:de0ea3f0fea580bc93edaa2c454f48894a62e4b3ec076fb38e2ea1f209b1db12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5561ae0afd77337f4a215e32e7e73e43d3d24197d56c1c22c4d1f3a55e59452`

```dockerfile
```

-	Layers:
	-	`sha256:cbd69f99cf5e0c46a4be13f9315cc77d26da15a059eebba98f3e8c6341958b2f`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 3.7 MB (3730001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a5d888f7f6960b8411ff44520297437f75f6b5a3d0e4e6b40251c236abb199`  
		Last Modified: Mon, 20 Jul 2026 18:49:07 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3fe0ac76f9e9c64eef2b82043e2ee7d176f1ec4d2b70d8e06d4dbc3b77dba935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174052159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44cae59b2c3f93cd08e267e4aaf992280cbc297bcbceebdc22d62c1036583d4c`
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
# Mon, 20 Jul 2026 18:47:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
ENV KAPACITOR_VERSION=1.8.6
# Mon, 20 Jul 2026 18:48:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
EXPOSE map[9092/tcp:{}]
# Mon, 20 Jul 2026 18:48:29 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 20 Jul 2026 18:48:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 18:48:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 18:48:29 GMT
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
	-	`sha256:eb0f967b7f0701d183fb3e7e8fa1a3f054ad5bfcd66314800106a70aea9365b6`  
		Last Modified: Mon, 20 Jul 2026 18:48:17 GMT  
		Size: 52.3 MB (52266585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aadb7f24edf6b62587d094010ca1e1e8ae43dc71a865d50166408866b4b7eaf`  
		Last Modified: Mon, 20 Jul 2026 18:48:49 GMT  
		Size: 87.2 MB (87152204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb414c5d0ed36d27547350a81e51767de2c5e46619e20d70bb02b31dcecde91`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2108d1527303102d1ebb898a074967fc353b268914ac739c4454e1214ba13961`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:593d0a997d1ae89ac926569f82a6bcfa361218b1b59caf7617a2a4c63db1ac90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1245979e0960904b8dfe0f23b62fc7c093afcb9e7d1356590c3c7ce9149d48`

```dockerfile
```

-	Layers:
	-	`sha256:89d29891aa106554b247d20ca709d1c15e6a64f0e790dc1ffb929e33641fe9b2`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 3.7 MB (3729475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e151ab8f7781358e2ddad7657138edbf502137a6d6f28c042533eb905084282d`  
		Last Modified: Mon, 20 Jul 2026 18:48:47 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
