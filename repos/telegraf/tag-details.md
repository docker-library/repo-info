<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.38`](#telegraf138)
-	[`telegraf:1.38-alpine`](#telegraf138-alpine)
-	[`telegraf:1.38.4`](#telegraf1384)
-	[`telegraf:1.38.4-alpine`](#telegraf1384-alpine)
-	[`telegraf:1.39`](#telegraf139)
-	[`telegraf:1.39-alpine`](#telegraf139-alpine)
-	[`telegraf:1.39.3`](#telegraf1393)
-	[`telegraf:1.39.3-alpine`](#telegraf1393-alpine)
-	[`telegraf:1.40`](#telegraf140)
-	[`telegraf:1.40-alpine`](#telegraf140-alpine)
-	[`telegraf:1.40.0`](#telegraf1400)
-	[`telegraf:1.40.0-alpine`](#telegraf1400-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:fd1821c53b002bbacb8d2473441283c3bc2b9d7fbf8f450d55aff51ef5a9ccdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38` - linux; amd64

```console
$ docker pull telegraf@sha256:ed3885aadbbaba8cee316226569c12738bffff8711e9d6554d0f4a2976f6a74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175014902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385e4a236f0a71d4686b97d0edc98b0f8f1bf7b9f853f860675ce33423570ab2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:42 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:52:47 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 25 Aug 2026 01:52:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:52:47 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:52:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:52:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:52:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c17e80224b1f4c2d1d2ce38fb397aa9e54df691a22e1887291d1e1e2b33eeb`  
		Last Modified: Tue, 25 Aug 2026 01:53:06 GMT  
		Size: 18.9 MB (18944473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b0847331f9ab21f1945820bc8c063a17755696c2e5b7059b16b306985f0894`  
		Last Modified: Tue, 25 Aug 2026 01:53:05 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee3a77b329910ccabb99a5dce04bb710f404bbf3beb316e49df14366e56a9be`  
		Last Modified: Tue, 25 Aug 2026 01:53:08 GMT  
		Size: 83.5 MB (83511107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7455be650ac379dffdb17148c8d4f017a5709f3d89da3b60726e038b952d03e1`  
		Last Modified: Tue, 25 Aug 2026 01:53:05 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:03f6ff5fb97941342ba828d857caa4fb2ca9a232d76a47aa3ceee5ba082c8724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6693965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c037a39eafd2728bbfda913fbace9344ea49a933223067151b59bec73a2682ff`

```dockerfile
```

-	Layers:
	-	`sha256:acf0b6e63aad3c07fd06922a3b2250c6c1372355528b779e4814b137e39e11d8`  
		Last Modified: Tue, 25 Aug 2026 01:53:06 GMT  
		Size: 6.7 MB (6679538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:134437792e608766a38a97ee5d03346062b8394336891a14b36d7e8496e5aede`  
		Last Modified: Tue, 25 Aug 2026 01:53:05 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:f4cd7b2bbcccd6b81b7eae5e39bfa8a9309c67be4f7ddf615e78695b199c5c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161298134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85dc7eeeeaec34ea156b80750f57010c55dfea354442ce44fa97e3ea4c831022`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:46 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 02:50:51 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 25 Aug 2026 02:50:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 02:50:51 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 02:50:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 02:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 02:50:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920c0256c48a9685130607d460a8054f571998d9e9dd5dbf15ae83df1782b170`  
		Last Modified: Tue, 25 Aug 2026 02:51:09 GMT  
		Size: 17.7 MB (17699735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b6362dadddc7de4eed81d4364c84b25003db0daa8672751b0cd3dbe301d334`  
		Last Modified: Tue, 25 Aug 2026 02:51:08 GMT  
		Size: 5.1 KB (5053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8f320d83cb8c0b6ec112f7beddbf04c3c60574620b83b55295c1dfe3b3b67b`  
		Last Modified: Tue, 25 Aug 2026 02:51:11 GMT  
		Size: 77.4 MB (77427910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1331341fc4767baa0545eebbad532d809c8edce3e3d19c9c23e79c55472826d`  
		Last Modified: Tue, 25 Aug 2026 02:51:08 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:c23124af5b3219daef7188ef7c60bf406fa38a346d268270c2dd83651a4202e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b567a26ecfb7939edaef7838a3faa7439809887cc78919ef4202ac274a66bc`

```dockerfile
```

-	Layers:
	-	`sha256:fc762faa62590c721ce87f0206e3424d1e213496ae2dc08526b3bd51088f021a`  
		Last Modified: Tue, 25 Aug 2026 02:51:09 GMT  
		Size: 6.7 MB (6674135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a63631627d76ce22b0b7c0731b8dc377bfa47c371bd7667c529da81d1b6eead8`  
		Last Modified: Tue, 25 Aug 2026 02:51:08 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:815f926c0bf541b6d367e39d3cd6ff30004396cfa2ea5463fd0b111ff8ed4a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ffb8793889fd5942f270f62516903c62e4c43b73f286c536ea6051f84f8ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:56:33 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 25 Aug 2026 01:56:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:56:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:56:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:56:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:56:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b92c6d6be7019975af34c59a11f0d72eed019979a26a702239e5f535ba9269`  
		Last Modified: Tue, 25 Aug 2026 01:56:52 GMT  
		Size: 18.9 MB (18885926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f985d9411cafa3455512bcdac48c6d9820fb4dee04572120ecc6a8a3958395`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154baf2d761a06c752b266437172e83ee4f8232f5f799b63070c8179f712ccf6`  
		Last Modified: Tue, 25 Aug 2026 01:56:53 GMT  
		Size: 74.5 MB (74476790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de085128e0c73d70a36fccd8291b314e2e3bcb243bf2366438cf740637dd6a9`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:5559525b29030ce01465db12d9ab4899b8c44fec1bcd68473dfa044545d429fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acbec8b1dedaf0120355eea85505afca178ae06632fb1064617c7b451c2c3c3`

```dockerfile
```

-	Layers:
	-	`sha256:aba8d33a35e50044a202af547d08b4cc1d6f05f4350df73cfaa490555eda6793`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 6.7 MB (6680214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df06d6a22b35537eee39ed71ebc1c66ea257eb5ed5e5d5771538aa1294327213`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 14.5 KB (14536 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38-alpine`

```console
$ docker pull telegraf@sha256:1e20683bef538ce0141a7ea0f690a4d2645ce1c4639e91bc673f17cda1f2bd50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:3859028b8f76b028d4ba2f829588c69172d8bbbc5c1184d90301ac1ccd7937d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89713279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44248da793bfda307916ae8203a714efbd590b2816bb232b2686263980821b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 18:03:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 18:03:20 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 18:03:27 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 18:03:27 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 18:03:27 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:27 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a1af7f29f92cc0828b0901f0bb8e589fbc369d039c4edd0853ee162ca96e90`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00dfa7d50b62063c50ab4ad089865b43d2b7ca422ac75507eb8cdf1d55202d6`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 2.6 MB (2567555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af33d63a79c8f6cdf4c15d36ad33f81051cf20f9480e8287d07d30a4def75e5a`  
		Last Modified: Tue, 11 Aug 2026 18:03:45 GMT  
		Size: 83.3 MB (83300387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ec79bf6fe648a9176604366e23add9351659e04c06edcc0ed27e6ae35b4a5c`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:6eb3ca1171bd16ff171a816d02770eb05ec04a31a3362634ea139785eb27e4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5951f3d7087d8f80b60a5ec1593c130e263f435c47209b26318a6f3f37de2f8e`

```dockerfile
```

-	Layers:
	-	`sha256:b93d31118a048d4fa6db19ca5527cab27760bf22acc280ef8a0a9ad1fc5dbe06`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 1.1 MB (1142231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72edcf8a55c5d891f605cab27c9f50333c323e51de376ac16c003fac0f2f22c5`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:7c7d5341cd3ec4171a396e0445b5965b0b8982cd49d23ccddae9e7b73d20b39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81078156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17956b0d43272a0ef967d0b4943020ff9a2e09dc424d322f781d04768ce5fd26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 19:10:54 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 19:10:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 19:11:03 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 19:11:03 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 19:11:03 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:11:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:11:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 19:11:03 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f61c5812ff64c5f4c07c99043cc8124cce6293aec6a27901a37d1b985cff68`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c7a547d64d5e7d2341ace03381d48a09da5230664570deb9e7c42067fc9e35`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 2.6 MB (2616519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde7429ce1547e70683f72c153a922b9fb6ccf8e38627216ffef99e03cd6c3b`  
		Last Modified: Tue, 11 Aug 2026 19:11:18 GMT  
		Size: 74.3 MB (74278862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a495549c554b9804ec8d1d565ed473bf5bcbfd060b477723188970d3f608d2`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:f2ceb78e4a8d88dfd565e41bb5f76ade326a291c2d29f0327b46dc92b0ce775a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662333beaa789b589f8fe1f261fa2d869a82367c674c7ced0c5b1d6ad6d43566`

```dockerfile
```

-	Layers:
	-	`sha256:f57a0e0fcebc919950f31a4a18e6f03a053c83b7b1bad46c50b999b30b97c470`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 1.1 MB (1137208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0b2761f9716fff7e1144041dda127cb415640cb096fc21ab3a47eabb2c1c24`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 15.6 KB (15558 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4`

```console
$ docker pull telegraf@sha256:fd1821c53b002bbacb8d2473441283c3bc2b9d7fbf8f450d55aff51ef5a9ccdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4` - linux; amd64

```console
$ docker pull telegraf@sha256:ed3885aadbbaba8cee316226569c12738bffff8711e9d6554d0f4a2976f6a74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175014902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385e4a236f0a71d4686b97d0edc98b0f8f1bf7b9f853f860675ce33423570ab2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:42 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:52:47 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 25 Aug 2026 01:52:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:52:47 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:52:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:52:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:52:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c17e80224b1f4c2d1d2ce38fb397aa9e54df691a22e1887291d1e1e2b33eeb`  
		Last Modified: Tue, 25 Aug 2026 01:53:06 GMT  
		Size: 18.9 MB (18944473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b0847331f9ab21f1945820bc8c063a17755696c2e5b7059b16b306985f0894`  
		Last Modified: Tue, 25 Aug 2026 01:53:05 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee3a77b329910ccabb99a5dce04bb710f404bbf3beb316e49df14366e56a9be`  
		Last Modified: Tue, 25 Aug 2026 01:53:08 GMT  
		Size: 83.5 MB (83511107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7455be650ac379dffdb17148c8d4f017a5709f3d89da3b60726e038b952d03e1`  
		Last Modified: Tue, 25 Aug 2026 01:53:05 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:03f6ff5fb97941342ba828d857caa4fb2ca9a232d76a47aa3ceee5ba082c8724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6693965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c037a39eafd2728bbfda913fbace9344ea49a933223067151b59bec73a2682ff`

```dockerfile
```

-	Layers:
	-	`sha256:acf0b6e63aad3c07fd06922a3b2250c6c1372355528b779e4814b137e39e11d8`  
		Last Modified: Tue, 25 Aug 2026 01:53:06 GMT  
		Size: 6.7 MB (6679538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:134437792e608766a38a97ee5d03346062b8394336891a14b36d7e8496e5aede`  
		Last Modified: Tue, 25 Aug 2026 01:53:05 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:f4cd7b2bbcccd6b81b7eae5e39bfa8a9309c67be4f7ddf615e78695b199c5c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161298134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85dc7eeeeaec34ea156b80750f57010c55dfea354442ce44fa97e3ea4c831022`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:46 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 02:50:51 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 25 Aug 2026 02:50:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 02:50:51 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 02:50:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 02:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 02:50:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920c0256c48a9685130607d460a8054f571998d9e9dd5dbf15ae83df1782b170`  
		Last Modified: Tue, 25 Aug 2026 02:51:09 GMT  
		Size: 17.7 MB (17699735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b6362dadddc7de4eed81d4364c84b25003db0daa8672751b0cd3dbe301d334`  
		Last Modified: Tue, 25 Aug 2026 02:51:08 GMT  
		Size: 5.1 KB (5053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8f320d83cb8c0b6ec112f7beddbf04c3c60574620b83b55295c1dfe3b3b67b`  
		Last Modified: Tue, 25 Aug 2026 02:51:11 GMT  
		Size: 77.4 MB (77427910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1331341fc4767baa0545eebbad532d809c8edce3e3d19c9c23e79c55472826d`  
		Last Modified: Tue, 25 Aug 2026 02:51:08 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:c23124af5b3219daef7188ef7c60bf406fa38a346d268270c2dd83651a4202e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b567a26ecfb7939edaef7838a3faa7439809887cc78919ef4202ac274a66bc`

```dockerfile
```

-	Layers:
	-	`sha256:fc762faa62590c721ce87f0206e3424d1e213496ae2dc08526b3bd51088f021a`  
		Last Modified: Tue, 25 Aug 2026 02:51:09 GMT  
		Size: 6.7 MB (6674135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a63631627d76ce22b0b7c0731b8dc377bfa47c371bd7667c529da81d1b6eead8`  
		Last Modified: Tue, 25 Aug 2026 02:51:08 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:815f926c0bf541b6d367e39d3cd6ff30004396cfa2ea5463fd0b111ff8ed4a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165380322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ffb8793889fd5942f270f62516903c62e4c43b73f286c536ea6051f84f8ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:56:33 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 25 Aug 2026 01:56:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:56:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:56:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:56:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:56:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b92c6d6be7019975af34c59a11f0d72eed019979a26a702239e5f535ba9269`  
		Last Modified: Tue, 25 Aug 2026 01:56:52 GMT  
		Size: 18.9 MB (18885926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f985d9411cafa3455512bcdac48c6d9820fb4dee04572120ecc6a8a3958395`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154baf2d761a06c752b266437172e83ee4f8232f5f799b63070c8179f712ccf6`  
		Last Modified: Tue, 25 Aug 2026 01:56:53 GMT  
		Size: 74.5 MB (74476790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de085128e0c73d70a36fccd8291b314e2e3bcb243bf2366438cf740637dd6a9`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:5559525b29030ce01465db12d9ab4899b8c44fec1bcd68473dfa044545d429fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acbec8b1dedaf0120355eea85505afca178ae06632fb1064617c7b451c2c3c3`

```dockerfile
```

-	Layers:
	-	`sha256:aba8d33a35e50044a202af547d08b4cc1d6f05f4350df73cfaa490555eda6793`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 6.7 MB (6680214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df06d6a22b35537eee39ed71ebc1c66ea257eb5ed5e5d5771538aa1294327213`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 14.5 KB (14536 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4-alpine`

```console
$ docker pull telegraf@sha256:1e20683bef538ce0141a7ea0f690a4d2645ce1c4639e91bc673f17cda1f2bd50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:3859028b8f76b028d4ba2f829588c69172d8bbbc5c1184d90301ac1ccd7937d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89713279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44248da793bfda307916ae8203a714efbd590b2816bb232b2686263980821b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 18:03:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 18:03:20 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 18:03:27 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 18:03:27 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 18:03:27 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:27 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a1af7f29f92cc0828b0901f0bb8e589fbc369d039c4edd0853ee162ca96e90`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00dfa7d50b62063c50ab4ad089865b43d2b7ca422ac75507eb8cdf1d55202d6`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 2.6 MB (2567555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af33d63a79c8f6cdf4c15d36ad33f81051cf20f9480e8287d07d30a4def75e5a`  
		Last Modified: Tue, 11 Aug 2026 18:03:45 GMT  
		Size: 83.3 MB (83300387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ec79bf6fe648a9176604366e23add9351659e04c06edcc0ed27e6ae35b4a5c`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:6eb3ca1171bd16ff171a816d02770eb05ec04a31a3362634ea139785eb27e4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5951f3d7087d8f80b60a5ec1593c130e263f435c47209b26318a6f3f37de2f8e`

```dockerfile
```

-	Layers:
	-	`sha256:b93d31118a048d4fa6db19ca5527cab27760bf22acc280ef8a0a9ad1fc5dbe06`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 1.1 MB (1142231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72edcf8a55c5d891f605cab27c9f50333c323e51de376ac16c003fac0f2f22c5`  
		Last Modified: Tue, 11 Aug 2026 18:03:43 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:7c7d5341cd3ec4171a396e0445b5965b0b8982cd49d23ccddae9e7b73d20b39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81078156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17956b0d43272a0ef967d0b4943020ff9a2e09dc424d322f781d04768ce5fd26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 19:10:54 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 19:10:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 19:11:03 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 19:11:03 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 19:11:03 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:11:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:11:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 19:11:03 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f61c5812ff64c5f4c07c99043cc8124cce6293aec6a27901a37d1b985cff68`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c7a547d64d5e7d2341ace03381d48a09da5230664570deb9e7c42067fc9e35`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 2.6 MB (2616519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde7429ce1547e70683f72c153a922b9fb6ccf8e38627216ffef99e03cd6c3b`  
		Last Modified: Tue, 11 Aug 2026 19:11:18 GMT  
		Size: 74.3 MB (74278862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a495549c554b9804ec8d1d565ed473bf5bcbfd060b477723188970d3f608d2`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:f2ceb78e4a8d88dfd565e41bb5f76ade326a291c2d29f0327b46dc92b0ce775a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662333beaa789b589f8fe1f261fa2d869a82367c674c7ced0c5b1d6ad6d43566`

```dockerfile
```

-	Layers:
	-	`sha256:f57a0e0fcebc919950f31a4a18e6f03a053c83b7b1bad46c50b999b30b97c470`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 1.1 MB (1137208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0b2761f9716fff7e1144041dda127cb415640cb096fc21ab3a47eabb2c1c24`  
		Last Modified: Tue, 11 Aug 2026 19:11:16 GMT  
		Size: 15.6 KB (15558 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39`

```console
$ docker pull telegraf@sha256:ac66e6482c0644765c12904ce2f42ce3f3702f72e905b1894120b51b12ae30c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39` - linux; amd64

```console
$ docker pull telegraf@sha256:aed9af67fd4231ed8dec3b9b4e8dea1d9778947cb940f8c83a7e2ffdc36e12be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177759277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6e40e6e868395950007402cf721c6d50855f2bc889e049f8c221585298f74f`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:52:56 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 25 Aug 2026 01:52:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:52:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:52:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:52:56 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 25 Aug 2026 01:52:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0808c88d4bacb3f22f17d8dd20518330f73cea4796716c77ab28a75ec9b4683d`  
		Last Modified: Tue, 25 Aug 2026 01:53:18 GMT  
		Size: 19.3 MB (19284685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f1c0ee80b8da0686301c34c00aa7ee858197c4d2e87f06ca5a2c716608405f`  
		Last Modified: Tue, 25 Aug 2026 01:53:17 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed7c56148541b325081f79ab4888a0f122953a26c6e4c6ab93cb108b9dd3048`  
		Last Modified: Tue, 25 Aug 2026 01:53:19 GMT  
		Size: 85.9 MB (85915268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1526cbaaaeab125c261c2b8a304e303570e2bec992cd0df9eb736b127bf1cf0`  
		Last Modified: Tue, 25 Aug 2026 01:53:17 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:6da8c1148458a10c9bc0469c9ff825e18cb8d29a5b4256efa72d726150471551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216fced8d479eb7f56d92b39bf2891e4c5be724287eeae7a4b0b830c3d0b2fef`

```dockerfile
```

-	Layers:
	-	`sha256:c51ffc553f29020728d1ff49975d26675e86e2267eb2370fb4fa39a18c9a2395`  
		Last Modified: Tue, 25 Aug 2026 01:53:17 GMT  
		Size: 6.7 MB (6689723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ea7e965b839747f3e1949eec97471fc103ff4bf38c3d48c0d0c3b737a99756d`  
		Last Modified: Tue, 25 Aug 2026 01:53:17 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:11e7bdb41ab57a3001e57f543538761849668d13025166e0ddaa1f5e23d8f533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163983361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3d2ca3cd56b7bbb4592b07dddcebe08d459c9b9f777ebe054ab5de290d5c6f`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:51:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:51:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 02:51:18 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 25 Aug 2026 02:51:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 02:51:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 02:51:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 02:51:18 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 25 Aug 2026 02:51:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6694e981794522afa2956cf187e630591cf6ffb9767a9b9cb10746e678f47b`  
		Last Modified: Tue, 25 Aug 2026 02:51:36 GMT  
		Size: 18.0 MB (17950023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc960ff76d65c53e4032d3fc0caf72c963be6cda9ad874e84b8f3446def4a4c`  
		Last Modified: Tue, 25 Aug 2026 02:51:35 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce3fb248a2309430b4ae499f34e4143c15a8f03e525baf505a62ffacc26ad87`  
		Last Modified: Tue, 25 Aug 2026 02:51:37 GMT  
		Size: 79.9 MB (79862833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871cfe0cf4db01cf4ba00a6085df6028caf295170a362f5b091dfeb8714327ef`  
		Last Modified: Tue, 25 Aug 2026 02:51:35 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:c51302dcc830b34e7735769ba7bb26c3467430e6525ca9cf10e29b0a6b42495d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70a4cac28b8cbfbdf4e8eff854adf61fa30b4a2aa99374266d1717b734a114a`

```dockerfile
```

-	Layers:
	-	`sha256:4543c3d77a813fb1f1066a282813ebf6dafe1f2afa358e1dde81d3cea122b642`  
		Last Modified: Tue, 25 Aug 2026 02:51:35 GMT  
		Size: 6.7 MB (6685133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f94ea5cfb350885cc7232dedffc0ba031f47344b57f6aaa8f6901a16e35b46`  
		Last Modified: Tue, 25 Aug 2026 02:51:35 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:20ca83a7544837633318612dbd606078ecf532f896ab77115be632aac13f3a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167966141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe551ddcdd6a17b8e6f63111632de3392a53c6fdc41c6a5f42682b6ddc5b6271`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:59 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:57:03 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 25 Aug 2026 01:57:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:57:03 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:57:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:57:03 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 25 Aug 2026 01:57:03 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ef24bc33e7689e5ca16959a351039c44200903f85187a6b65dc2484e6604c4`  
		Last Modified: Tue, 25 Aug 2026 01:57:21 GMT  
		Size: 19.2 MB (19194838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7844eb44c2df8585d860f85cc6328033bd312f1a3bed32fb9f7ab2c6441c16`  
		Last Modified: Tue, 25 Aug 2026 01:57:20 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0250121f0b3485291db9e899dd01b3b2a9ba5edf146ac2a2f9484e72d95808`  
		Last Modified: Tue, 25 Aug 2026 01:57:23 GMT  
		Size: 76.8 MB (76753695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eef8e115e2ae9b89ac4785ec1e5cf6911cd65fb19a1faeef8f2e8ef213af2ce`  
		Last Modified: Tue, 25 Aug 2026 01:57:20 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:e8dad311d3b7e7c0916fe0adf226c17f2566cc1d7c0e9ca514b1ffc4bd70d4dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6705303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471b59e9ca576ad3c70921ecd2be26e80a9a06dca8f1f52c6f4287d89f7ad6fb`

```dockerfile
```

-	Layers:
	-	`sha256:b5c6752f88aab7a0c2ca1a04367edd35a81497b018e4463eb1403a9a3730401e`  
		Last Modified: Tue, 25 Aug 2026 01:57:21 GMT  
		Size: 6.7 MB (6690411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e51fedc5fcdab39c44ba5194b223866aca4202ac56b4313974b267e776836f87`  
		Last Modified: Tue, 25 Aug 2026 01:57:20 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39-alpine`

```console
$ docker pull telegraf@sha256:45b80cfd354299c5c1c38e472922e0e2f0a8e8ac2b614531a1f634ab06e84297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:78506ed4b584ed4406bc97e653a6fa8d5445efb6330809e605bdbe7497f8bfa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92115664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fcd569cc185013d60bf8b43fb6552c34acd7354b8e6ccdf548ea4caf1089ab`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 18:03:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 18:03:26 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 18:03:33 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:03:33 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 18:03:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:33 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f614114cbb843cfaebeb2728cdc83f81baf0cb2c18779ad1b35a44efbeadc2`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b688873573793a34c5557f36b95060447150aa726b3969909e00c13739befb9a`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 2.6 MB (2574523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cbf99f34ddd38998761c6d99074dd5d344032d19dc9f4701c8554a05f315c1a`  
		Last Modified: Tue, 11 Aug 2026 18:03:52 GMT  
		Size: 85.7 MB (85695810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7603cffac966dfce2c01789fc11a8bbca15984a77cb8d5325f303581409e1a`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 633.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:b7a30722e327847fe1105240edfa6cef4abc4469cf693eb1adc9084a85eeca63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1163845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2cc55e9b05990e7536901679bc42d0f40b70d929e289583bcfa470d27df5cb`

```dockerfile
```

-	Layers:
	-	`sha256:21db8e9900c7a9590fb20ff5ca94380e6031ff2f1419152c735e2e64dc351455`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 1.1 MB (1148057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecdcd867d79c4388541a9976af66e22ead35ae511979b46c08de42ab262ab34c`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:b8dfc6d4b93df08bd727afb506483826de5d0467c9776b7dc2da55a50b9541d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83356279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f8507c1bdaf2da99559e25dbd808b71b2dca37a096da535ecd411ca0e6c7a0`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 19:11:10 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 19:11:11 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 19:11:18 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 19:11:18 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 19:11:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:11:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:11:18 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 19:11:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67406391419efa07d52d1a70f06c64fba43589a1ac91130dd9bf85bd545bd7c8`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ca11af3be198957612942c33a38f1be821b9d10ba802c560ee979a98cedb4`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 2.6 MB (2624843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db90b8dbd616e47b5ba2d5f06c456f22a5acb9dbb119a66ff3848e6fa157db9b`  
		Last Modified: Tue, 11 Aug 2026 19:11:34 GMT  
		Size: 76.5 MB (76548661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e855d8a122f3bfd5dfac1f24d9e0e7c67dad98bbf9bbcf425dca04000a5ff280`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:48c5034b748cad3634445c27bf9d04d7ef509b0580e8c1bb04dde0e5bd23e719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1158955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad483fad866f51aaaf3507b9eb2e8357997cb3a391d4fa0d71b057682415c64`

```dockerfile
```

-	Layers:
	-	`sha256:5614390c38f1a7bd9b9aa0ea84a1a7935bd91685420681734a4c4133be7f029e`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 1.1 MB (1143046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18a6fcb9bda5fb5fee72db0d176cd2863c2246ffdc23ef2325c977deec6aa879`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3`

```console
$ docker pull telegraf@sha256:ac66e6482c0644765c12904ce2f42ce3f3702f72e905b1894120b51b12ae30c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.3` - linux; amd64

```console
$ docker pull telegraf@sha256:aed9af67fd4231ed8dec3b9b4e8dea1d9778947cb940f8c83a7e2ffdc36e12be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177759277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6e40e6e868395950007402cf721c6d50855f2bc889e049f8c221585298f74f`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:52:56 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 25 Aug 2026 01:52:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:52:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:52:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:52:56 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 25 Aug 2026 01:52:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0808c88d4bacb3f22f17d8dd20518330f73cea4796716c77ab28a75ec9b4683d`  
		Last Modified: Tue, 25 Aug 2026 01:53:18 GMT  
		Size: 19.3 MB (19284685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f1c0ee80b8da0686301c34c00aa7ee858197c4d2e87f06ca5a2c716608405f`  
		Last Modified: Tue, 25 Aug 2026 01:53:17 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed7c56148541b325081f79ab4888a0f122953a26c6e4c6ab93cb108b9dd3048`  
		Last Modified: Tue, 25 Aug 2026 01:53:19 GMT  
		Size: 85.9 MB (85915268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1526cbaaaeab125c261c2b8a304e303570e2bec992cd0df9eb736b127bf1cf0`  
		Last Modified: Tue, 25 Aug 2026 01:53:17 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:6da8c1148458a10c9bc0469c9ff825e18cb8d29a5b4256efa72d726150471551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216fced8d479eb7f56d92b39bf2891e4c5be724287eeae7a4b0b830c3d0b2fef`

```dockerfile
```

-	Layers:
	-	`sha256:c51ffc553f29020728d1ff49975d26675e86e2267eb2370fb4fa39a18c9a2395`  
		Last Modified: Tue, 25 Aug 2026 01:53:17 GMT  
		Size: 6.7 MB (6689723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ea7e965b839747f3e1949eec97471fc103ff4bf38c3d48c0d0c3b737a99756d`  
		Last Modified: Tue, 25 Aug 2026 01:53:17 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:11e7bdb41ab57a3001e57f543538761849668d13025166e0ddaa1f5e23d8f533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163983361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3d2ca3cd56b7bbb4592b07dddcebe08d459c9b9f777ebe054ab5de290d5c6f`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:51:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:51:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 02:51:18 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 25 Aug 2026 02:51:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 02:51:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 02:51:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 02:51:18 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 25 Aug 2026 02:51:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6694e981794522afa2956cf187e630591cf6ffb9767a9b9cb10746e678f47b`  
		Last Modified: Tue, 25 Aug 2026 02:51:36 GMT  
		Size: 18.0 MB (17950023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc960ff76d65c53e4032d3fc0caf72c963be6cda9ad874e84b8f3446def4a4c`  
		Last Modified: Tue, 25 Aug 2026 02:51:35 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce3fb248a2309430b4ae499f34e4143c15a8f03e525baf505a62ffacc26ad87`  
		Last Modified: Tue, 25 Aug 2026 02:51:37 GMT  
		Size: 79.9 MB (79862833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871cfe0cf4db01cf4ba00a6085df6028caf295170a362f5b091dfeb8714327ef`  
		Last Modified: Tue, 25 Aug 2026 02:51:35 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:c51302dcc830b34e7735769ba7bb26c3467430e6525ca9cf10e29b0a6b42495d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70a4cac28b8cbfbdf4e8eff854adf61fa30b4a2aa99374266d1717b734a114a`

```dockerfile
```

-	Layers:
	-	`sha256:4543c3d77a813fb1f1066a282813ebf6dafe1f2afa358e1dde81d3cea122b642`  
		Last Modified: Tue, 25 Aug 2026 02:51:35 GMT  
		Size: 6.7 MB (6685133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f94ea5cfb350885cc7232dedffc0ba031f47344b57f6aaa8f6901a16e35b46`  
		Last Modified: Tue, 25 Aug 2026 02:51:35 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:20ca83a7544837633318612dbd606078ecf532f896ab77115be632aac13f3a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167966141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe551ddcdd6a17b8e6f63111632de3392a53c6fdc41c6a5f42682b6ddc5b6271`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:59 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:57:03 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 25 Aug 2026 01:57:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:57:03 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:57:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:57:03 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 25 Aug 2026 01:57:03 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ef24bc33e7689e5ca16959a351039c44200903f85187a6b65dc2484e6604c4`  
		Last Modified: Tue, 25 Aug 2026 01:57:21 GMT  
		Size: 19.2 MB (19194838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7844eb44c2df8585d860f85cc6328033bd312f1a3bed32fb9f7ab2c6441c16`  
		Last Modified: Tue, 25 Aug 2026 01:57:20 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0250121f0b3485291db9e899dd01b3b2a9ba5edf146ac2a2f9484e72d95808`  
		Last Modified: Tue, 25 Aug 2026 01:57:23 GMT  
		Size: 76.8 MB (76753695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eef8e115e2ae9b89ac4785ec1e5cf6911cd65fb19a1faeef8f2e8ef213af2ce`  
		Last Modified: Tue, 25 Aug 2026 01:57:20 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:e8dad311d3b7e7c0916fe0adf226c17f2566cc1d7c0e9ca514b1ffc4bd70d4dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6705303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471b59e9ca576ad3c70921ecd2be26e80a9a06dca8f1f52c6f4287d89f7ad6fb`

```dockerfile
```

-	Layers:
	-	`sha256:b5c6752f88aab7a0c2ca1a04367edd35a81497b018e4463eb1403a9a3730401e`  
		Last Modified: Tue, 25 Aug 2026 01:57:21 GMT  
		Size: 6.7 MB (6690411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e51fedc5fcdab39c44ba5194b223866aca4202ac56b4313974b267e776836f87`  
		Last Modified: Tue, 25 Aug 2026 01:57:20 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3-alpine`

```console
$ docker pull telegraf@sha256:45b80cfd354299c5c1c38e472922e0e2f0a8e8ac2b614531a1f634ab06e84297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:78506ed4b584ed4406bc97e653a6fa8d5445efb6330809e605bdbe7497f8bfa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92115664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fcd569cc185013d60bf8b43fb6552c34acd7354b8e6ccdf548ea4caf1089ab`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 18:03:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 18:03:26 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 18:03:33 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:03:33 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 18:03:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:33 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f614114cbb843cfaebeb2728cdc83f81baf0cb2c18779ad1b35a44efbeadc2`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b688873573793a34c5557f36b95060447150aa726b3969909e00c13739befb9a`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 2.6 MB (2574523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cbf99f34ddd38998761c6d99074dd5d344032d19dc9f4701c8554a05f315c1a`  
		Last Modified: Tue, 11 Aug 2026 18:03:52 GMT  
		Size: 85.7 MB (85695810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7603cffac966dfce2c01789fc11a8bbca15984a77cb8d5325f303581409e1a`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 633.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:b7a30722e327847fe1105240edfa6cef4abc4469cf693eb1adc9084a85eeca63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1163845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2cc55e9b05990e7536901679bc42d0f40b70d929e289583bcfa470d27df5cb`

```dockerfile
```

-	Layers:
	-	`sha256:21db8e9900c7a9590fb20ff5ca94380e6031ff2f1419152c735e2e64dc351455`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 1.1 MB (1148057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecdcd867d79c4388541a9976af66e22ead35ae511979b46c08de42ab262ab34c`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:b8dfc6d4b93df08bd727afb506483826de5d0467c9776b7dc2da55a50b9541d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83356279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f8507c1bdaf2da99559e25dbd808b71b2dca37a096da535ecd411ca0e6c7a0`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 19:11:10 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 19:11:11 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 19:11:18 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 19:11:18 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 19:11:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:11:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:11:18 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 19:11:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67406391419efa07d52d1a70f06c64fba43589a1ac91130dd9bf85bd545bd7c8`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ca11af3be198957612942c33a38f1be821b9d10ba802c560ee979a98cedb4`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 2.6 MB (2624843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db90b8dbd616e47b5ba2d5f06c456f22a5acb9dbb119a66ff3848e6fa157db9b`  
		Last Modified: Tue, 11 Aug 2026 19:11:34 GMT  
		Size: 76.5 MB (76548661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e855d8a122f3bfd5dfac1f24d9e0e7c67dad98bbf9bbcf425dca04000a5ff280`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:48c5034b748cad3634445c27bf9d04d7ef509b0580e8c1bb04dde0e5bd23e719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1158955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad483fad866f51aaaf3507b9eb2e8357997cb3a391d4fa0d71b057682415c64`

```dockerfile
```

-	Layers:
	-	`sha256:5614390c38f1a7bd9b9aa0ea84a1a7935bd91685420681734a4c4133be7f029e`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 1.1 MB (1143046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18a6fcb9bda5fb5fee72db0d176cd2863c2246ffdc23ef2325c977deec6aa879`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40`

```console
$ docker pull telegraf@sha256:c25bff1bb4bf09a40cfc727811265f5446d23a3e6d5102b38874b0559d6a0620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40` - linux; amd64

```console
$ docker pull telegraf@sha256:3d850adfc9ea336ff0ef73f09458934946a579b2054768cc6ba6a071d7245aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.2 MB (180193597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8bb97af90c3e905e7287216f956f357b2c23e9f1348a90065b4ef762bbbd26`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:48:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:48:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:48:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db28f0af06f2e57c4b43cbfc464fe7f36145565107565210e4901db13b7a70ad`  
		Last Modified: Tue, 08 Sep 2026 19:48:54 GMT  
		Size: 19.3 MB (19284553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0459004c50060ccc084bd540251349921d72a8182dab57561dac38f1ff09ce9a`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e9e00e7bdae15015a8689cb1338f0a3098395408331a136690f814faba30a0`  
		Last Modified: Tue, 08 Sep 2026 19:48:56 GMT  
		Size: 88.3 MB (88349739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f9f006d6ca123d8d26d8c91d92cdc6e252118c291ae7d3177bfd6103f907b6`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:3e29631733905142849b0cf6aa4dd3b2afa0e2311eb5d28ba1aebca238373366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5783f33ddab65a90fee5494e609a2c784c4a94ee9ce0f90fa774a124d0b27ba`

```dockerfile
```

-	Layers:
	-	`sha256:6025f202604d1df00d8611926307522c15bd20eb3d7671a4543c02bb59f9f15f`  
		Last Modified: Tue, 08 Sep 2026 19:48:54 GMT  
		Size: 6.7 MB (6692108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8787bb997f72a8020b9aca3919b22ee6f64721ca5d658b77fb3f784eefa55d6`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:3db9e0e65b6a43d471276b737db49a53f59cd0f5450e157c20acd63f2a44c5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166219814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e54c6a3b8ed9ccf58df6d37182ab832674832139f59c7b9ca292efe056ce2e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:42 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:48:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:48:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:48:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8ea4528c5d147040f8502a8b3991265d2cf076d4f69bbcbeaa187f662d4616`  
		Last Modified: Tue, 08 Sep 2026 19:49:06 GMT  
		Size: 17.9 MB (17949965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bf51456cff987fea2b94a840149baafed74f6b7ae7d48b27cb68f996d225ea`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434acb1cd470610d2f95046546f0f31a769aca7d8dc9d0b262a1f70a294c1bf3`  
		Last Modified: Tue, 08 Sep 2026 19:49:08 GMT  
		Size: 82.1 MB (82099344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245e3c272c29bffb5067b1009b3ce0c04bbe06fc051aea90982129cae6bb12e9`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:c76111bd00e3589d560f0a8f214dabd7d24245f39dd4db5e503eaeec3a883f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f886816dfcc8b69684d4a61b09b2870292c6c9826840313d03d73e64ce960109`

```dockerfile
```

-	Layers:
	-	`sha256:f3e31148dfeb75a1d41bae7c89e7be8043f81b7cefc9263434e790d0bea4acf6`  
		Last Modified: Tue, 08 Sep 2026 19:49:06 GMT  
		Size: 6.7 MB (6687518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ab573b468a8d92cde78c211c6051aade7b2c42286c15aa4e5fb732bb8d79aea`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4b0f23658e3d5cbe5f933abaa6c1838faa7e239eca2bc7545bf9fc842e58ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170061881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a4f97ff24686f5a3102bb7f3db1575b4a5d983b969ea11d6854f6ab5e68856`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:49:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:49:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256cb95cbf1a1409e447c0c57ff5ba6985523483eef954d65d9471d8b4806523`  
		Last Modified: Tue, 08 Sep 2026 19:49:52 GMT  
		Size: 19.2 MB (19194795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67044f4004b74b727799aaae8361933b988568ef7b5a405a451fbbdac28ca274`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb2158af6587a3cb17846da1027c74df3c03b42ffdaac5c6a460c5d33aab78d`  
		Last Modified: Tue, 08 Sep 2026 19:49:53 GMT  
		Size: 78.8 MB (78849480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577d12b0b77663e594391b46245444f98ef3aa03e82b4d1f3623bd2c377fbb23`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:09226b5147aff26778129e6b6f1afca28783a3b0b8253b3f3f090ea20fdb9088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6707688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef7eb173dfac390d83ab91e025d8d91249581e1d26344215287861ecc42c6f3`

```dockerfile
```

-	Layers:
	-	`sha256:0ed77a1aee16e7e4919af8e5fef2a47c2d2f1dcdc58303b451ef0f25c35f752e`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 6.7 MB (6692796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1141a01a57e44b316505a2cb4ccdcf2a78023a8767baa801790e01d152bbbb87`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:e2f55b0afaa32987b5610606437825c998066b3ce01a2eaa98c16beecfeb240d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:207cc911782fc63897c8824ccc3965a1c10e1b890bdb600c31e484263d7524de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94553766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bf956a7c938bce1ddf2ae68f09e5789c36ac99cfb474326cfd72a117e7e914`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:49:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 08 Sep 2026 19:49:04 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:10 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2427c51cfa5a2dbc9c43278466bd5314422af3c6ebab02fa8103d6a81bd2113f`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4222f1927de9ec73dbad2ff758246f1797a5b466665088ab9a665d0df1b17e7`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 2.6 MB (2574512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616b08382845d588e47305cb48697e2f99ad6269d38feb6aaed5f2b3b70e5641`  
		Last Modified: Tue, 08 Sep 2026 19:49:29 GMT  
		Size: 88.1 MB (88133918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d4c2fb29607246a8a1dd5b2139a41e59d4dee23ad8df75300fb5cceb002046`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:7e295a44a403ae0ee77200729d2d265d391562ed8d1ca647a3523b019d72a8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1166230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:164bfd094f677913d488d2f595d9e71e4e7c90858369d9335c6dd368dfaa5375`

```dockerfile
```

-	Layers:
	-	`sha256:6747faed5f3ceedff7a7918cc007cf7fdd9a00e27bfac29a1237492d7f9f91a0`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 1.2 MB (1150442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dceff34aa3e6973ce59fc7bdc8102d8b3077461663b62272acb143f775991bfe`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:180cebe468eb2f8b939bc640d6c628ef60eae9d8f7694830165eb43ec9377939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85447864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ffa58647563098fc1b127f5b122649fc636ea4d71499f8f1e16020e794e98f`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:49:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 08 Sep 2026 19:49:25 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:31 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5798fd09d238c015a79c7429fab645cb073490e2e48fbea1b08504bdfee0ebca`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d113e03144b64678d3a1dc01ca5a9e71358e145ecf376c1f29cc31858c6d7`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 2.6 MB (2624846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d83ca7f2203e71efd5b71ae34cf0d60fdd1ca0f4e3555212fa2b1576223eef`  
		Last Modified: Tue, 08 Sep 2026 19:49:47 GMT  
		Size: 78.6 MB (78640245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1391a496f1c8ec426cedf28d0361acae3e1136580d2426e9b75106d32a4798`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:d4929a24b71c0cec28f33a14ba6c76f911cdf5cd9ceb6d0c9803568ea48097e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1161341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ee79193b417d3256d838e63a674d47e7b25f6b52872552ccbcf62370d1a8af`

```dockerfile
```

-	Layers:
	-	`sha256:e2393cb269392aa38bc41b23671994768b04435d9bb62e3d5a190b95dedad40c`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 1.1 MB (1145431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc6151291670e94cddd66ce4278596a0962fe9689021f2bfb91e632444e4f37d`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.0`

```console
$ docker pull telegraf@sha256:c25bff1bb4bf09a40cfc727811265f5446d23a3e6d5102b38874b0559d6a0620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.0` - linux; amd64

```console
$ docker pull telegraf@sha256:3d850adfc9ea336ff0ef73f09458934946a579b2054768cc6ba6a071d7245aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.2 MB (180193597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8bb97af90c3e905e7287216f956f357b2c23e9f1348a90065b4ef762bbbd26`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:48:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:48:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:48:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db28f0af06f2e57c4b43cbfc464fe7f36145565107565210e4901db13b7a70ad`  
		Last Modified: Tue, 08 Sep 2026 19:48:54 GMT  
		Size: 19.3 MB (19284553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0459004c50060ccc084bd540251349921d72a8182dab57561dac38f1ff09ce9a`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e9e00e7bdae15015a8689cb1338f0a3098395408331a136690f814faba30a0`  
		Last Modified: Tue, 08 Sep 2026 19:48:56 GMT  
		Size: 88.3 MB (88349739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f9f006d6ca123d8d26d8c91d92cdc6e252118c291ae7d3177bfd6103f907b6`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0` - unknown; unknown

```console
$ docker pull telegraf@sha256:3e29631733905142849b0cf6aa4dd3b2afa0e2311eb5d28ba1aebca238373366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5783f33ddab65a90fee5494e609a2c784c4a94ee9ce0f90fa774a124d0b27ba`

```dockerfile
```

-	Layers:
	-	`sha256:6025f202604d1df00d8611926307522c15bd20eb3d7671a4543c02bb59f9f15f`  
		Last Modified: Tue, 08 Sep 2026 19:48:54 GMT  
		Size: 6.7 MB (6692108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8787bb997f72a8020b9aca3919b22ee6f64721ca5d658b77fb3f784eefa55d6`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.0` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:3db9e0e65b6a43d471276b737db49a53f59cd0f5450e157c20acd63f2a44c5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166219814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e54c6a3b8ed9ccf58df6d37182ab832674832139f59c7b9ca292efe056ce2e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:42 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:48:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:48:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:48:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8ea4528c5d147040f8502a8b3991265d2cf076d4f69bbcbeaa187f662d4616`  
		Last Modified: Tue, 08 Sep 2026 19:49:06 GMT  
		Size: 17.9 MB (17949965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bf51456cff987fea2b94a840149baafed74f6b7ae7d48b27cb68f996d225ea`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434acb1cd470610d2f95046546f0f31a769aca7d8dc9d0b262a1f70a294c1bf3`  
		Last Modified: Tue, 08 Sep 2026 19:49:08 GMT  
		Size: 82.1 MB (82099344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245e3c272c29bffb5067b1009b3ce0c04bbe06fc051aea90982129cae6bb12e9`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0` - unknown; unknown

```console
$ docker pull telegraf@sha256:c76111bd00e3589d560f0a8f214dabd7d24245f39dd4db5e503eaeec3a883f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f886816dfcc8b69684d4a61b09b2870292c6c9826840313d03d73e64ce960109`

```dockerfile
```

-	Layers:
	-	`sha256:f3e31148dfeb75a1d41bae7c89e7be8043f81b7cefc9263434e790d0bea4acf6`  
		Last Modified: Tue, 08 Sep 2026 19:49:06 GMT  
		Size: 6.7 MB (6687518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ab573b468a8d92cde78c211c6051aade7b2c42286c15aa4e5fb732bb8d79aea`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.0` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4b0f23658e3d5cbe5f933abaa6c1838faa7e239eca2bc7545bf9fc842e58ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170061881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a4f97ff24686f5a3102bb7f3db1575b4a5d983b969ea11d6854f6ab5e68856`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:49:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:49:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256cb95cbf1a1409e447c0c57ff5ba6985523483eef954d65d9471d8b4806523`  
		Last Modified: Tue, 08 Sep 2026 19:49:52 GMT  
		Size: 19.2 MB (19194795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67044f4004b74b727799aaae8361933b988568ef7b5a405a451fbbdac28ca274`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb2158af6587a3cb17846da1027c74df3c03b42ffdaac5c6a460c5d33aab78d`  
		Last Modified: Tue, 08 Sep 2026 19:49:53 GMT  
		Size: 78.8 MB (78849480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577d12b0b77663e594391b46245444f98ef3aa03e82b4d1f3623bd2c377fbb23`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0` - unknown; unknown

```console
$ docker pull telegraf@sha256:09226b5147aff26778129e6b6f1afca28783a3b0b8253b3f3f090ea20fdb9088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6707688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef7eb173dfac390d83ab91e025d8d91249581e1d26344215287861ecc42c6f3`

```dockerfile
```

-	Layers:
	-	`sha256:0ed77a1aee16e7e4919af8e5fef2a47c2d2f1dcdc58303b451ef0f25c35f752e`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 6.7 MB (6692796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1141a01a57e44b316505a2cb4ccdcf2a78023a8767baa801790e01d152bbbb87`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.0-alpine`

```console
$ docker pull telegraf@sha256:e2f55b0afaa32987b5610606437825c998066b3ce01a2eaa98c16beecfeb240d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.0-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:207cc911782fc63897c8824ccc3965a1c10e1b890bdb600c31e484263d7524de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94553766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bf956a7c938bce1ddf2ae68f09e5789c36ac99cfb474326cfd72a117e7e914`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:49:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 08 Sep 2026 19:49:04 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:10 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2427c51cfa5a2dbc9c43278466bd5314422af3c6ebab02fa8103d6a81bd2113f`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4222f1927de9ec73dbad2ff758246f1797a5b466665088ab9a665d0df1b17e7`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 2.6 MB (2574512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616b08382845d588e47305cb48697e2f99ad6269d38feb6aaed5f2b3b70e5641`  
		Last Modified: Tue, 08 Sep 2026 19:49:29 GMT  
		Size: 88.1 MB (88133918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d4c2fb29607246a8a1dd5b2139a41e59d4dee23ad8df75300fb5cceb002046`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:7e295a44a403ae0ee77200729d2d265d391562ed8d1ca647a3523b019d72a8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1166230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:164bfd094f677913d488d2f595d9e71e4e7c90858369d9335c6dd368dfaa5375`

```dockerfile
```

-	Layers:
	-	`sha256:6747faed5f3ceedff7a7918cc007cf7fdd9a00e27bfac29a1237492d7f9f91a0`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 1.2 MB (1150442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dceff34aa3e6973ce59fc7bdc8102d8b3077461663b62272acb143f775991bfe`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.0-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:180cebe468eb2f8b939bc640d6c628ef60eae9d8f7694830165eb43ec9377939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85447864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ffa58647563098fc1b127f5b122649fc636ea4d71499f8f1e16020e794e98f`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:49:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 08 Sep 2026 19:49:25 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:31 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5798fd09d238c015a79c7429fab645cb073490e2e48fbea1b08504bdfee0ebca`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d113e03144b64678d3a1dc01ca5a9e71358e145ecf376c1f29cc31858c6d7`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 2.6 MB (2624846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d83ca7f2203e71efd5b71ae34cf0d60fdd1ca0f4e3555212fa2b1576223eef`  
		Last Modified: Tue, 08 Sep 2026 19:49:47 GMT  
		Size: 78.6 MB (78640245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1391a496f1c8ec426cedf28d0361acae3e1136580d2426e9b75106d32a4798`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:d4929a24b71c0cec28f33a14ba6c76f911cdf5cd9ceb6d0c9803568ea48097e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1161341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ee79193b417d3256d838e63a674d47e7b25f6b52872552ccbcf62370d1a8af`

```dockerfile
```

-	Layers:
	-	`sha256:e2393cb269392aa38bc41b23671994768b04435d9bb62e3d5a190b95dedad40c`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 1.1 MB (1145431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc6151291670e94cddd66ce4278596a0962fe9689021f2bfb91e632444e4f37d`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:e2f55b0afaa32987b5610606437825c998066b3ce01a2eaa98c16beecfeb240d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:207cc911782fc63897c8824ccc3965a1c10e1b890bdb600c31e484263d7524de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94553766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bf956a7c938bce1ddf2ae68f09e5789c36ac99cfb474326cfd72a117e7e914`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:49:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 08 Sep 2026 19:49:04 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:10 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:10 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2427c51cfa5a2dbc9c43278466bd5314422af3c6ebab02fa8103d6a81bd2113f`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4222f1927de9ec73dbad2ff758246f1797a5b466665088ab9a665d0df1b17e7`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 2.6 MB (2574512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616b08382845d588e47305cb48697e2f99ad6269d38feb6aaed5f2b3b70e5641`  
		Last Modified: Tue, 08 Sep 2026 19:49:29 GMT  
		Size: 88.1 MB (88133918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d4c2fb29607246a8a1dd5b2139a41e59d4dee23ad8df75300fb5cceb002046`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:7e295a44a403ae0ee77200729d2d265d391562ed8d1ca647a3523b019d72a8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1166230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:164bfd094f677913d488d2f595d9e71e4e7c90858369d9335c6dd368dfaa5375`

```dockerfile
```

-	Layers:
	-	`sha256:6747faed5f3ceedff7a7918cc007cf7fdd9a00e27bfac29a1237492d7f9f91a0`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 1.2 MB (1150442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dceff34aa3e6973ce59fc7bdc8102d8b3077461663b62272acb143f775991bfe`  
		Last Modified: Tue, 08 Sep 2026 19:49:27 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:180cebe468eb2f8b939bc640d6c628ef60eae9d8f7694830165eb43ec9377939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85447864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ffa58647563098fc1b127f5b122649fc636ea4d71499f8f1e16020e794e98f`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 19:49:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 08 Sep 2026 19:49:25 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:31 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:31 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5798fd09d238c015a79c7429fab645cb073490e2e48fbea1b08504bdfee0ebca`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d113e03144b64678d3a1dc01ca5a9e71358e145ecf376c1f29cc31858c6d7`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 2.6 MB (2624846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d83ca7f2203e71efd5b71ae34cf0d60fdd1ca0f4e3555212fa2b1576223eef`  
		Last Modified: Tue, 08 Sep 2026 19:49:47 GMT  
		Size: 78.6 MB (78640245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1391a496f1c8ec426cedf28d0361acae3e1136580d2426e9b75106d32a4798`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:d4929a24b71c0cec28f33a14ba6c76f911cdf5cd9ceb6d0c9803568ea48097e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1161341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ee79193b417d3256d838e63a674d47e7b25f6b52872552ccbcf62370d1a8af`

```dockerfile
```

-	Layers:
	-	`sha256:e2393cb269392aa38bc41b23671994768b04435d9bb62e3d5a190b95dedad40c`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 1.1 MB (1145431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc6151291670e94cddd66ce4278596a0962fe9689021f2bfb91e632444e4f37d`  
		Last Modified: Tue, 08 Sep 2026 19:49:45 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:c25bff1bb4bf09a40cfc727811265f5446d23a3e6d5102b38874b0559d6a0620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:3d850adfc9ea336ff0ef73f09458934946a579b2054768cc6ba6a071d7245aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.2 MB (180193597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8bb97af90c3e905e7287216f956f357b2c23e9f1348a90065b4ef762bbbd26`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:48:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:48:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:48:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:48:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db28f0af06f2e57c4b43cbfc464fe7f36145565107565210e4901db13b7a70ad`  
		Last Modified: Tue, 08 Sep 2026 19:48:54 GMT  
		Size: 19.3 MB (19284553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0459004c50060ccc084bd540251349921d72a8182dab57561dac38f1ff09ce9a`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e9e00e7bdae15015a8689cb1338f0a3098395408331a136690f814faba30a0`  
		Last Modified: Tue, 08 Sep 2026 19:48:56 GMT  
		Size: 88.3 MB (88349739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f9f006d6ca123d8d26d8c91d92cdc6e252118c291ae7d3177bfd6103f907b6`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:3e29631733905142849b0cf6aa4dd3b2afa0e2311eb5d28ba1aebca238373366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5783f33ddab65a90fee5494e609a2c784c4a94ee9ce0f90fa774a124d0b27ba`

```dockerfile
```

-	Layers:
	-	`sha256:6025f202604d1df00d8611926307522c15bd20eb3d7671a4543c02bb59f9f15f`  
		Last Modified: Tue, 08 Sep 2026 19:48:54 GMT  
		Size: 6.7 MB (6692108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8787bb997f72a8020b9aca3919b22ee6f64721ca5d658b77fb3f784eefa55d6`  
		Last Modified: Tue, 08 Sep 2026 19:48:53 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:3db9e0e65b6a43d471276b737db49a53f59cd0f5450e157c20acd63f2a44c5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166219814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e54c6a3b8ed9ccf58df6d37182ab832674832139f59c7b9ca292efe056ce2e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:48:42 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:48:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:48:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:48:47 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:48:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8ea4528c5d147040f8502a8b3991265d2cf076d4f69bbcbeaa187f662d4616`  
		Last Modified: Tue, 08 Sep 2026 19:49:06 GMT  
		Size: 17.9 MB (17949965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bf51456cff987fea2b94a840149baafed74f6b7ae7d48b27cb68f996d225ea`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434acb1cd470610d2f95046546f0f31a769aca7d8dc9d0b262a1f70a294c1bf3`  
		Last Modified: Tue, 08 Sep 2026 19:49:08 GMT  
		Size: 82.1 MB (82099344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245e3c272c29bffb5067b1009b3ce0c04bbe06fc051aea90982129cae6bb12e9`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:c76111bd00e3589d560f0a8f214dabd7d24245f39dd4db5e503eaeec3a883f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f886816dfcc8b69684d4a61b09b2870292c6c9826840313d03d73e64ce960109`

```dockerfile
```

-	Layers:
	-	`sha256:f3e31148dfeb75a1d41bae7c89e7be8043f81b7cefc9263434e790d0bea4acf6`  
		Last Modified: Tue, 08 Sep 2026 19:49:06 GMT  
		Size: 6.7 MB (6687518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ab573b468a8d92cde78c211c6051aade7b2c42286c15aa4e5fb732bb8d79aea`  
		Last Modified: Tue, 08 Sep 2026 19:49:05 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4b0f23658e3d5cbe5f933abaa6c1838faa7e239eca2bc7545bf9fc842e58ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170061881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a4f97ff24686f5a3102bb7f3db1575b4a5d983b969ea11d6854f6ab5e68856`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:49:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 19:49:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
ENV TELEGRAF_VERSION=1.40.0
# Tue, 08 Sep 2026 19:49:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 08 Sep 2026 19:49:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 08 Sep 2026 19:49:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 08 Sep 2026 19:49:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256cb95cbf1a1409e447c0c57ff5ba6985523483eef954d65d9471d8b4806523`  
		Last Modified: Tue, 08 Sep 2026 19:49:52 GMT  
		Size: 19.2 MB (19194795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67044f4004b74b727799aaae8361933b988568ef7b5a405a451fbbdac28ca274`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb2158af6587a3cb17846da1027c74df3c03b42ffdaac5c6a460c5d33aab78d`  
		Last Modified: Tue, 08 Sep 2026 19:49:53 GMT  
		Size: 78.8 MB (78849480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577d12b0b77663e594391b46245444f98ef3aa03e82b4d1f3623bd2c377fbb23`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:09226b5147aff26778129e6b6f1afca28783a3b0b8253b3f3f090ea20fdb9088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6707688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef7eb173dfac390d83ab91e025d8d91249581e1d26344215287861ecc42c6f3`

```dockerfile
```

-	Layers:
	-	`sha256:0ed77a1aee16e7e4919af8e5fef2a47c2d2f1dcdc58303b451ef0f25c35f752e`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 6.7 MB (6692796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1141a01a57e44b316505a2cb4ccdcf2a78023a8767baa801790e01d152bbbb87`  
		Last Modified: Tue, 08 Sep 2026 19:49:51 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
