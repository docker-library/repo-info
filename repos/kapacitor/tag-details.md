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
$ docker pull kapacitor@sha256:71c8ca1802cc7d953862be7780583058fb1c868da9e0e388e23b0e8552ce5297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:5aff7a90f89e76a4c2062c8f1d1c6155af7059829ab7f9fc6af818b00460d22f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163727609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e893ee924f3cffd0baf0e799780eae768e48efdafc2a74ff00a0ea8647ce27a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 02 Oct 2026 02:24:27 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:27 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db8ed672c4b7d83eb426f12b73ea575195b1bb136a0d41dea41885a97a6bcbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.1 MB (7065600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc996a19800bf419ccd8ffffd14a0fbd896b84176d14e8891073272ee213ea8`  
		Last Modified: Fri, 02 Oct 2026 02:24:42 GMT  
		Size: 54.9 MB (54858159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b97452a6d638d771887845b54519f00c359b04b8e3657fc30544455b4ed79b2`  
		Last Modified: Fri, 02 Oct 2026 02:24:42 GMT  
		Size: 72.1 MB (72051700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4334a0c478686c826e6201471fc130ae899d0225361bf8acaf055148be06293`  
		Last Modified: Fri, 02 Oct 2026 02:24:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043827aff50e52184c982459daea19b809df85c6402078532dbaecc3451ac89e`  
		Last Modified: Fri, 02 Oct 2026 02:24:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:7deb8a2e002b019802c263bb6f5c18354340cec71b6660041005ba60d52f45e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232dcebac9c182a9e1794720c7cf0dec8f26ffb20a4f94cc5e948292f7cf2480`

```dockerfile
```

-	Layers:
	-	`sha256:934cdfdc4489e9c337e2d05d6049fd35f066b78d10a7195e372f90efde5ef5b7`  
		Last Modified: Fri, 02 Oct 2026 02:24:39 GMT  
		Size: 3.7 MB (3702387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94b28d68c8ec7bf683f90716a2ecb1ae039c4517e0d97b8f049fcbba3d90a367`  
		Last Modified: Fri, 02 Oct 2026 02:24:39 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:c665a6d9d9f3fadbc02a533c464a323288da08a3e8606d1291875eaeb89a41a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156790933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9847a90b3f803c71e074210f725a9ba0f8d2f39172acd3a2df2390bc619ab02`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 02 Oct 2026 02:24:27 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:27 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f3f8a85d754643d27b840ab4aa86bc7f05da318fa54a74ac500a67359b240c`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.0 MB (7020326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7e0da5bf9c51c370be2933ee7ea96660b7dc5204cef557192e92374ec2da2`  
		Last Modified: Fri, 02 Oct 2026 02:24:42 GMT  
		Size: 54.3 MB (54271718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1a0b8d3c8d2f0d9c7633f58623bbc5e53f460f0b694a6a762c69cc6f82eb05`  
		Last Modified: Fri, 02 Oct 2026 02:24:42 GMT  
		Size: 67.8 MB (67814230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c257b66e6f347e3f95d2000c30ab435fcc19b51125b259bd9c62f729917a8815`  
		Last Modified: Fri, 02 Oct 2026 02:24:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f48a573380fb63a7414668000bbff494824ff6555b95779589c56961b37448`  
		Last Modified: Fri, 02 Oct 2026 02:24:40 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1e611ba2f03a7a5db095cec365ed7870c377deb4df9485aed88f0573a363a286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3716660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba973568c62ceaaca732a4d9ca0346c5b3dc99c8bfecd9aab9c5c24ada61434`

```dockerfile
```

-	Layers:
	-	`sha256:0ac2127c83a5608808487102866796ececc0f5852f91032e09ae5515208ce355`  
		Last Modified: Fri, 02 Oct 2026 02:24:40 GMT  
		Size: 3.7 MB (3701849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8560f18644b2329e9dd46975d0b90fd0d227ad162550f6d6cc06efaaac5853e9`  
		Last Modified: Fri, 02 Oct 2026 02:24:40 GMT  
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
$ docker pull kapacitor@sha256:71c8ca1802cc7d953862be7780583058fb1c868da9e0e388e23b0e8552ce5297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.7.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:5aff7a90f89e76a4c2062c8f1d1c6155af7059829ab7f9fc6af818b00460d22f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163727609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e893ee924f3cffd0baf0e799780eae768e48efdafc2a74ff00a0ea8647ce27a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 02 Oct 2026 02:24:27 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:27 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db8ed672c4b7d83eb426f12b73ea575195b1bb136a0d41dea41885a97a6bcbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.1 MB (7065600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc996a19800bf419ccd8ffffd14a0fbd896b84176d14e8891073272ee213ea8`  
		Last Modified: Fri, 02 Oct 2026 02:24:42 GMT  
		Size: 54.9 MB (54858159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b97452a6d638d771887845b54519f00c359b04b8e3657fc30544455b4ed79b2`  
		Last Modified: Fri, 02 Oct 2026 02:24:42 GMT  
		Size: 72.1 MB (72051700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4334a0c478686c826e6201471fc130ae899d0225361bf8acaf055148be06293`  
		Last Modified: Fri, 02 Oct 2026 02:24:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043827aff50e52184c982459daea19b809df85c6402078532dbaecc3451ac89e`  
		Last Modified: Fri, 02 Oct 2026 02:24:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:7deb8a2e002b019802c263bb6f5c18354340cec71b6660041005ba60d52f45e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232dcebac9c182a9e1794720c7cf0dec8f26ffb20a4f94cc5e948292f7cf2480`

```dockerfile
```

-	Layers:
	-	`sha256:934cdfdc4489e9c337e2d05d6049fd35f066b78d10a7195e372f90efde5ef5b7`  
		Last Modified: Fri, 02 Oct 2026 02:24:39 GMT  
		Size: 3.7 MB (3702387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94b28d68c8ec7bf683f90716a2ecb1ae039c4517e0d97b8f049fcbba3d90a367`  
		Last Modified: Fri, 02 Oct 2026 02:24:39 GMT  
		Size: 14.7 KB (14716 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.7.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:c665a6d9d9f3fadbc02a533c464a323288da08a3e8606d1291875eaeb89a41a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156790933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9847a90b3f803c71e074210f725a9ba0f8d2f39172acd3a2df2390bc619ab02`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
ENV KAPACITOR_VERSION=1.7.7
# Fri, 02 Oct 2026 02:24:27 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 9D539D90D3328DC7D6C8D3B9D8FF8E1F7DF8B07E &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:27 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f3f8a85d754643d27b840ab4aa86bc7f05da318fa54a74ac500a67359b240c`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.0 MB (7020326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7e0da5bf9c51c370be2933ee7ea96660b7dc5204cef557192e92374ec2da2`  
		Last Modified: Fri, 02 Oct 2026 02:24:42 GMT  
		Size: 54.3 MB (54271718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1a0b8d3c8d2f0d9c7633f58623bbc5e53f460f0b694a6a762c69cc6f82eb05`  
		Last Modified: Fri, 02 Oct 2026 02:24:42 GMT  
		Size: 67.8 MB (67814230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c257b66e6f347e3f95d2000c30ab435fcc19b51125b259bd9c62f729917a8815`  
		Last Modified: Fri, 02 Oct 2026 02:24:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f48a573380fb63a7414668000bbff494824ff6555b95779589c56961b37448`  
		Last Modified: Fri, 02 Oct 2026 02:24:40 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.7.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1e611ba2f03a7a5db095cec365ed7870c377deb4df9485aed88f0573a363a286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3716660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba973568c62ceaaca732a4d9ca0346c5b3dc99c8bfecd9aab9c5c24ada61434`

```dockerfile
```

-	Layers:
	-	`sha256:0ac2127c83a5608808487102866796ececc0f5852f91032e09ae5515208ce355`  
		Last Modified: Fri, 02 Oct 2026 02:24:40 GMT  
		Size: 3.7 MB (3701849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8560f18644b2329e9dd46975d0b90fd0d227ad162550f6d6cc06efaaac5853e9`  
		Last Modified: Fri, 02 Oct 2026 02:24:40 GMT  
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
$ docker pull kapacitor@sha256:869740bab2cd7c55bb06fe91f638935c81386c361be42f8eed128ef01461be91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:c5ec15c555447cbea200e9a3e19d9b8ec97371d916dace85b9bcb011fd4e10be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186208566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e228850e5cc91bc4a37826d82139b1ad0740b6f5f11917af10ff65c53e0a152a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:31 GMT
ENV KAPACITOR_VERSION=1.8.7
# Fri, 02 Oct 2026 02:24:31 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db8ed672c4b7d83eb426f12b73ea575195b1bb136a0d41dea41885a97a6bcbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.1 MB (7065600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bea8690faac1e3d06eb535f78f879984495e64e977ee19a5987481c035a5f09`  
		Last Modified: Fri, 02 Oct 2026 02:24:53 GMT  
		Size: 54.9 MB (54858117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2f61c55fd8db6efaf649284316f613ad4141cfbc859a77cec7f03d2c0d21a9`  
		Last Modified: Fri, 02 Oct 2026 02:24:54 GMT  
		Size: 94.5 MB (94532698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e363b73c38fe6a47799682d8d744fb9380c3c1f025d7bbcfcc29fd6aea0057`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40146acdd63bd2f5624c5fcbdc6de826ab50d48cdc733a4e5354841e8b8b8cdb`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:00d6d5c013c74d27b5d1bc4efeea2026121742e3a3691647a3899f874c1502d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d2d4991552f1a9db06505a9bc34e804e2472e3de6afd4c7448b1398593e5eb`

```dockerfile
```

-	Layers:
	-	`sha256:104da0793e7f9563f8457c3708fde90c44fb650ce79bec53620a0df7d79ca748`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 3.7 MB (3731175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce83b898d874dc9bcc2a94674067df78162b6e1693551a9540e85761d968010e`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3d26d90c9c3726392c0d010867aede38bd0436483505ba07aba98540f44ce862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177209762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ed7317dfeb789c5072d9ee88e45d829c8042ad32cfb5c1e3ae45d197f7e55`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
ENV KAPACITOR_VERSION=1.8.7
# Fri, 02 Oct 2026 02:24:34 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:34 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:34 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f3f8a85d754643d27b840ab4aa86bc7f05da318fa54a74ac500a67359b240c`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.0 MB (7020326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2462cb33c15f4cf3e9ac4ee355c24605162e267f0e8351c02e1598bb7a6615`  
		Last Modified: Fri, 02 Oct 2026 02:24:55 GMT  
		Size: 54.3 MB (54271683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fae2e0a2a4cecd5b7c7355006d087582e31a018cff2466319e8b67c31a21ae`  
		Last Modified: Fri, 02 Oct 2026 02:24:55 GMT  
		Size: 88.2 MB (88233092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6575661beeec2a7bc51e91fefc707b9952387d6cfd6bbcc17e0f675cd76606`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40146acdd63bd2f5624c5fcbdc6de826ab50d48cdc733a4e5354841e8b8b8cdb`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ec36a87d612eb7cf93ec46b5abf941dafbb8f524a1239d876adcda6dc783bb94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb8859e1016a49ff62c4d18d089f2debd2a40752b784b1c713b82460426b8c6`

```dockerfile
```

-	Layers:
	-	`sha256:cdbf269ff6761424fc356fdff08e093a11743bc73c607ffae2a850f9f16c6071`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 3.7 MB (3730649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:189a47492305936d56ce668a76d2973b9d75f322511fbcd740b4a44f3b1e473f`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
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
$ docker pull kapacitor@sha256:869740bab2cd7c55bb06fe91f638935c81386c361be42f8eed128ef01461be91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.7` - linux; amd64

```console
$ docker pull kapacitor@sha256:c5ec15c555447cbea200e9a3e19d9b8ec97371d916dace85b9bcb011fd4e10be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186208566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e228850e5cc91bc4a37826d82139b1ad0740b6f5f11917af10ff65c53e0a152a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:31 GMT
ENV KAPACITOR_VERSION=1.8.7
# Fri, 02 Oct 2026 02:24:31 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db8ed672c4b7d83eb426f12b73ea575195b1bb136a0d41dea41885a97a6bcbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.1 MB (7065600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bea8690faac1e3d06eb535f78f879984495e64e977ee19a5987481c035a5f09`  
		Last Modified: Fri, 02 Oct 2026 02:24:53 GMT  
		Size: 54.9 MB (54858117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2f61c55fd8db6efaf649284316f613ad4141cfbc859a77cec7f03d2c0d21a9`  
		Last Modified: Fri, 02 Oct 2026 02:24:54 GMT  
		Size: 94.5 MB (94532698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e363b73c38fe6a47799682d8d744fb9380c3c1f025d7bbcfcc29fd6aea0057`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40146acdd63bd2f5624c5fcbdc6de826ab50d48cdc733a4e5354841e8b8b8cdb`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:00d6d5c013c74d27b5d1bc4efeea2026121742e3a3691647a3899f874c1502d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d2d4991552f1a9db06505a9bc34e804e2472e3de6afd4c7448b1398593e5eb`

```dockerfile
```

-	Layers:
	-	`sha256:104da0793e7f9563f8457c3708fde90c44fb650ce79bec53620a0df7d79ca748`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 3.7 MB (3731175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce83b898d874dc9bcc2a94674067df78162b6e1693551a9540e85761d968010e`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.7` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3d26d90c9c3726392c0d010867aede38bd0436483505ba07aba98540f44ce862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177209762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ed7317dfeb789c5072d9ee88e45d829c8042ad32cfb5c1e3ae45d197f7e55`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
ENV KAPACITOR_VERSION=1.8.7
# Fri, 02 Oct 2026 02:24:34 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:34 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:34 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f3f8a85d754643d27b840ab4aa86bc7f05da318fa54a74ac500a67359b240c`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.0 MB (7020326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2462cb33c15f4cf3e9ac4ee355c24605162e267f0e8351c02e1598bb7a6615`  
		Last Modified: Fri, 02 Oct 2026 02:24:55 GMT  
		Size: 54.3 MB (54271683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fae2e0a2a4cecd5b7c7355006d087582e31a018cff2466319e8b67c31a21ae`  
		Last Modified: Fri, 02 Oct 2026 02:24:55 GMT  
		Size: 88.2 MB (88233092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6575661beeec2a7bc51e91fefc707b9952387d6cfd6bbcc17e0f675cd76606`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40146acdd63bd2f5624c5fcbdc6de826ab50d48cdc733a4e5354841e8b8b8cdb`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.7` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ec36a87d612eb7cf93ec46b5abf941dafbb8f524a1239d876adcda6dc783bb94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb8859e1016a49ff62c4d18d089f2debd2a40752b784b1c713b82460426b8c6`

```dockerfile
```

-	Layers:
	-	`sha256:cdbf269ff6761424fc356fdff08e093a11743bc73c607ffae2a850f9f16c6071`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 3.7 MB (3730649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:189a47492305936d56ce668a76d2973b9d75f322511fbcd740b4a44f3b1e473f`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
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
$ docker pull kapacitor@sha256:869740bab2cd7c55bb06fe91f638935c81386c361be42f8eed128ef01461be91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:c5ec15c555447cbea200e9a3e19d9b8ec97371d916dace85b9bcb011fd4e10be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186208566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e228850e5cc91bc4a37826d82139b1ad0740b6f5f11917af10ff65c53e0a152a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:31 GMT
ENV KAPACITOR_VERSION=1.8.7
# Fri, 02 Oct 2026 02:24:31 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db8ed672c4b7d83eb426f12b73ea575195b1bb136a0d41dea41885a97a6bcbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.1 MB (7065600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bea8690faac1e3d06eb535f78f879984495e64e977ee19a5987481c035a5f09`  
		Last Modified: Fri, 02 Oct 2026 02:24:53 GMT  
		Size: 54.9 MB (54858117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2f61c55fd8db6efaf649284316f613ad4141cfbc859a77cec7f03d2c0d21a9`  
		Last Modified: Fri, 02 Oct 2026 02:24:54 GMT  
		Size: 94.5 MB (94532698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e363b73c38fe6a47799682d8d744fb9380c3c1f025d7bbcfcc29fd6aea0057`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40146acdd63bd2f5624c5fcbdc6de826ab50d48cdc733a4e5354841e8b8b8cdb`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:00d6d5c013c74d27b5d1bc4efeea2026121742e3a3691647a3899f874c1502d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d2d4991552f1a9db06505a9bc34e804e2472e3de6afd4c7448b1398593e5eb`

```dockerfile
```

-	Layers:
	-	`sha256:104da0793e7f9563f8457c3708fde90c44fb650ce79bec53620a0df7d79ca748`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 3.7 MB (3731175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce83b898d874dc9bcc2a94674067df78162b6e1693551a9540e85761d968010e`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3d26d90c9c3726392c0d010867aede38bd0436483505ba07aba98540f44ce862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177209762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ed7317dfeb789c5072d9ee88e45d829c8042ad32cfb5c1e3ae45d197f7e55`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
ENV KAPACITOR_VERSION=1.8.7
# Fri, 02 Oct 2026 02:24:34 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:34 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:34 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f3f8a85d754643d27b840ab4aa86bc7f05da318fa54a74ac500a67359b240c`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.0 MB (7020326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2462cb33c15f4cf3e9ac4ee355c24605162e267f0e8351c02e1598bb7a6615`  
		Last Modified: Fri, 02 Oct 2026 02:24:55 GMT  
		Size: 54.3 MB (54271683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fae2e0a2a4cecd5b7c7355006d087582e31a018cff2466319e8b67c31a21ae`  
		Last Modified: Fri, 02 Oct 2026 02:24:55 GMT  
		Size: 88.2 MB (88233092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6575661beeec2a7bc51e91fefc707b9952387d6cfd6bbcc17e0f675cd76606`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40146acdd63bd2f5624c5fcbdc6de826ab50d48cdc733a4e5354841e8b8b8cdb`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ec36a87d612eb7cf93ec46b5abf941dafbb8f524a1239d876adcda6dc783bb94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb8859e1016a49ff62c4d18d089f2debd2a40752b784b1c713b82460426b8c6`

```dockerfile
```

-	Layers:
	-	`sha256:cdbf269ff6761424fc356fdff08e093a11743bc73c607ffae2a850f9f16c6071`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 3.7 MB (3730649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:189a47492305936d56ce668a76d2973b9d75f322511fbcd740b4a44f3b1e473f`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
