<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.37`](#telegraf137)
-	[`telegraf:1.37-alpine`](#telegraf137-alpine)
-	[`telegraf:1.37.3`](#telegraf1373)
-	[`telegraf:1.37.3-alpine`](#telegraf1373-alpine)
-	[`telegraf:1.38`](#telegraf138)
-	[`telegraf:1.38-alpine`](#telegraf138-alpine)
-	[`telegraf:1.38.4`](#telegraf1384)
-	[`telegraf:1.38.4-alpine`](#telegraf1384-alpine)
-	[`telegraf:1.39`](#telegraf139)
-	[`telegraf:1.39-alpine`](#telegraf139-alpine)
-	[`telegraf:1.39.3`](#telegraf1393)
-	[`telegraf:1.39.3-alpine`](#telegraf1393-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.37`

```console
$ docker pull telegraf@sha256:0e6e049e9e92f099c98aefa745e1872510d4b846755ecc0ce67ab9441b600923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37` - linux; amd64

```console
$ docker pull telegraf@sha256:19424a865351fcbdcf0131c1064b78740e3f4b54e2ed91b048342ded5d458e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172274689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1dc5b1b310ee5234aba4b7c2a97cbd40ec28fb51d04156f0b9adcdad6a38f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:17 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:03:21 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 18:03:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:03:21 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:21 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551934d3973901eee50f112dfb75618b873637065fdc47975676b8be8e87eebe`  
		Last Modified: Tue, 11 Aug 2026 18:03:40 GMT  
		Size: 18.9 MB (18944548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387388835eb7b032898a3d9731682b7a5d9c928d49707fb87fbac8a8e15241e8`  
		Last Modified: Tue, 11 Aug 2026 18:03:39 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daaa4105d79de977de11a65f5a7afd08ae2d0dbccc4cabf4179b12c875f037f3`  
		Last Modified: Tue, 11 Aug 2026 18:03:41 GMT  
		Size: 80.8 MB (80783197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74384bc1cdd08bac9a75cae501c037aa00fd2e0a862f35744f2c0a541af18c36`  
		Last Modified: Tue, 11 Aug 2026 18:03:39 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:b5d2cb0c608b2f0dc28fd1c1ce2d9ff0bdf70ff08bfe20cbd3f62500bffb0e16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee7a4e146e5211d632a347860f46f1488d11284431d0a17aba7622eccdbdb3c`

```dockerfile
```

-	Layers:
	-	`sha256:dddf9d6ecb1baa48b52ebffa40ab8d166cfe022d199a9b18a40123417cff240b`  
		Last Modified: Tue, 11 Aug 2026 18:03:39 GMT  
		Size: 6.7 MB (6667030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddf60ef3b31125e7d58a64fa9a5375ae61fc5e8bbcc67388d2f3c7db8b0b9719`  
		Last Modified: Tue, 11 Aug 2026 18:03:39 GMT  
		Size: 14.4 KB (14426 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2ac869ac5e4904eb1d55b3cace76095b7b0bbd58dae6b162613258cea8d8b463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158475794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04966ffa1bc569e22589079594234eb1f29abf5fb4dd0498166983ce990309fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:59 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:04:05 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 18:04:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:04:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:04:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:04:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:04:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1219cd7e1cda43ca231704755068e1f95a05df1d981f5a3b1f007f890b4543`  
		Last Modified: Tue, 11 Aug 2026 18:04:23 GMT  
		Size: 17.7 MB (17699746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1628d0ceb6d33971b16af576a3c5e2f095793557fc64786288295d09d3fc3106`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecae4873997eab2f42756b447b5321958f44e509ab728107c6700f19d9451dfc`  
		Last Modified: Tue, 11 Aug 2026 18:04:24 GMT  
		Size: 74.6 MB (74617540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1410222e6f3cd53f6a2fd3d90702bb40732c6b54fc799834bc61fa609e680d67`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:118c337de7ef43d01c8e4be16a17ecf3ec0c7876092abdea163642562629ffc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0353e1c681044fa9b6524a43ff98bc1bfffc7b11e5af7a1eee413b74201467`

```dockerfile
```

-	Layers:
	-	`sha256:a3b8d1afb3370ea588b92553788d77eafedb0cacc1f848bdc77a43a4114ca4f0`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 6.7 MB (6661627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24a06e6b926ff5f2188605a9dcc534dd3adcae4c4dc8089b66e5eced8940f269`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:1fb25ccfac5a087f5a46f71d169a9d92a2c1bdac1f5b0eae4c21ad4b612c015f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163058643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c18a7336fe56f068ac3996b74e9c4c833e80cf0868b173e3c85d7b41440294d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:52:31 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 05 Aug 2026 01:52:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:52:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:52:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:52:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:52:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbebc773f3c5898567baf60537917f73bab23e3e3a8aad536e76551853a781c3`  
		Last Modified: Wed, 05 Aug 2026 01:52:51 GMT  
		Size: 18.9 MB (18885885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5941c82edaeb4e79af134f31c8f26f3fb7e39f57868d72a0806170c05734ebd`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2873999d5771b7c181fac96c65a8a111b6212c19b5c2e5cdad1d69d04f5014`  
		Last Modified: Wed, 05 Aug 2026 01:52:53 GMT  
		Size: 72.2 MB (72171015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b93efcec6af17e688d806d8ace16727559f25f314c8b66b0bd7257167b99a20`  
		Last Modified: Wed, 05 Aug 2026 01:52:51 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:d81030f7965e0e22aed6fa80cd3e4d4526bd0ca2d3ceea131472bc80d46fd7fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6682241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c921bc4256d6079779a7ea72c2c15c38ba291159ad223972313b76da563a78db`

```dockerfile
```

-	Layers:
	-	`sha256:a7eb786bd995325d8026e33aaf58dd768f86a6b017bb2efa7997105b975e7a4c`  
		Last Modified: Wed, 05 Aug 2026 01:52:51 GMT  
		Size: 6.7 MB (6667706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42fc051d910351c95d0eeeca0959506072c8afd359047a0371d8bed3e1581987`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 14.5 KB (14535 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37-alpine`

```console
$ docker pull telegraf@sha256:0e86a7025ae22c9ac56a640d4f57364f8045e44cddefe73f3eef112387ea69fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:dfdb92ae691bf5429f2288b610d188b3e4b57553fab6801cd860878c25af2cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86876771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaf58ecd7b4522e887b4b9cfaefede840f10eb80563f8d6fc47ce765dafcdd9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 18:03:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 18:03:12 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 18:03:19 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 18:03:19 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 18:03:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4199677e4d6558d7ca45dcd2965cbf2e6504213bd7ee0d7f026c32ef80cef785`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c41beb728232806f701f7ac9f491f9267d50763d153b09ae984e9dc83c3157`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 2.5 MB (2510920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebea6b9c09ec1dc6a22f9e1575aa7899bab5bb67dce9bed6a7fb6ba0b09b11f2`  
		Last Modified: Tue, 11 Aug 2026 18:03:36 GMT  
		Size: 80.6 MB (80577340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0a1e4babeb3327101bf9e7885246d24719e2b0d39e814673fd3a66d8622bed`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4b568b2f55b93a97f4869bf9941363e6b4c1d7374b29b6fb66816383234a4fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1151037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565d576679553fb86616f3a8f350e05e5ef7c1c43074336d4ccd9b60edf4119b`

```dockerfile
```

-	Layers:
	-	`sha256:85e33d60257e8a2400578416697c8d5a86830375c05c0d385f2abc40e338ffe4`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 1.1 MB (1135589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae8cbec481844936917dbd541bc91f2ae01a6f1b3d5df99c43f1bfca35f2dde`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 15.4 KB (15448 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0887d7caa6a0d0793771cb0f50ee42fae77a52d44736cba379e061e303fd0319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78658383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a4baac8ce2ece31f1e506d7a476b40720f2b38575e5e2c6cab55ea423e65c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:11:46 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
ENV TELEGRAF_VERSION=1.37.3
# Mon, 22 Jun 2026 20:11:53 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:11:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27a4f7541d79b95fdb40d40de6cf09fa31effe5b94d8521a343228a0bf34b18`  
		Last Modified: Mon, 22 Jun 2026 20:12:06 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066e9f898666ad4d3312ea3082d02c8580d05a81548755066346d9a21026c34`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 2.6 MB (2578489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccabcf6b51d35af2690ca16078ef4ef71447698089e7915fbd37a9c40eb4d68`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 72.0 MB (71958511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9063ba0c9c7ede43c226489650abd815b2fcfa721543a4c1163a7f8e19a4d16`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:716edec7cf8b33075af528e6cd778d056a4ee41817e2fa9eef2c48838d691e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1146244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b7b9cfe54b8471c66db97423164fb2581e59ee5003becadd4a29543488a02c`

```dockerfile
```

-	Layers:
	-	`sha256:a5c5501e40490dacbc0f2959d8f3c8a4fe98477b60d967901613442adeed2730`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 1.1 MB (1131216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7496bbc9b77326bbe891e9993d8bf5cf35b7b7802ec20e08addad69dd65e0cfc`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37.3`

```console
$ docker pull telegraf@sha256:0e6e049e9e92f099c98aefa745e1872510d4b846755ecc0ce67ab9441b600923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37.3` - linux; amd64

```console
$ docker pull telegraf@sha256:19424a865351fcbdcf0131c1064b78740e3f4b54e2ed91b048342ded5d458e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172274689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1dc5b1b310ee5234aba4b7c2a97cbd40ec28fb51d04156f0b9adcdad6a38f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:17 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:03:21 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 18:03:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:03:21 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:21 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551934d3973901eee50f112dfb75618b873637065fdc47975676b8be8e87eebe`  
		Last Modified: Tue, 11 Aug 2026 18:03:40 GMT  
		Size: 18.9 MB (18944548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387388835eb7b032898a3d9731682b7a5d9c928d49707fb87fbac8a8e15241e8`  
		Last Modified: Tue, 11 Aug 2026 18:03:39 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daaa4105d79de977de11a65f5a7afd08ae2d0dbccc4cabf4179b12c875f037f3`  
		Last Modified: Tue, 11 Aug 2026 18:03:41 GMT  
		Size: 80.8 MB (80783197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74384bc1cdd08bac9a75cae501c037aa00fd2e0a862f35744f2c0a541af18c36`  
		Last Modified: Tue, 11 Aug 2026 18:03:39 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:b5d2cb0c608b2f0dc28fd1c1ce2d9ff0bdf70ff08bfe20cbd3f62500bffb0e16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee7a4e146e5211d632a347860f46f1488d11284431d0a17aba7622eccdbdb3c`

```dockerfile
```

-	Layers:
	-	`sha256:dddf9d6ecb1baa48b52ebffa40ab8d166cfe022d199a9b18a40123417cff240b`  
		Last Modified: Tue, 11 Aug 2026 18:03:39 GMT  
		Size: 6.7 MB (6667030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddf60ef3b31125e7d58a64fa9a5375ae61fc5e8bbcc67388d2f3c7db8b0b9719`  
		Last Modified: Tue, 11 Aug 2026 18:03:39 GMT  
		Size: 14.4 KB (14426 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2ac869ac5e4904eb1d55b3cace76095b7b0bbd58dae6b162613258cea8d8b463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158475794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04966ffa1bc569e22589079594234eb1f29abf5fb4dd0498166983ce990309fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:59 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:04:05 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 18:04:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:04:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:04:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:04:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:04:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1219cd7e1cda43ca231704755068e1f95a05df1d981f5a3b1f007f890b4543`  
		Last Modified: Tue, 11 Aug 2026 18:04:23 GMT  
		Size: 17.7 MB (17699746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1628d0ceb6d33971b16af576a3c5e2f095793557fc64786288295d09d3fc3106`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecae4873997eab2f42756b447b5321958f44e509ab728107c6700f19d9451dfc`  
		Last Modified: Tue, 11 Aug 2026 18:04:24 GMT  
		Size: 74.6 MB (74617540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1410222e6f3cd53f6a2fd3d90702bb40732c6b54fc799834bc61fa609e680d67`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:118c337de7ef43d01c8e4be16a17ecf3ec0c7876092abdea163642562629ffc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0353e1c681044fa9b6524a43ff98bc1bfffc7b11e5af7a1eee413b74201467`

```dockerfile
```

-	Layers:
	-	`sha256:a3b8d1afb3370ea588b92553788d77eafedb0cacc1f848bdc77a43a4114ca4f0`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 6.7 MB (6661627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24a06e6b926ff5f2188605a9dcc534dd3adcae4c4dc8089b66e5eced8940f269`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:1fb25ccfac5a087f5a46f71d169a9d92a2c1bdac1f5b0eae4c21ad4b612c015f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163058643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c18a7336fe56f068ac3996b74e9c4c833e80cf0868b173e3c85d7b41440294d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:52:31 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 05 Aug 2026 01:52:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:52:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:52:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:52:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:52:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbebc773f3c5898567baf60537917f73bab23e3e3a8aad536e76551853a781c3`  
		Last Modified: Wed, 05 Aug 2026 01:52:51 GMT  
		Size: 18.9 MB (18885885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5941c82edaeb4e79af134f31c8f26f3fb7e39f57868d72a0806170c05734ebd`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2873999d5771b7c181fac96c65a8a111b6212c19b5c2e5cdad1d69d04f5014`  
		Last Modified: Wed, 05 Aug 2026 01:52:53 GMT  
		Size: 72.2 MB (72171015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b93efcec6af17e688d806d8ace16727559f25f314c8b66b0bd7257167b99a20`  
		Last Modified: Wed, 05 Aug 2026 01:52:51 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:d81030f7965e0e22aed6fa80cd3e4d4526bd0ca2d3ceea131472bc80d46fd7fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6682241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c921bc4256d6079779a7ea72c2c15c38ba291159ad223972313b76da563a78db`

```dockerfile
```

-	Layers:
	-	`sha256:a7eb786bd995325d8026e33aaf58dd768f86a6b017bb2efa7997105b975e7a4c`  
		Last Modified: Wed, 05 Aug 2026 01:52:51 GMT  
		Size: 6.7 MB (6667706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42fc051d910351c95d0eeeca0959506072c8afd359047a0371d8bed3e1581987`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 14.5 KB (14535 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37.3-alpine`

```console
$ docker pull telegraf@sha256:0e86a7025ae22c9ac56a640d4f57364f8045e44cddefe73f3eef112387ea69fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:dfdb92ae691bf5429f2288b610d188b3e4b57553fab6801cd860878c25af2cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86876771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaf58ecd7b4522e887b4b9cfaefede840f10eb80563f8d6fc47ce765dafcdd9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 18:03:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 18:03:12 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 18:03:19 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 18:03:19 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 18:03:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4199677e4d6558d7ca45dcd2965cbf2e6504213bd7ee0d7f026c32ef80cef785`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c41beb728232806f701f7ac9f491f9267d50763d153b09ae984e9dc83c3157`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 2.5 MB (2510920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebea6b9c09ec1dc6a22f9e1575aa7899bab5bb67dce9bed6a7fb6ba0b09b11f2`  
		Last Modified: Tue, 11 Aug 2026 18:03:36 GMT  
		Size: 80.6 MB (80577340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0a1e4babeb3327101bf9e7885246d24719e2b0d39e814673fd3a66d8622bed`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4b568b2f55b93a97f4869bf9941363e6b4c1d7374b29b6fb66816383234a4fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1151037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565d576679553fb86616f3a8f350e05e5ef7c1c43074336d4ccd9b60edf4119b`

```dockerfile
```

-	Layers:
	-	`sha256:85e33d60257e8a2400578416697c8d5a86830375c05c0d385f2abc40e338ffe4`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 1.1 MB (1135589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae8cbec481844936917dbd541bc91f2ae01a6f1b3d5df99c43f1bfca35f2dde`  
		Last Modified: Tue, 11 Aug 2026 18:03:34 GMT  
		Size: 15.4 KB (15448 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0887d7caa6a0d0793771cb0f50ee42fae77a52d44736cba379e061e303fd0319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78658383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a4baac8ce2ece31f1e506d7a476b40720f2b38575e5e2c6cab55ea423e65c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:11:46 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
ENV TELEGRAF_VERSION=1.37.3
# Mon, 22 Jun 2026 20:11:53 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:11:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:11:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27a4f7541d79b95fdb40d40de6cf09fa31effe5b94d8521a343228a0bf34b18`  
		Last Modified: Mon, 22 Jun 2026 20:12:06 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066e9f898666ad4d3312ea3082d02c8580d05a81548755066346d9a21026c34`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 2.6 MB (2578489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccabcf6b51d35af2690ca16078ef4ef71447698089e7915fbd37a9c40eb4d68`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 72.0 MB (71958511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9063ba0c9c7ede43c226489650abd815b2fcfa721543a4c1163a7f8e19a4d16`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:716edec7cf8b33075af528e6cd778d056a4ee41817e2fa9eef2c48838d691e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1146244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b7b9cfe54b8471c66db97423164fb2581e59ee5003becadd4a29543488a02c`

```dockerfile
```

-	Layers:
	-	`sha256:a5c5501e40490dacbc0f2959d8f3c8a4fe98477b60d967901613442adeed2730`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 1.1 MB (1131216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7496bbc9b77326bbe891e9993d8bf5cf35b7b7802ec20e08addad69dd65e0cfc`  
		Last Modified: Mon, 22 Jun 2026 20:12:07 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:b4dc2803f1760b138be2c0944777dfd9c7dc63483d3df3e664b1e9abe77f08c8
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
$ docker pull telegraf@sha256:13be042a8dd7fc8417c00cf201473af10d44440de55eac31635596c9a12922e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175002381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729dc03d426ac98c112a1c4b688cbe37df1363d6729fe0698f63d8da90c63186`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:23 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:03:28 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 18:03:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:03:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e22b83499358f2a26cb20d4132942c8d03d18b4b7390c2860a5c021da13718e`  
		Last Modified: Tue, 11 Aug 2026 18:03:48 GMT  
		Size: 18.9 MB (18944380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035c76d4fd5d62ec98cac9c7216fcc471561e3d13430019a098acc1fcec6011c`  
		Last Modified: Tue, 11 Aug 2026 18:03:47 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a20712a31e22ec8680da50e1d8124f607190786d741144ead06da46dc257a9`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 83.5 MB (83511056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3278a73f6441841075e628a4a7e32dcd641ca18352aafd6504b9281e6c932c`  
		Last Modified: Tue, 11 Aug 2026 18:03:48 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:26acab7523e47152394e6f51f30fb6780d745fd6c39aeb0a308d5ee505d9ba88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469bdbe275d0dd79ab2313a143a41e77775dbee5f9821367ca3cdbadecce1ef6`

```dockerfile
```

-	Layers:
	-	`sha256:04ee10473c9c1d6cf78f3784b7b2efad19d46c4c93aac3a3bc365e06a319ea3f`  
		Last Modified: Tue, 11 Aug 2026 18:03:48 GMT  
		Size: 6.7 MB (6674335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:168fb87a47bf9d4945445d552874095cd428c42de9525287b04341263d9711cb`  
		Last Modified: Tue, 11 Aug 2026 18:03:47 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:c42162f3859dbfead9e481e984dbd9ef8dc07393de75b8c6259af3234677b2f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161286214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd68322530a4b7e33a4e4c9fb9e9ea4f8880d22e284b3c597028c945b2b2bd8e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:59 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:04:36 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 18:04:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:04:36 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:04:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:04:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:04:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1219cd7e1cda43ca231704755068e1f95a05df1d981f5a3b1f007f890b4543`  
		Last Modified: Tue, 11 Aug 2026 18:04:23 GMT  
		Size: 17.7 MB (17699746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1628d0ceb6d33971b16af576a3c5e2f095793557fc64786288295d09d3fc3106`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ab52cbd1566dbd00cb4faf90e2b35f46b38ad37bf38843363c68b8858c8941`  
		Last Modified: Tue, 11 Aug 2026 18:04:55 GMT  
		Size: 77.4 MB (77427959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c9873ab145c9e1b01ac782f281a60febe13eef9124464723e14589834b266d`  
		Last Modified: Tue, 11 Aug 2026 18:04:53 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:c783010536f434aaf807e01a42499266b3788300f265419d87a2fc7de2535eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d818a4e9cd3e3ec43bbcd54d4e323f322bfeb102aa3cb0ac65333ffbe36e445e`

```dockerfile
```

-	Layers:
	-	`sha256:742bb075e72b42c0ae8c8a386fa6ead4424873f326fd0f7465c6d8be8a0b759e`  
		Last Modified: Tue, 11 Aug 2026 18:04:53 GMT  
		Size: 6.7 MB (6668932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:382da83d63acd4c01415e241693a5297735b9928a3a58bd0397512dbadd25326`  
		Last Modified: Tue, 11 Aug 2026 18:04:53 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c1671c8db05dbb6a6456b4ccd4cef5efaf80a6b0480019817a23dafceab517ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165364253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357f132d5d9bce36843384e6e18c02b4707c8a6995bab4e586a047d66b47bae2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:52:30 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 05 Aug 2026 01:52:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:52:30 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:52:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:52:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:52:30 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8267afe5cb1457d65714d1d57c8c45ee2d7e50fa6ebbad0c9215848e292c8e45`  
		Last Modified: Wed, 05 Aug 2026 01:52:51 GMT  
		Size: 18.9 MB (18885783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de11aa3fc7c284192fb184aeef098f95c7ba70f727c533bff3abeca1c83b081e`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea069032cdf4769a4f74408f0bc03ae9bf619bc33cd8aa98bd8cc3c24c6d3a52`  
		Last Modified: Wed, 05 Aug 2026 01:52:52 GMT  
		Size: 74.5 MB (74476743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74a95c5187129c822f61b00b0c1c499f021e99d197f3a7c9885e2de141becf5`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:bad394810148a9541f32a8a80707305a69a9851830c1b57b166f46cb07b65bb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6689548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26bde9156afa658e4162af25d402da02f3816f58e261315734b054b9a4fe8625`

```dockerfile
```

-	Layers:
	-	`sha256:36a8ff51fe0331447a8ede123a8d8603c0e10b76ae920ff947099e503afad577`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 6.7 MB (6675011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3899fcc8485d32d8014f31cb763e8e7e94899e10d57451a109f45f47611019b9`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38-alpine`

```console
$ docker pull telegraf@sha256:857733229e7e1cd718097a686afa6db3f902fe159438c55b26d12a9b007094f1
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
$ docker pull telegraf@sha256:bafa9618a020524cbfbd857f1deac3c84719b4ecbd3ece82f0804282c627f96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81078772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6c25df0f302fa5a43cddb6400eb075d4d0fca9cb5b701b83b9b94279f0151c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:11:50 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
ENV TELEGRAF_VERSION=1.38.4
# Mon, 22 Jun 2026 20:11:56 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:11:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e63818f95bde7c4203c7b17d236bdd8fbe58b523e900944dd984825b444178`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e896fb6b98964848b90f3ce6fffdd5bd5dbe42fd6b83e3808eeae74cdd9f21`  
		Last Modified: Mon, 22 Jun 2026 20:12:10 GMT  
		Size: 2.6 MB (2617155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389345b38b3eafc6c6a9f0747acfd3a2aa0a8d9aade6c1c1dc7f2a80e29705d0`  
		Last Modified: Mon, 22 Jun 2026 20:12:13 GMT  
		Size: 74.3 MB (74278857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3878046ed96bb17cd231ce52d24084c7672b3e6656a5fffce3e1f56862a4181f`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:398da6c1ebd5e0e6d5e78ebc1c33661011cbb95f205870e7be0148740fb67b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c710771442252de84c28d14e92594bd71e872a6a5ee49f0c3eefd1e88f59164b`

```dockerfile
```

-	Layers:
	-	`sha256:5535a38bbb2f840db9bd10171484871e039b62f3cb936db054e65fc808b054a8`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 1.1 MB (1137208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1e9b3a8d8cef361603d71fc431dd83123a292edcea9d593307e0274b79b322`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4`

```console
$ docker pull telegraf@sha256:b4dc2803f1760b138be2c0944777dfd9c7dc63483d3df3e664b1e9abe77f08c8
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
$ docker pull telegraf@sha256:13be042a8dd7fc8417c00cf201473af10d44440de55eac31635596c9a12922e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175002381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729dc03d426ac98c112a1c4b688cbe37df1363d6729fe0698f63d8da90c63186`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:23 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:03:28 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 18:03:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:03:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e22b83499358f2a26cb20d4132942c8d03d18b4b7390c2860a5c021da13718e`  
		Last Modified: Tue, 11 Aug 2026 18:03:48 GMT  
		Size: 18.9 MB (18944380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035c76d4fd5d62ec98cac9c7216fcc471561e3d13430019a098acc1fcec6011c`  
		Last Modified: Tue, 11 Aug 2026 18:03:47 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a20712a31e22ec8680da50e1d8124f607190786d741144ead06da46dc257a9`  
		Last Modified: Tue, 11 Aug 2026 18:03:50 GMT  
		Size: 83.5 MB (83511056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3278a73f6441841075e628a4a7e32dcd641ca18352aafd6504b9281e6c932c`  
		Last Modified: Tue, 11 Aug 2026 18:03:48 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:26acab7523e47152394e6f51f30fb6780d745fd6c39aeb0a308d5ee505d9ba88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469bdbe275d0dd79ab2313a143a41e77775dbee5f9821367ca3cdbadecce1ef6`

```dockerfile
```

-	Layers:
	-	`sha256:04ee10473c9c1d6cf78f3784b7b2efad19d46c4c93aac3a3bc365e06a319ea3f`  
		Last Modified: Tue, 11 Aug 2026 18:03:48 GMT  
		Size: 6.7 MB (6674335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:168fb87a47bf9d4945445d552874095cd428c42de9525287b04341263d9711cb`  
		Last Modified: Tue, 11 Aug 2026 18:03:47 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:c42162f3859dbfead9e481e984dbd9ef8dc07393de75b8c6259af3234677b2f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161286214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd68322530a4b7e33a4e4c9fb9e9ea4f8880d22e284b3c597028c945b2b2bd8e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:59 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:59 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:04:36 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 18:04:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:04:36 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:04:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:04:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 18:04:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1219cd7e1cda43ca231704755068e1f95a05df1d981f5a3b1f007f890b4543`  
		Last Modified: Tue, 11 Aug 2026 18:04:23 GMT  
		Size: 17.7 MB (17699746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1628d0ceb6d33971b16af576a3c5e2f095793557fc64786288295d09d3fc3106`  
		Last Modified: Tue, 11 Aug 2026 18:04:22 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ab52cbd1566dbd00cb4faf90e2b35f46b38ad37bf38843363c68b8858c8941`  
		Last Modified: Tue, 11 Aug 2026 18:04:55 GMT  
		Size: 77.4 MB (77427959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c9873ab145c9e1b01ac782f281a60febe13eef9124464723e14589834b266d`  
		Last Modified: Tue, 11 Aug 2026 18:04:53 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:c783010536f434aaf807e01a42499266b3788300f265419d87a2fc7de2535eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d818a4e9cd3e3ec43bbcd54d4e323f322bfeb102aa3cb0ac65333ffbe36e445e`

```dockerfile
```

-	Layers:
	-	`sha256:742bb075e72b42c0ae8c8a386fa6ead4424873f326fd0f7465c6d8be8a0b759e`  
		Last Modified: Tue, 11 Aug 2026 18:04:53 GMT  
		Size: 6.7 MB (6668932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:382da83d63acd4c01415e241693a5297735b9928a3a58bd0397512dbadd25326`  
		Last Modified: Tue, 11 Aug 2026 18:04:53 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c1671c8db05dbb6a6456b4ccd4cef5efaf80a6b0480019817a23dafceab517ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165364253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357f132d5d9bce36843384e6e18c02b4707c8a6995bab4e586a047d66b47bae2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:52:30 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 05 Aug 2026 01:52:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:52:30 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:52:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:52:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:52:30 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8267afe5cb1457d65714d1d57c8c45ee2d7e50fa6ebbad0c9215848e292c8e45`  
		Last Modified: Wed, 05 Aug 2026 01:52:51 GMT  
		Size: 18.9 MB (18885783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de11aa3fc7c284192fb184aeef098f95c7ba70f727c533bff3abeca1c83b081e`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea069032cdf4769a4f74408f0bc03ae9bf619bc33cd8aa98bd8cc3c24c6d3a52`  
		Last Modified: Wed, 05 Aug 2026 01:52:52 GMT  
		Size: 74.5 MB (74476743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74a95c5187129c822f61b00b0c1c499f021e99d197f3a7c9885e2de141becf5`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:bad394810148a9541f32a8a80707305a69a9851830c1b57b166f46cb07b65bb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6689548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26bde9156afa658e4162af25d402da02f3816f58e261315734b054b9a4fe8625`

```dockerfile
```

-	Layers:
	-	`sha256:36a8ff51fe0331447a8ede123a8d8603c0e10b76ae920ff947099e503afad577`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 6.7 MB (6675011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3899fcc8485d32d8014f31cb763e8e7e94899e10d57451a109f45f47611019b9`  
		Last Modified: Wed, 05 Aug 2026 01:52:50 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4-alpine`

```console
$ docker pull telegraf@sha256:857733229e7e1cd718097a686afa6db3f902fe159438c55b26d12a9b007094f1
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
$ docker pull telegraf@sha256:bafa9618a020524cbfbd857f1deac3c84719b4ecbd3ece82f0804282c627f96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81078772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6c25df0f302fa5a43cddb6400eb075d4d0fca9cb5b701b83b9b94279f0151c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:49 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:11:50 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
ENV TELEGRAF_VERSION=1.38.4
# Mon, 22 Jun 2026 20:11:56 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:11:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:11:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e63818f95bde7c4203c7b17d236bdd8fbe58b523e900944dd984825b444178`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e896fb6b98964848b90f3ce6fffdd5bd5dbe42fd6b83e3808eeae74cdd9f21`  
		Last Modified: Mon, 22 Jun 2026 20:12:10 GMT  
		Size: 2.6 MB (2617155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389345b38b3eafc6c6a9f0747acfd3a2aa0a8d9aade6c1c1dc7f2a80e29705d0`  
		Last Modified: Mon, 22 Jun 2026 20:12:13 GMT  
		Size: 74.3 MB (74278857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3878046ed96bb17cd231ce52d24084c7672b3e6656a5fffce3e1f56862a4181f`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:398da6c1ebd5e0e6d5e78ebc1c33661011cbb95f205870e7be0148740fb67b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c710771442252de84c28d14e92594bd71e872a6a5ee49f0c3eefd1e88f59164b`

```dockerfile
```

-	Layers:
	-	`sha256:5535a38bbb2f840db9bd10171484871e039b62f3cb936db054e65fc808b054a8`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 1.1 MB (1137208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1e9b3a8d8cef361603d71fc431dd83123a292edcea9d593307e0274b79b322`  
		Last Modified: Mon, 22 Jun 2026 20:12:09 GMT  
		Size: 15.0 KB (15028 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39`

```console
$ docker pull telegraf@sha256:9c3a1231b3eab67d9a54fccc0d5a5fac5161744998c88848fc62266ea0fd7994
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
$ docker pull telegraf@sha256:426583fc1e926c739669ee1afac924dab9d55240bfcb5a66f42290fcfffccd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177746646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fba4fea15ea0bd1d0d4b6015a3ac3aa4b17c5ebff4c17dff725a5abac11ca6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:03:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb5f0d471324a8901e8d05a871dbb4d845462ad17dca68f13b9e44d161535b0`  
		Last Modified: Tue, 11 Aug 2026 18:03:54 GMT  
		Size: 19.3 MB (19284487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da90442d9fa4156358c773c0556f35d57f64c229a428615a57d81b1a360ac692`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba716f91507ed46caacffb5c59b9d166819b54b62d845c1f2f13aa16abc4da3`  
		Last Modified: Tue, 11 Aug 2026 18:03:55 GMT  
		Size: 85.9 MB (85915229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbe4b51bb58011d561bb6f94ad99b18bd0e564d8178fb788c45428d196d302`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:f8f7876be6dbf83d0b78186dd6b6ee37d3ee1abc3f9c938a77e4e0caa5bdaf0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a899cffc3f1a5f169313b48433d43014291afeace2d4e6f060319fbc460d73f6`

```dockerfile
```

-	Layers:
	-	`sha256:784f9c34fd828a4957922f08c25b8895c862fa37a0c5651f8c38eae95017f3bf`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 6.7 MB (6684520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbd58fd80da85f70f1fec5b2f986df123a43ea509aa45e18bbfe84019a2cf0e9`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:606b3a128fd13a946b6732cdfe725b855d349f7b9bee85e03f38419b3c9848ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163971298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b7ade7e6c23a5207891021ab7c5fa87e58685df8809f211873e350bb24dad1`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:05:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:05:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:05:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:05:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:05:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c949dcce839c396b9c787b9ee92aa64491e7bfa688d012146b8d6ae5489303a2`  
		Last Modified: Tue, 11 Aug 2026 18:05:34 GMT  
		Size: 17.9 MB (17949914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce988284365a47fea44961a804c44783564a096ca6d15593a3e2fd020036abb`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1880d8f0941d8c028125d7c256c94dbd260972ff5fb86a94e870156174dc291c`  
		Last Modified: Tue, 11 Aug 2026 18:05:35 GMT  
		Size: 79.9 MB (79862860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8693f3e5f1efc476420c74a56b4ae6e52aa764b05858b8d5f93a76768f921165`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:6303fcc2a795475067c2e997ad1fbc4fc8cbe659de17f5bb645eb8a7ea361388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883a0c571ec4c56eeed0422049dbc5bb733bf328e2b33721bdc88396b95bea22`

```dockerfile
```

-	Layers:
	-	`sha256:1683f798602c8deeb13708450b0bb81f224f8377cdb89047792ee892abdfbf52`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 6.7 MB (6679930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8713cc45094f9392aa2eb9054bcbe67c222ca752ee734f957d73048a37f5ebf4`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:2ed2d5cdc81c82754bccf6b2cfb8cdcd899ecf32d939e220a17e9c68007cb01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166018615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3052849b841eecaa7fb69fbeae10bffdacf9b26ccab1890beac262f867f78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 01:52:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:52:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:52:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8a7a5d579a57055df04b09d73e0cfbe6327100f11e939928d40cb30ecb173c`  
		Last Modified: Wed, 05 Aug 2026 01:53:12 GMT  
		Size: 18.9 MB (18885846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4704e27536e8c153e241f149d4e0e120b336eee72335bb387b4b5824f90f3e7`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c35c63be5da8a1065c84e18774dd418a2f34759631d539c1ab80f292921d3d7`  
		Last Modified: Wed, 05 Aug 2026 01:53:13 GMT  
		Size: 75.1 MB (75131026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5370c5f561af77cbdaf59ab73a55c59b8dcb0de378aaa9231fe5316d8e4d7cda`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:02fe7224a48da51e55b3b959ca197dac85172fc4c7cf6f1f999269dd2a52b151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a398402b56291b33bc20653c0335622e84c1db7625ae7e00511a17cf68b4bf89`

```dockerfile
```

-	Layers:
	-	`sha256:c7fd127b284aae28cd7283b7989e68d63e3cd8702581ee92f2a48024e9e2c043`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 6.7 MB (6687328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba55307681a4d62938eba94e41526f37f760bd7decf07e3fa29ce1282d69446d`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 14.8 KB (14850 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39-alpine`

```console
$ docker pull telegraf@sha256:2f5eae4a0ff69606960b8e8f9f5be4bb43646299bb526c4a752c263a90e8cfcc
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
$ docker pull telegraf@sha256:f53fcaccaf6173146605515332406d34fa66fb01a666bda2c673ca2015fd8027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81717398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f348efe2bc8b5e61f77bb6ce3c35b2434b1be11259b83a004fd6c43d4e08552`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:48:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:22 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82240a925d08347c57376e74756c2aba9759436eaabc5dc9d5ac9b69653f8426`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3b3d2d83bc5bc9c9baa538181c5d70a4920b8f3055eeea4dacea9130b4545d`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 2.6 MB (2616530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cfec44b4cb32f088e979fa1274d13265210e5f6107fb438aeba7205c6b8908`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 74.9 MB (74918108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a0e002568cc3d617d80c5fbed5c2d9f6fafec97a934fcf5d6c8a2bdc96d070`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:c6fbc4aacab17a143a3177d9f001729c1d3d29572e32f82c8148586a174b305e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5db4e043f30f69552ecbb512902c0bc4b0a8a494d14924df66e0076921ec21`

```dockerfile
```

-	Layers:
	-	`sha256:50470fd28ca7a74663731e9e1ed3e3968b1811aeaeaa5f4f8d4a9f2c0ceeb30a`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 1.1 MB (1149525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:063bfd09947f1d1387b7dc4c876482f759945e2b69ffc9dd4db630cd0b89dbc4`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3`

```console
$ docker pull telegraf@sha256:c600aa594dccf961f1352c10d3cc1c3ad0798b30c0b495b73bb1948decb7c043
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown

### `telegraf:1.39.3` - linux; amd64

```console
$ docker pull telegraf@sha256:426583fc1e926c739669ee1afac924dab9d55240bfcb5a66f42290fcfffccd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177746646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fba4fea15ea0bd1d0d4b6015a3ac3aa4b17c5ebff4c17dff725a5abac11ca6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:03:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb5f0d471324a8901e8d05a871dbb4d845462ad17dca68f13b9e44d161535b0`  
		Last Modified: Tue, 11 Aug 2026 18:03:54 GMT  
		Size: 19.3 MB (19284487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da90442d9fa4156358c773c0556f35d57f64c229a428615a57d81b1a360ac692`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba716f91507ed46caacffb5c59b9d166819b54b62d845c1f2f13aa16abc4da3`  
		Last Modified: Tue, 11 Aug 2026 18:03:55 GMT  
		Size: 85.9 MB (85915229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbe4b51bb58011d561bb6f94ad99b18bd0e564d8178fb788c45428d196d302`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:f8f7876be6dbf83d0b78186dd6b6ee37d3ee1abc3f9c938a77e4e0caa5bdaf0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a899cffc3f1a5f169313b48433d43014291afeace2d4e6f060319fbc460d73f6`

```dockerfile
```

-	Layers:
	-	`sha256:784f9c34fd828a4957922f08c25b8895c862fa37a0c5651f8c38eae95017f3bf`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 6.7 MB (6684520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbd58fd80da85f70f1fec5b2f986df123a43ea509aa45e18bbfe84019a2cf0e9`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:606b3a128fd13a946b6732cdfe725b855d349f7b9bee85e03f38419b3c9848ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163971298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b7ade7e6c23a5207891021ab7c5fa87e58685df8809f211873e350bb24dad1`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:05:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:05:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:05:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:05:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:05:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c949dcce839c396b9c787b9ee92aa64491e7bfa688d012146b8d6ae5489303a2`  
		Last Modified: Tue, 11 Aug 2026 18:05:34 GMT  
		Size: 17.9 MB (17949914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce988284365a47fea44961a804c44783564a096ca6d15593a3e2fd020036abb`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1880d8f0941d8c028125d7c256c94dbd260972ff5fb86a94e870156174dc291c`  
		Last Modified: Tue, 11 Aug 2026 18:05:35 GMT  
		Size: 79.9 MB (79862860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8693f3e5f1efc476420c74a56b4ae6e52aa764b05858b8d5f93a76768f921165`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:6303fcc2a795475067c2e997ad1fbc4fc8cbe659de17f5bb645eb8a7ea361388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883a0c571ec4c56eeed0422049dbc5bb733bf328e2b33721bdc88396b95bea22`

```dockerfile
```

-	Layers:
	-	`sha256:1683f798602c8deeb13708450b0bb81f224f8377cdb89047792ee892abdfbf52`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 6.7 MB (6679930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8713cc45094f9392aa2eb9054bcbe67c222ca752ee734f957d73048a37f5ebf4`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3-alpine`

```console
$ docker pull telegraf@sha256:3717b10bf4113c2859274ad55e981c311ef11965fa6a011410af56d21b65d486
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
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

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:2f5eae4a0ff69606960b8e8f9f5be4bb43646299bb526c4a752c263a90e8cfcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

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

### `telegraf:alpine` - unknown; unknown

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

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f53fcaccaf6173146605515332406d34fa66fb01a666bda2c673ca2015fd8027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81717398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f348efe2bc8b5e61f77bb6ce3c35b2434b1be11259b83a004fd6c43d4e08552`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:48:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:22 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82240a925d08347c57376e74756c2aba9759436eaabc5dc9d5ac9b69653f8426`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3b3d2d83bc5bc9c9baa538181c5d70a4920b8f3055eeea4dacea9130b4545d`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 2.6 MB (2616530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cfec44b4cb32f088e979fa1274d13265210e5f6107fb438aeba7205c6b8908`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 74.9 MB (74918108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a0e002568cc3d617d80c5fbed5c2d9f6fafec97a934fcf5d6c8a2bdc96d070`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:c6fbc4aacab17a143a3177d9f001729c1d3d29572e32f82c8148586a174b305e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5db4e043f30f69552ecbb512902c0bc4b0a8a494d14924df66e0076921ec21`

```dockerfile
```

-	Layers:
	-	`sha256:50470fd28ca7a74663731e9e1ed3e3968b1811aeaeaa5f4f8d4a9f2c0ceeb30a`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 1.1 MB (1149525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:063bfd09947f1d1387b7dc4c876482f759945e2b69ffc9dd4db630cd0b89dbc4`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:9c3a1231b3eab67d9a54fccc0d5a5fac5161744998c88848fc62266ea0fd7994
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
$ docker pull telegraf@sha256:426583fc1e926c739669ee1afac924dab9d55240bfcb5a66f42290fcfffccd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177746646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fba4fea15ea0bd1d0d4b6015a3ac3aa4b17c5ebff4c17dff725a5abac11ca6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:03:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb5f0d471324a8901e8d05a871dbb4d845462ad17dca68f13b9e44d161535b0`  
		Last Modified: Tue, 11 Aug 2026 18:03:54 GMT  
		Size: 19.3 MB (19284487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da90442d9fa4156358c773c0556f35d57f64c229a428615a57d81b1a360ac692`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba716f91507ed46caacffb5c59b9d166819b54b62d845c1f2f13aa16abc4da3`  
		Last Modified: Tue, 11 Aug 2026 18:03:55 GMT  
		Size: 85.9 MB (85915229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbe4b51bb58011d561bb6f94ad99b18bd0e564d8178fb788c45428d196d302`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:f8f7876be6dbf83d0b78186dd6b6ee37d3ee1abc3f9c938a77e4e0caa5bdaf0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a899cffc3f1a5f169313b48433d43014291afeace2d4e6f060319fbc460d73f6`

```dockerfile
```

-	Layers:
	-	`sha256:784f9c34fd828a4957922f08c25b8895c862fa37a0c5651f8c38eae95017f3bf`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 6.7 MB (6684520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbd58fd80da85f70f1fec5b2f986df123a43ea509aa45e18bbfe84019a2cf0e9`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:606b3a128fd13a946b6732cdfe725b855d349f7b9bee85e03f38419b3c9848ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163971298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b7ade7e6c23a5207891021ab7c5fa87e58685df8809f211873e350bb24dad1`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:05:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:05:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:05:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:05:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:05:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c949dcce839c396b9c787b9ee92aa64491e7bfa688d012146b8d6ae5489303a2`  
		Last Modified: Tue, 11 Aug 2026 18:05:34 GMT  
		Size: 17.9 MB (17949914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce988284365a47fea44961a804c44783564a096ca6d15593a3e2fd020036abb`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1880d8f0941d8c028125d7c256c94dbd260972ff5fb86a94e870156174dc291c`  
		Last Modified: Tue, 11 Aug 2026 18:05:35 GMT  
		Size: 79.9 MB (79862860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8693f3e5f1efc476420c74a56b4ae6e52aa764b05858b8d5f93a76768f921165`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:6303fcc2a795475067c2e997ad1fbc4fc8cbe659de17f5bb645eb8a7ea361388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883a0c571ec4c56eeed0422049dbc5bb733bf328e2b33721bdc88396b95bea22`

```dockerfile
```

-	Layers:
	-	`sha256:1683f798602c8deeb13708450b0bb81f224f8377cdb89047792ee892abdfbf52`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 6.7 MB (6679930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8713cc45094f9392aa2eb9054bcbe67c222ca752ee734f957d73048a37f5ebf4`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:2ed2d5cdc81c82754bccf6b2cfb8cdcd899ecf32d939e220a17e9c68007cb01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166018615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3052849b841eecaa7fb69fbeae10bffdacf9b26ccab1890beac262f867f78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 01:52:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:52:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:52:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8a7a5d579a57055df04b09d73e0cfbe6327100f11e939928d40cb30ecb173c`  
		Last Modified: Wed, 05 Aug 2026 01:53:12 GMT  
		Size: 18.9 MB (18885846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4704e27536e8c153e241f149d4e0e120b336eee72335bb387b4b5824f90f3e7`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c35c63be5da8a1065c84e18774dd418a2f34759631d539c1ab80f292921d3d7`  
		Last Modified: Wed, 05 Aug 2026 01:53:13 GMT  
		Size: 75.1 MB (75131026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5370c5f561af77cbdaf59ab73a55c59b8dcb0de378aaa9231fe5316d8e4d7cda`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:02fe7224a48da51e55b3b959ca197dac85172fc4c7cf6f1f999269dd2a52b151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a398402b56291b33bc20653c0335622e84c1db7625ae7e00511a17cf68b4bf89`

```dockerfile
```

-	Layers:
	-	`sha256:c7fd127b284aae28cd7283b7989e68d63e3cd8702581ee92f2a48024e9e2c043`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 6.7 MB (6687328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba55307681a4d62938eba94e41526f37f760bd7decf07e3fa29ce1282d69446d`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 14.8 KB (14850 bytes)  
		MIME: application/vnd.in-toto+json
