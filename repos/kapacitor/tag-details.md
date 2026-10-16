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
$ docker pull kapacitor@sha256:4778e20166282d0321d91a57b1a78991474586df065598d810d0540e3e2dca10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:4c845d107abe74a1212055d1fc379df884325a82ebde5b5ff0bd56aebd1ef7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186531575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf6a7d822fde6fa09f8682b982c9d02ccd38924e0f0685a08ed5deaae6fd3476`
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
# Fri, 16 Oct 2026 17:42:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:43:02 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:43:02 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:43:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:43:02 GMT
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
	-	`sha256:bb3eab0685815bdadb0bc713cf1e618344fadee72658635c7e25d3103c4af140`  
		Last Modified: Fri, 16 Oct 2026 17:43:25 GMT  
		Size: 55.1 MB (55142897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053792b3c72bb3abfecc2cad9594063cadab77b4769d7c4907d366380880459f`  
		Last Modified: Fri, 16 Oct 2026 17:43:25 GMT  
		Size: 94.6 MB (94570932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faac95783a03a3fcdbee588c0cba3f6678f51ea571da9549dc2a78068456145`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bf58f7ee8777c1aeaeb691d1b2fe736a10dec3980e1557209c0f7aa0a90e84`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:c5553032ed886dfdb27ed77f48a5267e673aa204f758c36863d4ff012c9e5fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4852ced3194dee68300f68892b23fefd6054852b19f44a38396460ed147ecf8a`

```dockerfile
```

-	Layers:
	-	`sha256:5b57b1e0f622a05f070a02b6bd91f121f7a09fe89310e1609ca79edc0d56fbc0`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 3.7 MB (3731175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d4b236108950143e0e3b2dd5dcd2a0e10553d9ca0930eec9877caec477ad202`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 15.0 KB (15019 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:d29c0b7323103002c6c65c1d2fa3b5c34fe0bc6bb10e683475978c75ff91abe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177668480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e346bc45b5bf6107c7f60849edf3a236208dd47b204c29ab5462eb986be1ee87`
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
# Fri, 16 Oct 2026 17:42:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:42:54 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:42:54 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:42:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:42:54 GMT
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
	-	`sha256:227e81e066fed36681d4bb6cbdc77ef9a3fe14314fb68ed0fe658bf1824345e5`  
		Last Modified: Fri, 16 Oct 2026 17:43:15 GMT  
		Size: 54.6 MB (54580927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028ae45cb5280a82925f445c311b6beb0d8d735ed6986ca5efd36c2cb696da5d`  
		Last Modified: Fri, 16 Oct 2026 17:43:16 GMT  
		Size: 88.4 MB (88382570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b9c4f21d49a7d9cc436b0fd3e2650ee764f6cff2b06f5a6cea87f2254d501f`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423e03b2b71f353c63bf91e1b6c66df40520cd7705a5c8f0b695888deb07427f`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:2e5953bcb22303ba3e43b2ed4a09043d899df2b3a75ccb81fba0f39fe183ca9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fda6c99556f0f10ced69f16fcad2ee8024f993fb82dcd579b75f735f5e8beb7`

```dockerfile
```

-	Layers:
	-	`sha256:ca3d8bfbc5c0f54219a803bb6d215d2c8b8346b1608e8635d3674780d9ccaec8`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 3.7 MB (3730649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7356caba0b28a58743218c9ef9c4766fa6b284c8c54c846166bf05700249e3c3`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 15.1 KB (15126 bytes)  
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
$ docker pull kapacitor@sha256:4778e20166282d0321d91a57b1a78991474586df065598d810d0540e3e2dca10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:1.8.8` - linux; amd64

```console
$ docker pull kapacitor@sha256:4c845d107abe74a1212055d1fc379df884325a82ebde5b5ff0bd56aebd1ef7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186531575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf6a7d822fde6fa09f8682b982c9d02ccd38924e0f0685a08ed5deaae6fd3476`
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
# Fri, 16 Oct 2026 17:42:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:43:02 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:43:02 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:43:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:43:02 GMT
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
	-	`sha256:bb3eab0685815bdadb0bc713cf1e618344fadee72658635c7e25d3103c4af140`  
		Last Modified: Fri, 16 Oct 2026 17:43:25 GMT  
		Size: 55.1 MB (55142897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053792b3c72bb3abfecc2cad9594063cadab77b4769d7c4907d366380880459f`  
		Last Modified: Fri, 16 Oct 2026 17:43:25 GMT  
		Size: 94.6 MB (94570932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faac95783a03a3fcdbee588c0cba3f6678f51ea571da9549dc2a78068456145`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bf58f7ee8777c1aeaeb691d1b2fe736a10dec3980e1557209c0f7aa0a90e84`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:c5553032ed886dfdb27ed77f48a5267e673aa204f758c36863d4ff012c9e5fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4852ced3194dee68300f68892b23fefd6054852b19f44a38396460ed147ecf8a`

```dockerfile
```

-	Layers:
	-	`sha256:5b57b1e0f622a05f070a02b6bd91f121f7a09fe89310e1609ca79edc0d56fbc0`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 3.7 MB (3731175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d4b236108950143e0e3b2dd5dcd2a0e10553d9ca0930eec9877caec477ad202`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 15.0 KB (15019 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:1.8.8` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:d29c0b7323103002c6c65c1d2fa3b5c34fe0bc6bb10e683475978c75ff91abe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177668480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e346bc45b5bf6107c7f60849edf3a236208dd47b204c29ab5462eb986be1ee87`
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
# Fri, 16 Oct 2026 17:42:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:42:54 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:42:54 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:42:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:42:54 GMT
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
	-	`sha256:227e81e066fed36681d4bb6cbdc77ef9a3fe14314fb68ed0fe658bf1824345e5`  
		Last Modified: Fri, 16 Oct 2026 17:43:15 GMT  
		Size: 54.6 MB (54580927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028ae45cb5280a82925f445c311b6beb0d8d735ed6986ca5efd36c2cb696da5d`  
		Last Modified: Fri, 16 Oct 2026 17:43:16 GMT  
		Size: 88.4 MB (88382570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b9c4f21d49a7d9cc436b0fd3e2650ee764f6cff2b06f5a6cea87f2254d501f`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423e03b2b71f353c63bf91e1b6c66df40520cd7705a5c8f0b695888deb07427f`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:1.8.8` - unknown; unknown

```console
$ docker pull kapacitor@sha256:2e5953bcb22303ba3e43b2ed4a09043d899df2b3a75ccb81fba0f39fe183ca9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fda6c99556f0f10ced69f16fcad2ee8024f993fb82dcd579b75f735f5e8beb7`

```dockerfile
```

-	Layers:
	-	`sha256:ca3d8bfbc5c0f54219a803bb6d215d2c8b8346b1608e8635d3674780d9ccaec8`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 3.7 MB (3730649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7356caba0b28a58743218c9ef9c4766fa6b284c8c54c846166bf05700249e3c3`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 15.1 KB (15126 bytes)  
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
$ docker pull kapacitor@sha256:4778e20166282d0321d91a57b1a78991474586df065598d810d0540e3e2dca10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:4c845d107abe74a1212055d1fc379df884325a82ebde5b5ff0bd56aebd1ef7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186531575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf6a7d822fde6fa09f8682b982c9d02ccd38924e0f0685a08ed5deaae6fd3476`
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
# Fri, 16 Oct 2026 17:42:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:43:02 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:43:02 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:43:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:43:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:43:02 GMT
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
	-	`sha256:bb3eab0685815bdadb0bc713cf1e618344fadee72658635c7e25d3103c4af140`  
		Last Modified: Fri, 16 Oct 2026 17:43:25 GMT  
		Size: 55.1 MB (55142897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053792b3c72bb3abfecc2cad9594063cadab77b4769d7c4907d366380880459f`  
		Last Modified: Fri, 16 Oct 2026 17:43:25 GMT  
		Size: 94.6 MB (94570932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faac95783a03a3fcdbee588c0cba3f6678f51ea571da9549dc2a78068456145`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bf58f7ee8777c1aeaeb691d1b2fe736a10dec3980e1557209c0f7aa0a90e84`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:c5553032ed886dfdb27ed77f48a5267e673aa204f758c36863d4ff012c9e5fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4852ced3194dee68300f68892b23fefd6054852b19f44a38396460ed147ecf8a`

```dockerfile
```

-	Layers:
	-	`sha256:5b57b1e0f622a05f070a02b6bd91f121f7a09fe89310e1609ca79edc0d56fbc0`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 3.7 MB (3731175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d4b236108950143e0e3b2dd5dcd2a0e10553d9ca0930eec9877caec477ad202`  
		Last Modified: Fri, 16 Oct 2026 17:43:22 GMT  
		Size: 15.0 KB (15019 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:d29c0b7323103002c6c65c1d2fa3b5c34fe0bc6bb10e683475978c75ff91abe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177668480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e346bc45b5bf6107c7f60849edf3a236208dd47b204c29ab5462eb986be1ee87`
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
# Fri, 16 Oct 2026 17:42:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
ENV KAPACITOR_VERSION=1.8.8
# Fri, 16 Oct 2026 17:42:54 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 16 Oct 2026 17:42:54 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Oct 2026 17:42:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:42:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:42:54 GMT
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
	-	`sha256:227e81e066fed36681d4bb6cbdc77ef9a3fe14314fb68ed0fe658bf1824345e5`  
		Last Modified: Fri, 16 Oct 2026 17:43:15 GMT  
		Size: 54.6 MB (54580927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028ae45cb5280a82925f445c311b6beb0d8d735ed6986ca5efd36c2cb696da5d`  
		Last Modified: Fri, 16 Oct 2026 17:43:16 GMT  
		Size: 88.4 MB (88382570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b9c4f21d49a7d9cc436b0fd3e2650ee764f6cff2b06f5a6cea87f2254d501f`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423e03b2b71f353c63bf91e1b6c66df40520cd7705a5c8f0b695888deb07427f`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:2e5953bcb22303ba3e43b2ed4a09043d899df2b3a75ccb81fba0f39fe183ca9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fda6c99556f0f10ced69f16fcad2ee8024f993fb82dcd579b75f735f5e8beb7`

```dockerfile
```

-	Layers:
	-	`sha256:ca3d8bfbc5c0f54219a803bb6d215d2c8b8346b1608e8635d3674780d9ccaec8`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 3.7 MB (3730649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7356caba0b28a58743218c9ef9c4766fa6b284c8c54c846166bf05700249e3c3`  
		Last Modified: Fri, 16 Oct 2026 17:43:13 GMT  
		Size: 15.1 KB (15126 bytes)  
		MIME: application/vnd.in-toto+json
