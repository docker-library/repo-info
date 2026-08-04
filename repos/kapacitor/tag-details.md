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
$ docker pull kapacitor@sha256:c62822cf5c483f123e3f508393398dee774b2bebb06f45787a4fda7e44bc8c01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:cd69355dbba44d0a54f4fa7126722d4f3eb52e032608daf62606a694682ade90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162313728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a41165ad444f50e7243a4db7c5650074f27a98048b240d6a69d8f851939330`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:25:53 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:25:57 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 04 Aug 2026 02:25:57 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:25:57 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:25:57 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:25:57 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:25:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:25:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:25:57 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf7b87befb50213765c951274751e197c76a5f245262eb4a9fa7e520aa15a79`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 7.1 MB (7063655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b7fe10adad8346b3ab4e7c6d6de943d4262d9bc5104f745aea95d8b1b0a611`  
		Last Modified: Tue, 04 Aug 2026 02:26:12 GMT  
		Size: 53.5 MB (53461661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1188fcb4b9bb13adad1d5e031055b362f699ffe1281cd19ab893dc45780ff53f`  
		Last Modified: Tue, 04 Aug 2026 02:26:12 GMT  
		Size: 72.1 MB (72051371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30a4ed8a63ebaec4abaeb8b7d40704ac48710215eca9402d232f21b9b5a472d`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d706325e97f9885b904594266049484a5097b7febef7a7528594504a945c78f2`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f6e9289d84938b96ccb3ef0eb096926e98dce0107fedd5e038437c5de2faff05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f994afde99aef6c60a6eca55896df282e8ecbc84125471c203faa2a33440caf`

```dockerfile
```

-	Layers:
	-	`sha256:769d26d204a3a7756343457759d564897d6e9ab2f14f6b652230bd887151f266`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 3.7 MB (3700416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c8d4ab9b59d8279e2de5c95536e6f5efaccfcd8da871c06e0bb33f24432fcc2`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:7731615001326a7252f9101a3fe26e4ad49fcf91350bf3221a8ffdd01ab95bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155188149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ccfcac034d401f04ff1e4331ab9b5da3e25b0100091013fd82712843807ea4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:26:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:26:16 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 04 Aug 2026 02:26:16 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:26:16 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:26:16 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:26:16 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:26:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:26:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:26:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db488204f6ccfeed9bd4a5ec9dbf3df1a747afd85c90041db92f12f770654be4`  
		Last Modified: Tue, 04 Aug 2026 01:14:20 GMT  
		Size: 7.0 MB (7017933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f15d45f5c7cf92710ba2ec4bf8c77f80bd8f1d66a695150fc6a84a81d1ba22`  
		Last Modified: Tue, 04 Aug 2026 02:26:32 GMT  
		Size: 52.7 MB (52735853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a085fa99a0448941ab50dc8582de007e0c10200e3055746342a11d4c6d303b`  
		Last Modified: Tue, 04 Aug 2026 02:26:32 GMT  
		Size: 67.8 MB (67813806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcee4aa5e6714725fc618e17811b8b6aef85369e611b35a95284c46143630b5a`  
		Last Modified: Tue, 04 Aug 2026 02:26:29 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2596ae743cdb2fdcc6037090883b24b49dad7f0875d6b864c9c025e7e7075b`  
		Last Modified: Tue, 04 Aug 2026 02:26:29 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:341ea3b2d2a7f03c0b46b4d6824866a08a5c01a58804b4011b8daff5706a6c57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f90f5f0bee9d4f50e4d54b3369b5d6e20b9dfc177dee7b613725a6cecf932e`

```dockerfile
```

-	Layers:
	-	`sha256:6864191c2c0511012661073a1b6aa121c394711d1edc7ab0b4c3fcbbd202d3bb`  
		Last Modified: Tue, 04 Aug 2026 02:26:30 GMT  
		Size: 3.7 MB (3699878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:404b8191868124fbbefb9faea7bf02cd8d2aa002726f015a6a2e2993e821cc56`  
		Last Modified: Tue, 04 Aug 2026 02:26:30 GMT  
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
$ docker pull kapacitor@sha256:c62822cf5c483f123e3f508393398dee774b2bebb06f45787a4fda7e44bc8c01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:cd69355dbba44d0a54f4fa7126722d4f3eb52e032608daf62606a694682ade90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162313728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a41165ad444f50e7243a4db7c5650074f27a98048b240d6a69d8f851939330`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:25:53 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:25:57 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 04 Aug 2026 02:25:57 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:25:57 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:25:57 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:25:57 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:25:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:25:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:25:57 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf7b87befb50213765c951274751e197c76a5f245262eb4a9fa7e520aa15a79`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 7.1 MB (7063655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b7fe10adad8346b3ab4e7c6d6de943d4262d9bc5104f745aea95d8b1b0a611`  
		Last Modified: Tue, 04 Aug 2026 02:26:12 GMT  
		Size: 53.5 MB (53461661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1188fcb4b9bb13adad1d5e031055b362f699ffe1281cd19ab893dc45780ff53f`  
		Last Modified: Tue, 04 Aug 2026 02:26:12 GMT  
		Size: 72.1 MB (72051371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30a4ed8a63ebaec4abaeb8b7d40704ac48710215eca9402d232f21b9b5a472d`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d706325e97f9885b904594266049484a5097b7febef7a7528594504a945c78f2`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:f6e9289d84938b96ccb3ef0eb096926e98dce0107fedd5e038437c5de2faff05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f994afde99aef6c60a6eca55896df282e8ecbc84125471c203faa2a33440caf`

```dockerfile
```

-	Layers:
	-	`sha256:769d26d204a3a7756343457759d564897d6e9ab2f14f6b652230bd887151f266`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 3.7 MB (3700416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c8d4ab9b59d8279e2de5c95536e6f5efaccfcd8da871c06e0bb33f24432fcc2`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:7731615001326a7252f9101a3fe26e4ad49fcf91350bf3221a8ffdd01ab95bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155188149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ccfcac034d401f04ff1e4331ab9b5da3e25b0100091013fd82712843807ea4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:26:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:26:16 GMT
ENV KAPACITOR_VERSION=1.7.7
# Tue, 04 Aug 2026 02:26:16 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:26:16 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:26:16 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:26:16 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:26:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:26:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:26:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db488204f6ccfeed9bd4a5ec9dbf3df1a747afd85c90041db92f12f770654be4`  
		Last Modified: Tue, 04 Aug 2026 01:14:20 GMT  
		Size: 7.0 MB (7017933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f15d45f5c7cf92710ba2ec4bf8c77f80bd8f1d66a695150fc6a84a81d1ba22`  
		Last Modified: Tue, 04 Aug 2026 02:26:32 GMT  
		Size: 52.7 MB (52735853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a085fa99a0448941ab50dc8582de007e0c10200e3055746342a11d4c6d303b`  
		Last Modified: Tue, 04 Aug 2026 02:26:32 GMT  
		Size: 67.8 MB (67813806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcee4aa5e6714725fc618e17811b8b6aef85369e611b35a95284c46143630b5a`  
		Last Modified: Tue, 04 Aug 2026 02:26:29 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2596ae743cdb2fdcc6037090883b24b49dad7f0875d6b864c9c025e7e7075b`  
		Last Modified: Tue, 04 Aug 2026 02:26:29 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:341ea3b2d2a7f03c0b46b4d6824866a08a5c01a58804b4011b8daff5706a6c57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f90f5f0bee9d4f50e4d54b3369b5d6e20b9dfc177dee7b613725a6cecf932e`

```dockerfile
```

-	Layers:
	-	`sha256:6864191c2c0511012661073a1b6aa121c394711d1edc7ab0b4c3fcbbd202d3bb`  
		Last Modified: Tue, 04 Aug 2026 02:26:30 GMT  
		Size: 3.7 MB (3699878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:404b8191868124fbbefb9faea7bf02cd8d2aa002726f015a6a2e2993e821cc56`  
		Last Modified: Tue, 04 Aug 2026 02:26:30 GMT  
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
$ docker pull kapacitor@sha256:fbd64939b9f34a1f4ad98802c0a2353bdd3618c4392a4dfa1c496d8fa422ae84
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:c59ee869993f03c809760d73c379f3081d1739810260e7d99022aec9fe9b3bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183433323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22868f0bdffb56e7e9def6aa4a98d7b6231b724afbd9534d418fdd90a8999a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:25:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
ENV KAPACITOR_VERSION=1.8.6
# Tue, 04 Aug 2026 02:25:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:25:59 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:25:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:25:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf7b87befb50213765c951274751e197c76a5f245262eb4a9fa7e520aa15a79`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 7.1 MB (7063655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e3a15f550949a459a0f83ac4bccc4b491327240ab14fb9a9669bcae4579cec`  
		Last Modified: Tue, 04 Aug 2026 02:26:20 GMT  
		Size: 53.5 MB (53461661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31acb02b99738d9674be0cb9354a35a4dbf9c7c50b6a89ba7e55f16e0134a0d9`  
		Last Modified: Tue, 04 Aug 2026 02:26:21 GMT  
		Size: 93.2 MB (93170967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed45a94704dc62af0c3ed8a08e66bd142c51c464be96b83a02508d6658d39594`  
		Last Modified: Tue, 04 Aug 2026 02:26:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d706325e97f9885b904594266049484a5097b7febef7a7528594504a945c78f2`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ed3b4bad21b171dfa1571e1afef35c28e026163cfc96757fbfcd5c4d1a81ae37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0bd3cea6ae23f8cce464840d5833a68b5827dc620bda65124dee0adb834a05`

```dockerfile
```

-	Layers:
	-	`sha256:9041558b1bad369f850b938ebe35657f8d93ba8ffe87807e6d6d6e2be3864412`  
		Last Modified: Tue, 04 Aug 2026 02:26:19 GMT  
		Size: 3.7 MB (3730001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a42e67f560f675f7a805625cc7ffb297b8e1bc5a917aff24a2d6f5a39eef41a`  
		Last Modified: Tue, 04 Aug 2026 02:26:18 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:db8381642c6fb83f3aa6c9fde2bea29a5cf8dab2dae3b9eb5034a7cdb7a98536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174526587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2c683cff6eb88e44736cae3b624e52bd4b674664aa78d20a6f336047b6e587`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:26:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
ENV KAPACITOR_VERSION=1.8.6
# Tue, 04 Aug 2026 02:26:23 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:26:23 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:26:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:26:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db488204f6ccfeed9bd4a5ec9dbf3df1a747afd85c90041db92f12f770654be4`  
		Last Modified: Tue, 04 Aug 2026 01:14:20 GMT  
		Size: 7.0 MB (7017933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a1a9ab0c8d2993e499156775e944c95eb9076c1807c5a3a2cf3ee869c4e123`  
		Last Modified: Tue, 04 Aug 2026 02:26:43 GMT  
		Size: 52.7 MB (52735907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6a06666610aaaa2fda6e9a542ec58df0e72bc35b7e8bff4844c2bf4a3261a1`  
		Last Modified: Tue, 04 Aug 2026 02:26:44 GMT  
		Size: 87.2 MB (87152191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54845929a8331f43bfbcfac3f5387f63d4003c81710977523ad8ff1ff62a6eb`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87d48f3aa4e900de6e54bfaf96cc78fb15daa7901a7f5d0c1837efe33cbbc9c`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:71d846d7286c72a19219d37f3da83e359023b7287eb51c473cc7b4a0ff677276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901a18bebaedf9ba5f33b516708c0800b59bb919c760e7bea1c3d321bcc4e184`

```dockerfile
```

-	Layers:
	-	`sha256:cdb70b7bc3aeccdcaffe6c46747141c6a32cb510307c795cd3db295b746f700a`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 3.7 MB (3729475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70dba6da3cde38c5a80e3e8ca5997a21d751666ecad206e95fa21ed166f33b07`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
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
$ docker pull kapacitor@sha256:fbd64939b9f34a1f4ad98802c0a2353bdd3618c4392a4dfa1c496d8fa422ae84
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.6` - linux; amd64

```console
$ docker pull kapacitor@sha256:c59ee869993f03c809760d73c379f3081d1739810260e7d99022aec9fe9b3bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183433323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22868f0bdffb56e7e9def6aa4a98d7b6231b724afbd9534d418fdd90a8999a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:25:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
ENV KAPACITOR_VERSION=1.8.6
# Tue, 04 Aug 2026 02:25:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:25:59 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:25:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:25:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf7b87befb50213765c951274751e197c76a5f245262eb4a9fa7e520aa15a79`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 7.1 MB (7063655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e3a15f550949a459a0f83ac4bccc4b491327240ab14fb9a9669bcae4579cec`  
		Last Modified: Tue, 04 Aug 2026 02:26:20 GMT  
		Size: 53.5 MB (53461661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31acb02b99738d9674be0cb9354a35a4dbf9c7c50b6a89ba7e55f16e0134a0d9`  
		Last Modified: Tue, 04 Aug 2026 02:26:21 GMT  
		Size: 93.2 MB (93170967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed45a94704dc62af0c3ed8a08e66bd142c51c464be96b83a02508d6658d39594`  
		Last Modified: Tue, 04 Aug 2026 02:26:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d706325e97f9885b904594266049484a5097b7febef7a7528594504a945c78f2`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ed3b4bad21b171dfa1571e1afef35c28e026163cfc96757fbfcd5c4d1a81ae37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0bd3cea6ae23f8cce464840d5833a68b5827dc620bda65124dee0adb834a05`

```dockerfile
```

-	Layers:
	-	`sha256:9041558b1bad369f850b938ebe35657f8d93ba8ffe87807e6d6d6e2be3864412`  
		Last Modified: Tue, 04 Aug 2026 02:26:19 GMT  
		Size: 3.7 MB (3730001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a42e67f560f675f7a805625cc7ffb297b8e1bc5a917aff24a2d6f5a39eef41a`  
		Last Modified: Tue, 04 Aug 2026 02:26:18 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.6` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:db8381642c6fb83f3aa6c9fde2bea29a5cf8dab2dae3b9eb5034a7cdb7a98536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174526587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2c683cff6eb88e44736cae3b624e52bd4b674664aa78d20a6f336047b6e587`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:26:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
ENV KAPACITOR_VERSION=1.8.6
# Tue, 04 Aug 2026 02:26:23 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:26:23 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:26:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:26:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db488204f6ccfeed9bd4a5ec9dbf3df1a747afd85c90041db92f12f770654be4`  
		Last Modified: Tue, 04 Aug 2026 01:14:20 GMT  
		Size: 7.0 MB (7017933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a1a9ab0c8d2993e499156775e944c95eb9076c1807c5a3a2cf3ee869c4e123`  
		Last Modified: Tue, 04 Aug 2026 02:26:43 GMT  
		Size: 52.7 MB (52735907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6a06666610aaaa2fda6e9a542ec58df0e72bc35b7e8bff4844c2bf4a3261a1`  
		Last Modified: Tue, 04 Aug 2026 02:26:44 GMT  
		Size: 87.2 MB (87152191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54845929a8331f43bfbcfac3f5387f63d4003c81710977523ad8ff1ff62a6eb`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87d48f3aa4e900de6e54bfaf96cc78fb15daa7901a7f5d0c1837efe33cbbc9c`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.6` - unknown; unknown

```console
$ docker pull kapacitor@sha256:71d846d7286c72a19219d37f3da83e359023b7287eb51c473cc7b4a0ff677276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901a18bebaedf9ba5f33b516708c0800b59bb919c760e7bea1c3d321bcc4e184`

```dockerfile
```

-	Layers:
	-	`sha256:cdb70b7bc3aeccdcaffe6c46747141c6a32cb510307c795cd3db295b746f700a`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 3.7 MB (3729475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70dba6da3cde38c5a80e3e8ca5997a21d751666ecad206e95fa21ed166f33b07`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
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
$ docker pull kapacitor@sha256:fbd64939b9f34a1f4ad98802c0a2353bdd3618c4392a4dfa1c496d8fa422ae84
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:c59ee869993f03c809760d73c379f3081d1739810260e7d99022aec9fe9b3bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183433323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22868f0bdffb56e7e9def6aa4a98d7b6231b724afbd9534d418fdd90a8999a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:25:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
ENV KAPACITOR_VERSION=1.8.6
# Tue, 04 Aug 2026 02:25:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:25:59 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:25:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:25:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:25:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf7b87befb50213765c951274751e197c76a5f245262eb4a9fa7e520aa15a79`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 7.1 MB (7063655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e3a15f550949a459a0f83ac4bccc4b491327240ab14fb9a9669bcae4579cec`  
		Last Modified: Tue, 04 Aug 2026 02:26:20 GMT  
		Size: 53.5 MB (53461661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31acb02b99738d9674be0cb9354a35a4dbf9c7c50b6a89ba7e55f16e0134a0d9`  
		Last Modified: Tue, 04 Aug 2026 02:26:21 GMT  
		Size: 93.2 MB (93170967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed45a94704dc62af0c3ed8a08e66bd142c51c464be96b83a02508d6658d39594`  
		Last Modified: Tue, 04 Aug 2026 02:26:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d706325e97f9885b904594266049484a5097b7febef7a7528594504a945c78f2`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ed3b4bad21b171dfa1571e1afef35c28e026163cfc96757fbfcd5c4d1a81ae37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0bd3cea6ae23f8cce464840d5833a68b5827dc620bda65124dee0adb834a05`

```dockerfile
```

-	Layers:
	-	`sha256:9041558b1bad369f850b938ebe35657f8d93ba8ffe87807e6d6d6e2be3864412`  
		Last Modified: Tue, 04 Aug 2026 02:26:19 GMT  
		Size: 3.7 MB (3730001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a42e67f560f675f7a805625cc7ffb297b8e1bc5a917aff24a2d6f5a39eef41a`  
		Last Modified: Tue, 04 Aug 2026 02:26:18 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:db8381642c6fb83f3aa6c9fde2bea29a5cf8dab2dae3b9eb5034a7cdb7a98536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174526587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2c683cff6eb88e44736cae3b624e52bd4b674664aa78d20a6f336047b6e587`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:26:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
ENV KAPACITOR_VERSION=1.8.6
# Tue, 04 Aug 2026 02:26:23 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
EXPOSE map[9092/tcp:{}]
# Tue, 04 Aug 2026 02:26:23 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 04 Aug 2026 02:26:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 02:26:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:26:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db488204f6ccfeed9bd4a5ec9dbf3df1a747afd85c90041db92f12f770654be4`  
		Last Modified: Tue, 04 Aug 2026 01:14:20 GMT  
		Size: 7.0 MB (7017933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a1a9ab0c8d2993e499156775e944c95eb9076c1807c5a3a2cf3ee869c4e123`  
		Last Modified: Tue, 04 Aug 2026 02:26:43 GMT  
		Size: 52.7 MB (52735907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6a06666610aaaa2fda6e9a542ec58df0e72bc35b7e8bff4844c2bf4a3261a1`  
		Last Modified: Tue, 04 Aug 2026 02:26:44 GMT  
		Size: 87.2 MB (87152191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54845929a8331f43bfbcfac3f5387f63d4003c81710977523ad8ff1ff62a6eb`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87d48f3aa4e900de6e54bfaf96cc78fb15daa7901a7f5d0c1837efe33cbbc9c`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:71d846d7286c72a19219d37f3da83e359023b7287eb51c473cc7b4a0ff677276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901a18bebaedf9ba5f33b516708c0800b59bb919c760e7bea1c3d321bcc4e184`

```dockerfile
```

-	Layers:
	-	`sha256:cdb70b7bc3aeccdcaffe6c46747141c6a32cb510307c795cd3db295b746f700a`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 3.7 MB (3729475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70dba6da3cde38c5a80e3e8ca5997a21d751666ecad206e95fa21ed166f33b07`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
