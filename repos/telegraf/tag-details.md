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
$ docker pull telegraf@sha256:716b077c78896cbd251b07b294e5636b37a58dc09b40d8f4ab4d99de1ee25945
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
$ docker pull telegraf@sha256:2e35a05fc6c1cf2fca715b8c24b65c82b41b6de22c2582441fa1c4f9346f8b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172287065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400c69725ef1674f8f36232d51ae99b623522e7a7f6d4a8bcc95ddf44ad80f86`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:39 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:52:44 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 25 Aug 2026 01:52:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:52:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:52:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:52:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:52:44 GMT
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
	-	`sha256:364af9d877c731f337db744beba1ba30071fcfc16be40d70358423fd7d107c5d`  
		Last Modified: Tue, 25 Aug 2026 01:53:05 GMT  
		Size: 18.9 MB (18944568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6376ea5008af3ffb7e8ab4517478aa97cbf1cf878ff8277c12a00ccff6c4a661`  
		Last Modified: Tue, 25 Aug 2026 01:53:04 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ad87a49058184abe3000fa3d2eb2ce7e6e24b886e8b8b1108daf0b26f76a37`  
		Last Modified: Tue, 25 Aug 2026 01:53:06 GMT  
		Size: 80.8 MB (80783191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02d123a40b4365b99630773e327fb09ec70a214e81013f64e6ffe2f790a7e94`  
		Last Modified: Tue, 25 Aug 2026 01:53:04 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:56e1f3334a98529e59c684157a4b0d03dd85755fb825be0e4584bad3778d37fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15317c2e926ba37bb91ffa16de868b1fdf30db4b819fe45dede43e95ee44ceff`

```dockerfile
```

-	Layers:
	-	`sha256:ce06cc1847b92dd8a315e1573a722365af80d9a85d4d04e0a37baaf73705604c`  
		Last Modified: Tue, 25 Aug 2026 01:53:04 GMT  
		Size: 6.7 MB (6672233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f090b0aff7de1fc58515b9c7c5ebcc485b36d9b94ab82aa4e5662de6b96d395`  
		Last Modified: Tue, 25 Aug 2026 01:53:04 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:3adf035127144d3e68a4781fcc3aff53c3851d2583b114c1969f63d1acb1e1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158487778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb05b0512d4b6e486d9cf9364f9b9e237ff5ffda63a2365bc5cd1796bb2a0819`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:36 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 02:50:41 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 25 Aug 2026 02:50:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 02:50:41 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 02:50:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 02:50:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 02:50:41 GMT
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
	-	`sha256:585d9bb05527fd90b351dfb0e984ad98b91a64c8a11f8589cb66521cd3ce9785`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 17.7 MB (17699761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336a18f8b0568be94e05f90ab3422f30f77df4ca2ff02943708e6c21ebe47e01`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ea26b5ff84e8fbaeeb9a80fe46d04565ec84b760b11283bb4b8cf0d6951a24`  
		Last Modified: Tue, 25 Aug 2026 02:51:00 GMT  
		Size: 74.6 MB (74617512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d97c0f3b33eac5d0e6c985d5e71c87e8bcdec7e160e790719f1670ff2f868e`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:e7016c978b8193f67ce9095dac646b6757c32521c2fb5c5820c1796e0d7d076d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cefca480d0fbe17dab4bcacbc4544315a6c8ed31ad0d52850fe673227414cace`

```dockerfile
```

-	Layers:
	-	`sha256:c4f9dfaa224d70a450c6207da290f600c4445b2fe622309eb5b9e7ab77efe970`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 6.7 MB (6666830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3980237a36db720ddba4c53d84658edfdd94c173dba31115869084f0b6ad51d`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:bddf28b99d0ab7d2dcb07c65ce091c3fa5db6a9950e8aa5297a84fd04743a6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163074640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e972ea6630a65b13135143b76dde44f64014503680b4690167117bd5fdea2b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:56:29 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 25 Aug 2026 01:56:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:56:29 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:56:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:56:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:56:29 GMT
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
	-	`sha256:ada95d681fefc13d955be5e6f74c534b9d1f0713b8a21c0052d3f4a8f12a3970`  
		Last Modified: Tue, 25 Aug 2026 01:56:47 GMT  
		Size: 18.9 MB (18885985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cd8dcf8721fc56204000bb1f03e566325ec94bc75f9938bc8d264f6f56f5e2`  
		Last Modified: Tue, 25 Aug 2026 01:56:46 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8a98b2b188b3cc1f45486893f286b8060bae21753f7b39884891e81ab43bf8`  
		Last Modified: Tue, 25 Aug 2026 01:56:48 GMT  
		Size: 72.2 MB (72171047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5d3761a103f682f74898de63aeeb7667e66c351fe3ea06adf3c8266b5a11ec`  
		Last Modified: Tue, 25 Aug 2026 01:56:46 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:0917103fae82b572b706faa7530d2d745a22938928425be2a5e27a82f455f861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6687446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b01df83a85d3033b92fa888235a81faa35e2956a9f637a3a71d081cd144e14`

```dockerfile
```

-	Layers:
	-	`sha256:b0617292d5e8027ccb4c4f396aa838cd33ed3fca4d5db454788079682bfd3fbc`  
		Last Modified: Tue, 25 Aug 2026 01:56:46 GMT  
		Size: 6.7 MB (6672909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d055de341dd0f434adeb414722be67366968a7880884463546c41ad822285172`  
		Last Modified: Tue, 25 Aug 2026 01:56:46 GMT  
		Size: 14.5 KB (14537 bytes)  
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
$ docker pull telegraf@sha256:716b077c78896cbd251b07b294e5636b37a58dc09b40d8f4ab4d99de1ee25945
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
$ docker pull telegraf@sha256:2e35a05fc6c1cf2fca715b8c24b65c82b41b6de22c2582441fa1c4f9346f8b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172287065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400c69725ef1674f8f36232d51ae99b623522e7a7f6d4a8bcc95ddf44ad80f86`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:39 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:52:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:52:44 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 25 Aug 2026 01:52:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:52:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:52:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:52:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:52:44 GMT
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
	-	`sha256:364af9d877c731f337db744beba1ba30071fcfc16be40d70358423fd7d107c5d`  
		Last Modified: Tue, 25 Aug 2026 01:53:05 GMT  
		Size: 18.9 MB (18944568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6376ea5008af3ffb7e8ab4517478aa97cbf1cf878ff8277c12a00ccff6c4a661`  
		Last Modified: Tue, 25 Aug 2026 01:53:04 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ad87a49058184abe3000fa3d2eb2ce7e6e24b886e8b8b1108daf0b26f76a37`  
		Last Modified: Tue, 25 Aug 2026 01:53:06 GMT  
		Size: 80.8 MB (80783191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02d123a40b4365b99630773e327fb09ec70a214e81013f64e6ffe2f790a7e94`  
		Last Modified: Tue, 25 Aug 2026 01:53:04 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:56e1f3334a98529e59c684157a4b0d03dd85755fb825be0e4584bad3778d37fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15317c2e926ba37bb91ffa16de868b1fdf30db4b819fe45dede43e95ee44ceff`

```dockerfile
```

-	Layers:
	-	`sha256:ce06cc1847b92dd8a315e1573a722365af80d9a85d4d04e0a37baaf73705604c`  
		Last Modified: Tue, 25 Aug 2026 01:53:04 GMT  
		Size: 6.7 MB (6672233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f090b0aff7de1fc58515b9c7c5ebcc485b36d9b94ab82aa4e5662de6b96d395`  
		Last Modified: Tue, 25 Aug 2026 01:53:04 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:3adf035127144d3e68a4781fcc3aff53c3851d2583b114c1969f63d1acb1e1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158487778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb05b0512d4b6e486d9cf9364f9b9e237ff5ffda63a2365bc5cd1796bb2a0819`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:36 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 02:50:41 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 25 Aug 2026 02:50:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 02:50:41 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 02:50:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 02:50:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 02:50:41 GMT
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
	-	`sha256:585d9bb05527fd90b351dfb0e984ad98b91a64c8a11f8589cb66521cd3ce9785`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 17.7 MB (17699761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336a18f8b0568be94e05f90ab3422f30f77df4ca2ff02943708e6c21ebe47e01`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ea26b5ff84e8fbaeeb9a80fe46d04565ec84b760b11283bb4b8cf0d6951a24`  
		Last Modified: Tue, 25 Aug 2026 02:51:00 GMT  
		Size: 74.6 MB (74617512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d97c0f3b33eac5d0e6c985d5e71c87e8bcdec7e160e790719f1670ff2f868e`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:e7016c978b8193f67ce9095dac646b6757c32521c2fb5c5820c1796e0d7d076d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cefca480d0fbe17dab4bcacbc4544315a6c8ed31ad0d52850fe673227414cace`

```dockerfile
```

-	Layers:
	-	`sha256:c4f9dfaa224d70a450c6207da290f600c4445b2fe622309eb5b9e7ab77efe970`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 6.7 MB (6666830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3980237a36db720ddba4c53d84658edfdd94c173dba31115869084f0b6ad51d`  
		Last Modified: Tue, 25 Aug 2026 02:50:58 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:bddf28b99d0ab7d2dcb07c65ce091c3fa5db6a9950e8aa5297a84fd04743a6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163074640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e972ea6630a65b13135143b76dde44f64014503680b4690167117bd5fdea2b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:56:29 GMT
ENV TELEGRAF_VERSION=1.37.3
# Tue, 25 Aug 2026 01:56:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 25 Aug 2026 01:56:29 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 25 Aug 2026 01:56:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:56:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:56:29 GMT
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
	-	`sha256:ada95d681fefc13d955be5e6f74c534b9d1f0713b8a21c0052d3f4a8f12a3970`  
		Last Modified: Tue, 25 Aug 2026 01:56:47 GMT  
		Size: 18.9 MB (18885985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cd8dcf8721fc56204000bb1f03e566325ec94bc75f9938bc8d264f6f56f5e2`  
		Last Modified: Tue, 25 Aug 2026 01:56:46 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8a98b2b188b3cc1f45486893f286b8060bae21753f7b39884891e81ab43bf8`  
		Last Modified: Tue, 25 Aug 2026 01:56:48 GMT  
		Size: 72.2 MB (72171047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5d3761a103f682f74898de63aeeb7667e66c351fe3ea06adf3c8266b5a11ec`  
		Last Modified: Tue, 25 Aug 2026 01:56:46 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:0917103fae82b572b706faa7530d2d745a22938928425be2a5e27a82f455f861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6687446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b01df83a85d3033b92fa888235a81faa35e2956a9f637a3a71d081cd144e14`

```dockerfile
```

-	Layers:
	-	`sha256:b0617292d5e8027ccb4c4f396aa838cd33ed3fca4d5db454788079682bfd3fbc`  
		Last Modified: Tue, 25 Aug 2026 01:56:46 GMT  
		Size: 6.7 MB (6672909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d055de341dd0f434adeb414722be67366968a7880884463546c41ad822285172`  
		Last Modified: Tue, 25 Aug 2026 01:56:46 GMT  
		Size: 14.5 KB (14537 bytes)  
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

### `telegraf:latest` - linux; amd64

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

### `telegraf:latest` - unknown; unknown

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

### `telegraf:latest` - linux; arm variant v7

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

### `telegraf:latest` - unknown; unknown

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

### `telegraf:latest` - linux; arm64 variant v8

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

### `telegraf:latest` - unknown; unknown

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
