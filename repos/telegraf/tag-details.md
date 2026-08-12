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
$ docker pull telegraf@sha256:93e19e812b9ed7ab907532cf44eb1b89859c8ce744c5a6af9968b977a5570f14
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
$ docker pull telegraf@sha256:f335bb82282e0468af67d44d056f71290d346e620df2e1e1b384e7f06fb5f960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163058786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acccfa74fef14821e174f24716495ea2ef6c231a6eb0e2cfcfd53ccde2234d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:10:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:10:24 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 19:10:28 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 19:10:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 19:10:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:10:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 19:10:28 GMT
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
	-	`sha256:1ddf82999637e2b1b725e9c61bd98093627eee1a6e26c318aca4e83e0eaa7480`  
		Last Modified: Tue, 11 Aug 2026 19:10:46 GMT  
		Size: 18.9 MB (18885998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d1e28445949ae7bc6072d8e9ce28af8758a80ea1f9b0361ad2b5a58b6081f9`  
		Last Modified: Tue, 11 Aug 2026 19:10:45 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4786782f592d02fa81dcb9f04c708c2b08f2d421bbc305c5914b2b34c4a23bca`  
		Last Modified: Tue, 11 Aug 2026 19:10:48 GMT  
		Size: 72.2 MB (72171025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f52000e58bcb1fdf6833cf3652cdd404adf24e5247385ab9499f299798a9357`  
		Last Modified: Tue, 11 Aug 2026 19:10:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:210ba8afc06f23bf88e9ddc1e04ebe6d52ffcd05d922d1f05156ea5345b28723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6682242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d525f4aad8e85a8ff56009148c7dac12ff164169bf0e2778b83cafb60bc73c33`

```dockerfile
```

-	Layers:
	-	`sha256:c0b7f57010a82c1c88ac6b6d74bc5f83b890fd1b789685b6efd874ce1b114a3f`  
		Last Modified: Tue, 11 Aug 2026 19:10:45 GMT  
		Size: 6.7 MB (6667706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:412398f88d1c4352a26021d93a56945aeb87d3a90d2b381c7978504500c4c163`  
		Last Modified: Tue, 11 Aug 2026 19:10:45 GMT  
		Size: 14.5 KB (14536 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37-alpine`

```console
$ docker pull telegraf@sha256:495e1a87940f6d48b11a6585579a3f18fdb042e4802aef12ea5606aa54805b9f
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
$ docker pull telegraf@sha256:40ccc55a1cfe4556f860dd0a6163d6630aef7f98776048fbb6615a41a0af08ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78657744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2807502d12a1ad73294cde289ef0459a86c9fea6d3b067f1a88ab3906693c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 19:10:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 19:10:42 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 19:10:49 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 19:10:49 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 19:10:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:10:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:10:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 19:10:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce5ec2fd3ef8e0769d375daf9d34664d98e8fb2f7bc3ef4cfe1fa17916168d5`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1377f1435e7f94ac4c8e42c78dc28d8f5a03dff65d8aa3333938c1c1551b99`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 2.6 MB (2577812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6dca385121bee8db29fcc910c3fce73efb55cc30b9f7f89a5e6f5821a00d1b`  
		Last Modified: Tue, 11 Aug 2026 19:11:04 GMT  
		Size: 72.0 MB (71958531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7534961b63f1ac185d8accb4e5b06f8c002fdff1f45f8645e2fc851011fe38fa`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:b55408664e0e1c7aa7680a958d22e39dd0d9287ba1c90d003c1545caefdd7183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1146775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0315bfaad88871b488b01cc13034ff81c83077606fd80677085171dba6318e2b`

```dockerfile
```

-	Layers:
	-	`sha256:2e72e33afdd91f07008d80a1b3c587a1cd0e703b0784cfdabbbedcb0150606cb`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 1.1 MB (1131216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c54fe6a12d78d25a1f64d5a8116b327e2ef1f92d06136896e06f7c4129e0b5c1`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37.3`

```console
$ docker pull telegraf@sha256:93e19e812b9ed7ab907532cf44eb1b89859c8ce744c5a6af9968b977a5570f14
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
$ docker pull telegraf@sha256:f335bb82282e0468af67d44d056f71290d346e620df2e1e1b384e7f06fb5f960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163058786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acccfa74fef14821e174f24716495ea2ef6c231a6eb0e2cfcfd53ccde2234d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:10:23 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:10:24 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 19:10:28 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 19:10:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 19:10:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:10:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 19:10:28 GMT
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
	-	`sha256:1ddf82999637e2b1b725e9c61bd98093627eee1a6e26c318aca4e83e0eaa7480`  
		Last Modified: Tue, 11 Aug 2026 19:10:46 GMT  
		Size: 18.9 MB (18885998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d1e28445949ae7bc6072d8e9ce28af8758a80ea1f9b0361ad2b5a58b6081f9`  
		Last Modified: Tue, 11 Aug 2026 19:10:45 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4786782f592d02fa81dcb9f04c708c2b08f2d421bbc305c5914b2b34c4a23bca`  
		Last Modified: Tue, 11 Aug 2026 19:10:48 GMT  
		Size: 72.2 MB (72171025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f52000e58bcb1fdf6833cf3652cdd404adf24e5247385ab9499f299798a9357`  
		Last Modified: Tue, 11 Aug 2026 19:10:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:210ba8afc06f23bf88e9ddc1e04ebe6d52ffcd05d922d1f05156ea5345b28723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6682242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d525f4aad8e85a8ff56009148c7dac12ff164169bf0e2778b83cafb60bc73c33`

```dockerfile
```

-	Layers:
	-	`sha256:c0b7f57010a82c1c88ac6b6d74bc5f83b890fd1b789685b6efd874ce1b114a3f`  
		Last Modified: Tue, 11 Aug 2026 19:10:45 GMT  
		Size: 6.7 MB (6667706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:412398f88d1c4352a26021d93a56945aeb87d3a90d2b381c7978504500c4c163`  
		Last Modified: Tue, 11 Aug 2026 19:10:45 GMT  
		Size: 14.5 KB (14536 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.37.3-alpine`

```console
$ docker pull telegraf@sha256:495e1a87940f6d48b11a6585579a3f18fdb042e4802aef12ea5606aa54805b9f
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
$ docker pull telegraf@sha256:40ccc55a1cfe4556f860dd0a6163d6630aef7f98776048fbb6615a41a0af08ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78657744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2807502d12a1ad73294cde289ef0459a86c9fea6d3b067f1a88ab3906693c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 19:10:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 11 Aug 2026 19:10:42 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Tue, 11 Aug 2026 19:10:49 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 11 Aug 2026 19:10:49 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 11 Aug 2026 19:10:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:10:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:10:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Aug 2026 19:10:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce5ec2fd3ef8e0769d375daf9d34664d98e8fb2f7bc3ef4cfe1fa17916168d5`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1377f1435e7f94ac4c8e42c78dc28d8f5a03dff65d8aa3333938c1c1551b99`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 2.6 MB (2577812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6dca385121bee8db29fcc910c3fce73efb55cc30b9f7f89a5e6f5821a00d1b`  
		Last Modified: Tue, 11 Aug 2026 19:11:04 GMT  
		Size: 72.0 MB (71958531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7534961b63f1ac185d8accb4e5b06f8c002fdff1f45f8645e2fc851011fe38fa`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:b55408664e0e1c7aa7680a958d22e39dd0d9287ba1c90d003c1545caefdd7183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1146775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0315bfaad88871b488b01cc13034ff81c83077606fd80677085171dba6318e2b`

```dockerfile
```

-	Layers:
	-	`sha256:2e72e33afdd91f07008d80a1b3c587a1cd0e703b0784cfdabbbedcb0150606cb`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 1.1 MB (1131216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c54fe6a12d78d25a1f64d5a8116b327e2ef1f92d06136896e06f7c4129e0b5c1`  
		Last Modified: Tue, 11 Aug 2026 19:11:02 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:b40874b172509c152fcd33304af53176cc6d48c0cf9d4329567bb46cff617557
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
$ docker pull telegraf@sha256:6e39ee5381abaccb53969e48f5119487a8581ba10120c66dfc3b39b1586792f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165364538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defa4dd7da5cca1562d4786305343caf3271923bdd8ba1a51bb75b7c0a734574`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:10:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:10:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 19:11:03 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 19:11:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
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
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3128e126684637c52ffafb9d58ce0c8bccfe037465f5474bf5123a995f007e87`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 18.9 MB (18886003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd600afc72f76a21d9638d3c428bda798b8da903fd01b59a59bb50fadd2ef655`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d220b96d04ffd4b4a34ea5651af447c9569d214d84e6d6b8f6eae6f90af255db`  
		Last Modified: Tue, 11 Aug 2026 19:11:23 GMT  
		Size: 74.5 MB (74476777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cf8126ac06954e562764993627677a46f5066fce4d499317646cde8415299f`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:4f243410638161ece802b1e769caabc26e515c5b9ed993009cd0cc51d25c22ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6689548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e34ca0e57deaea830ee6a8db9b4f88594d5523b0b3ac4b4522c4efd6c6c39ad`

```dockerfile
```

-	Layers:
	-	`sha256:329c34e051829e38b41d19b35e9055476c284881f3b0ee59f481795f1ddba39a`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 6.7 MB (6675011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c664e7c9e3c023bc3dd6e22f66f56b2d9194f1fecd09b2185214a2a8759f4601`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 14.5 KB (14537 bytes)  
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
$ docker pull telegraf@sha256:b40874b172509c152fcd33304af53176cc6d48c0cf9d4329567bb46cff617557
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
$ docker pull telegraf@sha256:6e39ee5381abaccb53969e48f5119487a8581ba10120c66dfc3b39b1586792f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165364538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defa4dd7da5cca1562d4786305343caf3271923bdd8ba1a51bb75b7c0a734574`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:10:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:10:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 19:11:03 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 11 Aug 2026 19:11:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
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
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3128e126684637c52ffafb9d58ce0c8bccfe037465f5474bf5123a995f007e87`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 18.9 MB (18886003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd600afc72f76a21d9638d3c428bda798b8da903fd01b59a59bb50fadd2ef655`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d220b96d04ffd4b4a34ea5651af447c9569d214d84e6d6b8f6eae6f90af255db`  
		Last Modified: Tue, 11 Aug 2026 19:11:23 GMT  
		Size: 74.5 MB (74476777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cf8126ac06954e562764993627677a46f5066fce4d499317646cde8415299f`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:4f243410638161ece802b1e769caabc26e515c5b9ed993009cd0cc51d25c22ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6689548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e34ca0e57deaea830ee6a8db9b4f88594d5523b0b3ac4b4522c4efd6c6c39ad`

```dockerfile
```

-	Layers:
	-	`sha256:329c34e051829e38b41d19b35e9055476c284881f3b0ee59f481795f1ddba39a`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 6.7 MB (6675011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c664e7c9e3c023bc3dd6e22f66f56b2d9194f1fecd09b2185214a2a8759f4601`  
		Last Modified: Tue, 11 Aug 2026 19:11:21 GMT  
		Size: 14.5 KB (14537 bytes)  
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
$ docker pull telegraf@sha256:b5b8291d62bf7ccc222bdacfd7229b6cc7227f1d07574ca4eb0a872e5a8f83cd
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
$ docker pull telegraf@sha256:a4d56e4f333ff39686ca794dfa9a07d013cc3aa667cbe559d890c1bd30a12d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167950130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de69c0475bd27dbc8864aa187f0d2ebd199639aeb2b7c16a2fa57fd58363397`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:11:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:11:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 19:11:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:11:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 19:11:14 GMT
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
	-	`sha256:fe60d587373625934f8c81d3457b565ae536a3fdb76f69c2fe405c499af44220`  
		Last Modified: Tue, 11 Aug 2026 19:11:33 GMT  
		Size: 19.2 MB (19194746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23957289668cf74c6c980bac108309f81eddacd3c0698a1f80ecc5308fd2ff5`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80868084a62a81bf32af63b05e38f50960c2b631ae0ae3b50aa56ce1e4f25ba1`  
		Last Modified: Tue, 11 Aug 2026 19:11:35 GMT  
		Size: 76.8 MB (76753637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa78335ddb58325db7a5f120f1b8f50e2eed4636afad0a78ed84b7b4991d9a2`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:ba021e7961c5db1aed67352afff2cd8edc7b2eae849904e901fc2e0c5ae4b4e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4570c658a0fffaa63d58d021def189c974aee61af977cc12e6b50fe0d07336d8`

```dockerfile
```

-	Layers:
	-	`sha256:149b9fa1cb574360b196a933940e74ef2d867ff6492100fe3b46b3249c0b32af`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 6.7 MB (6685208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da9cb36e5e93ef466b6a7f314d5d5837ab3904c76f6269b2416a914ca615e4b7`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
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
$ docker pull telegraf@sha256:b5b8291d62bf7ccc222bdacfd7229b6cc7227f1d07574ca4eb0a872e5a8f83cd
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

### `telegraf:1.39.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a4d56e4f333ff39686ca794dfa9a07d013cc3aa667cbe559d890c1bd30a12d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167950130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de69c0475bd27dbc8864aa187f0d2ebd199639aeb2b7c16a2fa57fd58363397`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:11:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:11:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 19:11:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:11:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 19:11:14 GMT
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
	-	`sha256:fe60d587373625934f8c81d3457b565ae536a3fdb76f69c2fe405c499af44220`  
		Last Modified: Tue, 11 Aug 2026 19:11:33 GMT  
		Size: 19.2 MB (19194746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23957289668cf74c6c980bac108309f81eddacd3c0698a1f80ecc5308fd2ff5`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80868084a62a81bf32af63b05e38f50960c2b631ae0ae3b50aa56ce1e4f25ba1`  
		Last Modified: Tue, 11 Aug 2026 19:11:35 GMT  
		Size: 76.8 MB (76753637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa78335ddb58325db7a5f120f1b8f50e2eed4636afad0a78ed84b7b4991d9a2`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:ba021e7961c5db1aed67352afff2cd8edc7b2eae849904e901fc2e0c5ae4b4e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4570c658a0fffaa63d58d021def189c974aee61af977cc12e6b50fe0d07336d8`

```dockerfile
```

-	Layers:
	-	`sha256:149b9fa1cb574360b196a933940e74ef2d867ff6492100fe3b46b3249c0b32af`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 6.7 MB (6685208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da9cb36e5e93ef466b6a7f314d5d5837ab3904c76f6269b2416a914ca615e4b7`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
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

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:45b80cfd354299c5c1c38e472922e0e2f0a8e8ac2b614531a1f634ab06e84297
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

### `telegraf:alpine` - unknown; unknown

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

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:b5b8291d62bf7ccc222bdacfd7229b6cc7227f1d07574ca4eb0a872e5a8f83cd
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
$ docker pull telegraf@sha256:a4d56e4f333ff39686ca794dfa9a07d013cc3aa667cbe559d890c1bd30a12d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167950130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de69c0475bd27dbc8864aa187f0d2ebd199639aeb2b7c16a2fa57fd58363397`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:11:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:11:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 19:11:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 19:11:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:11:14 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 19:11:14 GMT
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
	-	`sha256:fe60d587373625934f8c81d3457b565ae536a3fdb76f69c2fe405c499af44220`  
		Last Modified: Tue, 11 Aug 2026 19:11:33 GMT  
		Size: 19.2 MB (19194746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23957289668cf74c6c980bac108309f81eddacd3c0698a1f80ecc5308fd2ff5`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80868084a62a81bf32af63b05e38f50960c2b631ae0ae3b50aa56ce1e4f25ba1`  
		Last Modified: Tue, 11 Aug 2026 19:11:35 GMT  
		Size: 76.8 MB (76753637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa78335ddb58325db7a5f120f1b8f50e2eed4636afad0a78ed84b7b4991d9a2`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:ba021e7961c5db1aed67352afff2cd8edc7b2eae849904e901fc2e0c5ae4b4e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4570c658a0fffaa63d58d021def189c974aee61af977cc12e6b50fe0d07336d8`

```dockerfile
```

-	Layers:
	-	`sha256:149b9fa1cb574360b196a933940e74ef2d867ff6492100fe3b46b3249c0b32af`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 6.7 MB (6685208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da9cb36e5e93ef466b6a7f314d5d5837ab3904c76f6269b2416a914ca615e4b7`  
		Last Modified: Tue, 11 Aug 2026 19:11:32 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
