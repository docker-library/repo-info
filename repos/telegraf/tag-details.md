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
-	[`telegraf:1.39.2`](#telegraf1392)
-	[`telegraf:1.39.2-alpine`](#telegraf1392-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.37`

```console
$ docker pull telegraf@sha256:37fba93322115a627687554ab11b129f22877acf8288986e03d5269777cd07ed
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
$ docker pull telegraf@sha256:a59ada33bfb730504753abb3663f88430ea013ee6c0ef53af5800c1a1b4e373e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172274543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d960bba2a8b40cda2efaa78bce85a862a2781c0546d33223678eabef2be81e13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:00 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:46:04 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 05 Aug 2026 01:46:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:46:04 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:46:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:46:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:46:04 GMT
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
	-	`sha256:44b23e7716069c4a5146a0b061aaca3648f26bf0814f20070baa9090e9200a4d`  
		Last Modified: Wed, 05 Aug 2026 01:46:25 GMT  
		Size: 18.9 MB (18944450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e03f35a62f4f0e90ca52ebfbbc05bce812a3f74ff9f8ee589a42c7dc29fa813`  
		Last Modified: Wed, 05 Aug 2026 01:46:24 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccb21cd3141d3d9e4d5341a4c2761c0176d3d4cb95f89f33d5ac6b747cf990b`  
		Last Modified: Wed, 05 Aug 2026 01:46:27 GMT  
		Size: 80.8 MB (80783185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fde9bce2146d4f11e257dfde0c4faffbdf0e03e2db9b539ccbb90f489d07001`  
		Last Modified: Wed, 05 Aug 2026 01:46:24 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:e4f28fd7199bd98f57d450539e63c33c7cd2117f1d6b53b84a127741cbe6d532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fcd19ccb7d96181799587c46fad7052af09d860c55edf1ac65fa350345294c1`

```dockerfile
```

-	Layers:
	-	`sha256:04541835a90bcfebc26dd777c595a49a74d78658dea2f670905437c2a4d767a9`  
		Last Modified: Wed, 05 Aug 2026 01:46:24 GMT  
		Size: 6.7 MB (6667030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0879600b040524da9f5ffd673d943d3d8639016eefee79668bfbc7f7e09b17a2`  
		Last Modified: Wed, 05 Aug 2026 01:46:24 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:eda1a2544ea7e8eb7c6fec9d2f9ebaf5b4d14c902dc712cfce1517fa1d570770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158475701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a70690f9fd72cf6692167eb732c6cde95e54a1b4a9d5cf990b18025c996372`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 02:54:31 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 05 Aug 2026 02:54:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 02:54:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 02:54:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 02:54:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 02:54:31 GMT
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
	-	`sha256:23ba46975bfd1794c573261ce61ed3d6b52c948ae06b1754d00ccd806f6b80b8`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 17.7 MB (17699749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcdf9d3549e317233432e3f3932617603a8f27a0160e7a13da5551f900dfe0bb`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 5.1 KB (5067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec8d6a324003e056cb778e54d4ffef10aabcc8e97eda35cf0bf11e09605e493`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 74.6 MB (74617448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c8e8c0f4c8ad107502d9f360714ea5859cfb3b1eb2659f796a31cecb1f60b7`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37` - unknown; unknown

```console
$ docker pull telegraf@sha256:097149fa54baa60f08f28e25cb47f012042b870330b5328f7a67a81688be7998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f4d2e6103136bcd59ade152aa86a920489198f37a10c27212d13bf04b915c8`

```dockerfile
```

-	Layers:
	-	`sha256:5c1bd6aa596238f2fdf26066ece953245c37f26838fe924315078707a271520d`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 6.7 MB (6661627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00ad81f4216ab572929f5532b7c1b8f8b7934b4b3d21f2f1e909d99e419843e3`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
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
$ docker pull telegraf@sha256:2bbb518d69f0544eaca2a54322908c2b5800f5ba094a12f152676935afb5ce8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a611cb34739d2b4944daa6255a16a37ef417c0c3a8670c4396b6453142b039ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86877437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781c36361ea2743eeb299620557502c98eebed9a491e1d1f7e8ed29eda9f78f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:08:45 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:08:45 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
ENV TELEGRAF_VERSION=1.37.3
# Mon, 22 Jun 2026 20:08:52 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:08:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:08:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:194bf597cb6f9f4e4ac14e4ecf923d10e5f506b6e56f7d36244ae5aa7b4137fb`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc140e323b3c5cdd121b5bb99e0cbeb114b2117b30604c681f930de579c8dec6`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 2.5 MB (2511659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3a3b505e51075e6e4ace592478ffa3d4bb1306ca571430a868d519ee70a85`  
		Last Modified: Mon, 22 Jun 2026 20:09:10 GMT  
		Size: 80.6 MB (80577284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a466e97127874af7e9e330b007efc7af4b2d5de51bdf5504bf6edf3000fc0a73`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4bd9ca2af5efc00299c2d45a14020605d7d285e089ef5dc25ddcf5ebc47abbb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1150507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929ea6ff1a7b9b094747d55d3d207695de2b76a7151c71574b1de382f608299f`

```dockerfile
```

-	Layers:
	-	`sha256:4d7effe956778f7847bccdfb2116149fc770a87375a1e6ce4d5c63dd263bed69`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 1.1 MB (1135589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c831f4e59e5363ebfabb7f9bcbb224e7615234783f6c66486165309d8a46664d`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 14.9 KB (14918 bytes)  
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
$ docker pull telegraf@sha256:37fba93322115a627687554ab11b129f22877acf8288986e03d5269777cd07ed
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
$ docker pull telegraf@sha256:a59ada33bfb730504753abb3663f88430ea013ee6c0ef53af5800c1a1b4e373e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172274543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d960bba2a8b40cda2efaa78bce85a862a2781c0546d33223678eabef2be81e13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:00 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:46:04 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 05 Aug 2026 01:46:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:46:04 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:46:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:46:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:46:04 GMT
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
	-	`sha256:44b23e7716069c4a5146a0b061aaca3648f26bf0814f20070baa9090e9200a4d`  
		Last Modified: Wed, 05 Aug 2026 01:46:25 GMT  
		Size: 18.9 MB (18944450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e03f35a62f4f0e90ca52ebfbbc05bce812a3f74ff9f8ee589a42c7dc29fa813`  
		Last Modified: Wed, 05 Aug 2026 01:46:24 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccb21cd3141d3d9e4d5341a4c2761c0176d3d4cb95f89f33d5ac6b747cf990b`  
		Last Modified: Wed, 05 Aug 2026 01:46:27 GMT  
		Size: 80.8 MB (80783185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fde9bce2146d4f11e257dfde0c4faffbdf0e03e2db9b539ccbb90f489d07001`  
		Last Modified: Wed, 05 Aug 2026 01:46:24 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:e4f28fd7199bd98f57d450539e63c33c7cd2117f1d6b53b84a127741cbe6d532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6681457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fcd19ccb7d96181799587c46fad7052af09d860c55edf1ac65fa350345294c1`

```dockerfile
```

-	Layers:
	-	`sha256:04541835a90bcfebc26dd777c595a49a74d78658dea2f670905437c2a4d767a9`  
		Last Modified: Wed, 05 Aug 2026 01:46:24 GMT  
		Size: 6.7 MB (6667030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0879600b040524da9f5ffd673d943d3d8639016eefee79668bfbc7f7e09b17a2`  
		Last Modified: Wed, 05 Aug 2026 01:46:24 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.37.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:eda1a2544ea7e8eb7c6fec9d2f9ebaf5b4d14c902dc712cfce1517fa1d570770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158475701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a70690f9fd72cf6692167eb732c6cde95e54a1b4a9d5cf990b18025c996372`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 02:54:31 GMT
ENV TELEGRAF_VERSION=1.37.3
# Wed, 05 Aug 2026 02:54:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 02:54:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 02:54:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 02:54:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 02:54:31 GMT
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
	-	`sha256:23ba46975bfd1794c573261ce61ed3d6b52c948ae06b1754d00ccd806f6b80b8`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 17.7 MB (17699749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcdf9d3549e317233432e3f3932617603a8f27a0160e7a13da5551f900dfe0bb`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 5.1 KB (5067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec8d6a324003e056cb778e54d4ffef10aabcc8e97eda35cf0bf11e09605e493`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 74.6 MB (74617448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c8e8c0f4c8ad107502d9f360714ea5859cfb3b1eb2659f796a31cecb1f60b7`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:097149fa54baa60f08f28e25cb47f012042b870330b5328f7a67a81688be7998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f4d2e6103136bcd59ade152aa86a920489198f37a10c27212d13bf04b915c8`

```dockerfile
```

-	Layers:
	-	`sha256:5c1bd6aa596238f2fdf26066ece953245c37f26838fe924315078707a271520d`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 6.7 MB (6661627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00ad81f4216ab572929f5532b7c1b8f8b7934b4b3d21f2f1e909d99e419843e3`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
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
$ docker pull telegraf@sha256:2bbb518d69f0544eaca2a54322908c2b5800f5ba094a12f152676935afb5ce8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.37.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a611cb34739d2b4944daa6255a16a37ef417c0c3a8670c4396b6453142b039ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86877437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781c36361ea2743eeb299620557502c98eebed9a491e1d1f7e8ed29eda9f78f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:08:45 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:08:45 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
ENV TELEGRAF_VERSION=1.37.3
# Mon, 22 Jun 2026 20:08:52 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:08:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:08:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:08:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:194bf597cb6f9f4e4ac14e4ecf923d10e5f506b6e56f7d36244ae5aa7b4137fb`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc140e323b3c5cdd121b5bb99e0cbeb114b2117b30604c681f930de579c8dec6`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 2.5 MB (2511659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3a3b505e51075e6e4ace592478ffa3d4bb1306ca571430a868d519ee70a85`  
		Last Modified: Mon, 22 Jun 2026 20:09:10 GMT  
		Size: 80.6 MB (80577284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a466e97127874af7e9e330b007efc7af4b2d5de51bdf5504bf6edf3000fc0a73`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.37.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4bd9ca2af5efc00299c2d45a14020605d7d285e089ef5dc25ddcf5ebc47abbb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1150507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929ea6ff1a7b9b094747d55d3d207695de2b76a7151c71574b1de382f608299f`

```dockerfile
```

-	Layers:
	-	`sha256:4d7effe956778f7847bccdfb2116149fc770a87375a1e6ce4d5c63dd263bed69`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 1.1 MB (1135589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c831f4e59e5363ebfabb7f9bcbb224e7615234783f6c66486165309d8a46664d`  
		Last Modified: Mon, 22 Jun 2026 20:09:08 GMT  
		Size: 14.9 KB (14918 bytes)  
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
$ docker pull telegraf@sha256:3d028af48e5c1a1f8b554ab4730a3522d7f5b5464521f56a834e4d4fbc4e0746
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
$ docker pull telegraf@sha256:e8ce36bd66baf00c79c8b96a605e0a6578df1a63aa7331f70fb144684ef991e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175002536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7980ed0d14bea8f30581fce7303f994298559a28e452fd5af1d3f547606e17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:46:10 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 05 Aug 2026 01:46:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:46:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:46:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:46:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:46:10 GMT
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
	-	`sha256:19edd07a8b4679bb721aad20c46082f620dab2e2d39ec3a19e5075f6b187e085`  
		Last Modified: Wed, 05 Aug 2026 01:46:29 GMT  
		Size: 18.9 MB (18944530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d31a93bb1bb57afd95f01bee9f99e6815d922fcfe8325cec1bbd8250652404`  
		Last Modified: Wed, 05 Aug 2026 01:46:28 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16af258ab6a40ff995b13947a1d56f274458750942ab0f813a320a637c74c84e`  
		Last Modified: Wed, 05 Aug 2026 01:46:31 GMT  
		Size: 83.5 MB (83511082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7e44750122f5bcf133e27794e8a223e3e9eb007e3d3d93a7b584a46136cb7`  
		Last Modified: Wed, 05 Aug 2026 01:46:29 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:657d5c8bc9e1037291674c24129a1fa8c2dc5404a9993a21e4138708fb64898b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3597ee5da8aebf52c4ad47a8c8838d2557e5339d8ef81bc11195613af4f022`

```dockerfile
```

-	Layers:
	-	`sha256:34cc7f710df03a78b7f1efb6ecaa1e9cce257d348a1b4f934fc583994cb44baa`  
		Last Modified: Wed, 05 Aug 2026 01:46:29 GMT  
		Size: 6.7 MB (6674335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb7880ca9f8d62129f3362e5d37e04175d0a7eb5f95732d9dc4a7b6ee5ac4a3a`  
		Last Modified: Wed, 05 Aug 2026 01:46:28 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:57e918eaad8fcddb507498682d6cb8a08c833f1bab24837c28e6a1088e3a15ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161286054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348328821cd1d4c48aa8e5c0e5e523966874bcee3f620833772f09d1418be6b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 02:54:42 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 05 Aug 2026 02:54:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 02:54:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 02:54:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 02:54:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 02:54:42 GMT
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
	-	`sha256:48e910414c56f60ec3f876f96aa2237078cd3af707fea0e6714c04b91b4f1fa7`  
		Last Modified: Wed, 05 Aug 2026 02:55:02 GMT  
		Size: 17.7 MB (17699628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03518843791638dd5a3cca4a5b4f3c8976094a19d89f378a081b23b7e05e351b`  
		Last Modified: Wed, 05 Aug 2026 02:55:01 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d9cb8e2eb151c9be497ec118ab63ccd2def3d4c4d898ff145a35bb6264f4d9`  
		Last Modified: Wed, 05 Aug 2026 02:55:04 GMT  
		Size: 77.4 MB (77427935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b042f640f63bb977f1f48e82535ef2b9bdd57d57acb98ab5a9793a60b9c0fbe2`  
		Last Modified: Wed, 05 Aug 2026 02:55:01 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:e31c8ee4448214fbaa4ba7ac0cf74ef1bd48c180c00afca938f05cc733718ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20a383071ce6fcdb267f4458d1390b36d9ccc391057373951134e017d7779a5`

```dockerfile
```

-	Layers:
	-	`sha256:b3444b6f00c668b2c0af19169c3c9bfaee64067634e5bd8947235ac62a515235`  
		Last Modified: Wed, 05 Aug 2026 02:55:02 GMT  
		Size: 6.7 MB (6668932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae4262d844bfc3d270b94523e59def6030b69a0086b1d9331cbb2066e23c86c6`  
		Last Modified: Wed, 05 Aug 2026 02:55:01 GMT  
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
$ docker pull telegraf@sha256:195e52e7d20d068fb8b9c39819faeb8e21cdbad8f3c09fa63a11f56246357e6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:e714eb35acf3e70a6c5c0395873efb12938755e4eb05083598e733b7580b868a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89713960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c544a94ed8d187df1edeaff3534091f47ed584f404e0c5504ee8968e04e4f63d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:08:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:08:54 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
ENV TELEGRAF_VERSION=1.38.4
# Mon, 22 Jun 2026 20:09:00 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:09:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:09:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fc2418181e2eec37d366a16fdf647689738a6020b7a9aa004befedaebdf330`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3001d3f012409e7632fda470c52eff60f5aa560f1ea5367f93dfc06532c1053`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 2.6 MB (2568205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1aa8791fc292f7d715a4ec73e28141e5fdce58d6d0acc7866acae05116d1b36`  
		Last Modified: Mon, 22 Jun 2026 20:09:18 GMT  
		Size: 83.3 MB (83300435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01abc246ffe1478dcf3a2bd1812fc4e8949f57c9ff2249fecbdc8c816cdec3af`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:673e2db49e3dd88251e19cbc6e90c71f72b432f70de8f58e326ae44345a1a123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d2a80d8197aeec533c3c498c604a652d379d56145d0e382ea40ba095833f9a`

```dockerfile
```

-	Layers:
	-	`sha256:b8d6c72ba4ffd10a10267f5086eb16853021305ea507556e5a8b955280d6c14e`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 1.1 MB (1142231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebcc7662e79e84caec4978dd6b0e238196da14464bbfa781ca7e3019280ebddc`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 14.9 KB (14918 bytes)  
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
$ docker pull telegraf@sha256:3d028af48e5c1a1f8b554ab4730a3522d7f5b5464521f56a834e4d4fbc4e0746
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
$ docker pull telegraf@sha256:e8ce36bd66baf00c79c8b96a605e0a6578df1a63aa7331f70fb144684ef991e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175002536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7980ed0d14bea8f30581fce7303f994298559a28e452fd5af1d3f547606e17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:46:10 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 05 Aug 2026 01:46:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:46:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:46:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:46:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:46:10 GMT
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
	-	`sha256:19edd07a8b4679bb721aad20c46082f620dab2e2d39ec3a19e5075f6b187e085`  
		Last Modified: Wed, 05 Aug 2026 01:46:29 GMT  
		Size: 18.9 MB (18944530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d31a93bb1bb57afd95f01bee9f99e6815d922fcfe8325cec1bbd8250652404`  
		Last Modified: Wed, 05 Aug 2026 01:46:28 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16af258ab6a40ff995b13947a1d56f274458750942ab0f813a320a637c74c84e`  
		Last Modified: Wed, 05 Aug 2026 01:46:31 GMT  
		Size: 83.5 MB (83511082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7e44750122f5bcf133e27794e8a223e3e9eb007e3d3d93a7b584a46136cb7`  
		Last Modified: Wed, 05 Aug 2026 01:46:29 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:657d5c8bc9e1037291674c24129a1fa8c2dc5404a9993a21e4138708fb64898b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3597ee5da8aebf52c4ad47a8c8838d2557e5339d8ef81bc11195613af4f022`

```dockerfile
```

-	Layers:
	-	`sha256:34cc7f710df03a78b7f1efb6ecaa1e9cce257d348a1b4f934fc583994cb44baa`  
		Last Modified: Wed, 05 Aug 2026 01:46:29 GMT  
		Size: 6.7 MB (6674335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb7880ca9f8d62129f3362e5d37e04175d0a7eb5f95732d9dc4a7b6ee5ac4a3a`  
		Last Modified: Wed, 05 Aug 2026 01:46:28 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:57e918eaad8fcddb507498682d6cb8a08c833f1bab24837c28e6a1088e3a15ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161286054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348328821cd1d4c48aa8e5c0e5e523966874bcee3f620833772f09d1418be6b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 02:54:42 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 05 Aug 2026 02:54:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 02:54:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 02:54:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 02:54:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 02:54:42 GMT
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
	-	`sha256:48e910414c56f60ec3f876f96aa2237078cd3af707fea0e6714c04b91b4f1fa7`  
		Last Modified: Wed, 05 Aug 2026 02:55:02 GMT  
		Size: 17.7 MB (17699628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03518843791638dd5a3cca4a5b4f3c8976094a19d89f378a081b23b7e05e351b`  
		Last Modified: Wed, 05 Aug 2026 02:55:01 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d9cb8e2eb151c9be497ec118ab63ccd2def3d4c4d898ff145a35bb6264f4d9`  
		Last Modified: Wed, 05 Aug 2026 02:55:04 GMT  
		Size: 77.4 MB (77427935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b042f640f63bb977f1f48e82535ef2b9bdd57d57acb98ab5a9793a60b9c0fbe2`  
		Last Modified: Wed, 05 Aug 2026 02:55:01 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:e31c8ee4448214fbaa4ba7ac0cf74ef1bd48c180c00afca938f05cc733718ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20a383071ce6fcdb267f4458d1390b36d9ccc391057373951134e017d7779a5`

```dockerfile
```

-	Layers:
	-	`sha256:b3444b6f00c668b2c0af19169c3c9bfaee64067634e5bd8947235ac62a515235`  
		Last Modified: Wed, 05 Aug 2026 02:55:02 GMT  
		Size: 6.7 MB (6668932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae4262d844bfc3d270b94523e59def6030b69a0086b1d9331cbb2066e23c86c6`  
		Last Modified: Wed, 05 Aug 2026 02:55:01 GMT  
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
$ docker pull telegraf@sha256:195e52e7d20d068fb8b9c39819faeb8e21cdbad8f3c09fa63a11f56246357e6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:e714eb35acf3e70a6c5c0395873efb12938755e4eb05083598e733b7580b868a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89713960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c544a94ed8d187df1edeaff3534091f47ed584f404e0c5504ee8968e04e4f63d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:08:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:08:54 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
ENV TELEGRAF_VERSION=1.38.4
# Mon, 22 Jun 2026 20:09:00 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 22 Jun 2026 20:09:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:09:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:09:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fc2418181e2eec37d366a16fdf647689738a6020b7a9aa004befedaebdf330`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3001d3f012409e7632fda470c52eff60f5aa560f1ea5367f93dfc06532c1053`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 2.6 MB (2568205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1aa8791fc292f7d715a4ec73e28141e5fdce58d6d0acc7866acae05116d1b36`  
		Last Modified: Mon, 22 Jun 2026 20:09:18 GMT  
		Size: 83.3 MB (83300435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01abc246ffe1478dcf3a2bd1812fc4e8949f57c9ff2249fecbdc8c816cdec3af`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:673e2db49e3dd88251e19cbc6e90c71f72b432f70de8f58e326ae44345a1a123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d2a80d8197aeec533c3c498c604a652d379d56145d0e382ea40ba095833f9a`

```dockerfile
```

-	Layers:
	-	`sha256:b8d6c72ba4ffd10a10267f5086eb16853021305ea507556e5a8b955280d6c14e`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 1.1 MB (1142231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebcc7662e79e84caec4978dd6b0e238196da14464bbfa781ca7e3019280ebddc`  
		Last Modified: Mon, 22 Jun 2026 20:09:16 GMT  
		Size: 14.9 KB (14918 bytes)  
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
$ docker pull telegraf@sha256:386b2d4fdd4265d9e5b6a20131dbfe2b6bc277a4d53972962e5a4a3d16f180ef
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
$ docker pull telegraf@sha256:e00cfdcf0a947fa35d718fccdaedabac8e6e1d0c89c573a8e55357767e99fba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175552861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092fc64a685a81f3088797835dc7290492d2a9afced33c808e31c2e3c5aab1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 01:46:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:46:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:46:14 GMT
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
	-	`sha256:763d09b190c07233b5263f7c488c7a48925c714de5d4e9bb67fadc05ff055c61`  
		Last Modified: Wed, 05 Aug 2026 01:46:35 GMT  
		Size: 18.9 MB (18944540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce696b669e8d869d6114585c9b5620f74797dbe3c08957afc093001ce5780d7c`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448642ee8abc72379cb1376fcea1da7c72e14de8162e50576927d69590ec3e11`  
		Last Modified: Wed, 05 Aug 2026 01:46:36 GMT  
		Size: 84.1 MB (84061411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a229ccf7d4df3c16594bf185a5a13145ed3793588a34d27760db608c4c9e3257`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:0794752fa7de7dc5d6bd807dacea300bc83aa80c7cf9f9890d26a88e483bbb8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6d934b07b98dfdef03c1003d22f426f318cc9990d4ae4fd7fc217d42a4b605`

```dockerfile
```

-	Layers:
	-	`sha256:fe4cf6478e50cff757e2898483134c04fd30473affd92b487adc9df195508e0b`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 6.7 MB (6686640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f62dde41a979591363fac13c61ae083436398bc46d8625756de343e741961789`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 14.7 KB (14728 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:960b85edbbd0273a71407e139b499df854e16d791cf70ea3f24c88e818ee84d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162024941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b013e58e5ae83017eddc3a4d6c4fae3a559df9f330cf243fb2ef3b25904129e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:55:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:55:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 02:55:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 02:55:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 02:55:08 GMT
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
	-	`sha256:520704ce20f80efd7ae0709fc5258e23e2cef95d5a364be2e4120d7893b02236`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 17.7 MB (17699577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfbe1d3af54239b96eaf0ceb675e4498b7b64193c888f6b071fb5dcafa94e94`  
		Last Modified: Wed, 05 Aug 2026 02:55:24 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608d61d219b9829f99ab89fd442bdb6c4ea107340b138df23d57aae0facae5e8`  
		Last Modified: Wed, 05 Aug 2026 02:55:27 GMT  
		Size: 78.2 MB (78166859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abeca32e3b569c48d593037f45b2ec644a047816fd83edc90b654ca9afcb4d61`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:b59a24d3d59740433dbac1f0bdeb3e0e111b268210f329db2a416e97a0e0adb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8961ca0ef3f0bb26abe21de6d1a38be70b16b2ee8a5fd0f6466f434578c2d32`

```dockerfile
```

-	Layers:
	-	`sha256:7ac570c169c682c0f559f741a667148db234e4f28efd6b4c864f40ad45f1102d`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 6.7 MB (6682050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e6d8d0e08b6814e33f7176a98f64abe54538434d7ed6e5d8bf3b2e0675e8c7`  
		Last Modified: Wed, 05 Aug 2026 02:55:24 GMT  
		Size: 14.8 KB (14827 bytes)  
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
$ docker pull telegraf@sha256:cd926aecf11809ffe1b6125a752dd22a4336e150f061bcc202f74b46b785817d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:088aca5e52342053d32f9ca07bbfae07bf6be09c9b17a798fb3342350a7d91e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90270042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b18f975e8292043c05b0cb03082c37f7665a64d3b9ff990a1a92d5b74543ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:45:55 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:46:02 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:46:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:46:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5950408526ad141259bf206603c4f7d544c3772142eb231964c7175afcd3e655`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083df7ecc2cfb53a924c2916a995584f12d9b95d1c7badf84a2e6d2868c644c8`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 2.6 MB (2567510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae38ee38583326101645f9e20629b31d27cd4cf59285f7f45c4c561dd2a241`  
		Last Modified: Mon, 20 Jul 2026 22:46:19 GMT  
		Size: 83.9 MB (83857214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f438d1484e07b133778bdb76fae32a71c15928c801b145aa798811754e9201e`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:03aa2c72690592071f3008b1f6b983caf066609ae405cc595bf24c902d6d2fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0ebe5d16f1f7f4589f37cadb02c948f6fc4b62a9ff60cb69343a35f56a40a`

```dockerfile
```

-	Layers:
	-	`sha256:8af4b6b7c4b13928957d4546454969b13b2bd69b8563b5fdd6278a8a5a578614`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 1.2 MB (1154536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79fb96e4644a0e7d0afbf778fee3fc37ab2598fa04b4a5df0a5e5f207d26736`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 15.2 KB (15220 bytes)  
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

## `telegraf:1.39.2`

```console
$ docker pull telegraf@sha256:386b2d4fdd4265d9e5b6a20131dbfe2b6bc277a4d53972962e5a4a3d16f180ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.2` - linux; amd64

```console
$ docker pull telegraf@sha256:e00cfdcf0a947fa35d718fccdaedabac8e6e1d0c89c573a8e55357767e99fba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175552861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092fc64a685a81f3088797835dc7290492d2a9afced33c808e31c2e3c5aab1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 01:46:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:46:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:46:14 GMT
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
	-	`sha256:763d09b190c07233b5263f7c488c7a48925c714de5d4e9bb67fadc05ff055c61`  
		Last Modified: Wed, 05 Aug 2026 01:46:35 GMT  
		Size: 18.9 MB (18944540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce696b669e8d869d6114585c9b5620f74797dbe3c08957afc093001ce5780d7c`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448642ee8abc72379cb1376fcea1da7c72e14de8162e50576927d69590ec3e11`  
		Last Modified: Wed, 05 Aug 2026 01:46:36 GMT  
		Size: 84.1 MB (84061411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a229ccf7d4df3c16594bf185a5a13145ed3793588a34d27760db608c4c9e3257`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:0794752fa7de7dc5d6bd807dacea300bc83aa80c7cf9f9890d26a88e483bbb8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6d934b07b98dfdef03c1003d22f426f318cc9990d4ae4fd7fc217d42a4b605`

```dockerfile
```

-	Layers:
	-	`sha256:fe4cf6478e50cff757e2898483134c04fd30473affd92b487adc9df195508e0b`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 6.7 MB (6686640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f62dde41a979591363fac13c61ae083436398bc46d8625756de343e741961789`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 14.7 KB (14728 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.2` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:960b85edbbd0273a71407e139b499df854e16d791cf70ea3f24c88e818ee84d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162024941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b013e58e5ae83017eddc3a4d6c4fae3a559df9f330cf243fb2ef3b25904129e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:55:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:55:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 02:55:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 02:55:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 02:55:08 GMT
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
	-	`sha256:520704ce20f80efd7ae0709fc5258e23e2cef95d5a364be2e4120d7893b02236`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 17.7 MB (17699577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfbe1d3af54239b96eaf0ceb675e4498b7b64193c888f6b071fb5dcafa94e94`  
		Last Modified: Wed, 05 Aug 2026 02:55:24 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608d61d219b9829f99ab89fd442bdb6c4ea107340b138df23d57aae0facae5e8`  
		Last Modified: Wed, 05 Aug 2026 02:55:27 GMT  
		Size: 78.2 MB (78166859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abeca32e3b569c48d593037f45b2ec644a047816fd83edc90b654ca9afcb4d61`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:b59a24d3d59740433dbac1f0bdeb3e0e111b268210f329db2a416e97a0e0adb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8961ca0ef3f0bb26abe21de6d1a38be70b16b2ee8a5fd0f6466f434578c2d32`

```dockerfile
```

-	Layers:
	-	`sha256:7ac570c169c682c0f559f741a667148db234e4f28efd6b4c864f40ad45f1102d`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 6.7 MB (6682050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e6d8d0e08b6814e33f7176a98f64abe54538434d7ed6e5d8bf3b2e0675e8c7`  
		Last Modified: Wed, 05 Aug 2026 02:55:24 GMT  
		Size: 14.8 KB (14827 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.2` - linux; arm64 variant v8

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

### `telegraf:1.39.2` - unknown; unknown

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

## `telegraf:1.39.2-alpine`

```console
$ docker pull telegraf@sha256:cd926aecf11809ffe1b6125a752dd22a4336e150f061bcc202f74b46b785817d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.2-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:088aca5e52342053d32f9ca07bbfae07bf6be09c9b17a798fb3342350a7d91e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90270042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b18f975e8292043c05b0cb03082c37f7665a64d3b9ff990a1a92d5b74543ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:45:55 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:46:02 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:46:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:46:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5950408526ad141259bf206603c4f7d544c3772142eb231964c7175afcd3e655`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083df7ecc2cfb53a924c2916a995584f12d9b95d1c7badf84a2e6d2868c644c8`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 2.6 MB (2567510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae38ee38583326101645f9e20629b31d27cd4cf59285f7f45c4c561dd2a241`  
		Last Modified: Mon, 20 Jul 2026 22:46:19 GMT  
		Size: 83.9 MB (83857214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f438d1484e07b133778bdb76fae32a71c15928c801b145aa798811754e9201e`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:03aa2c72690592071f3008b1f6b983caf066609ae405cc595bf24c902d6d2fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0ebe5d16f1f7f4589f37cadb02c948f6fc4b62a9ff60cb69343a35f56a40a`

```dockerfile
```

-	Layers:
	-	`sha256:8af4b6b7c4b13928957d4546454969b13b2bd69b8563b5fdd6278a8a5a578614`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 1.2 MB (1154536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79fb96e4644a0e7d0afbf778fee3fc37ab2598fa04b4a5df0a5e5f207d26736`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 15.2 KB (15220 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.2-alpine` - linux; arm64 variant v8

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

### `telegraf:1.39.2-alpine` - unknown; unknown

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

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:cd926aecf11809ffe1b6125a752dd22a4336e150f061bcc202f74b46b785817d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:088aca5e52342053d32f9ca07bbfae07bf6be09c9b17a798fb3342350a7d91e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90270042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b18f975e8292043c05b0cb03082c37f7665a64d3b9ff990a1a92d5b74543ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:45:55 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:46:02 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:46:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:46:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5950408526ad141259bf206603c4f7d544c3772142eb231964c7175afcd3e655`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083df7ecc2cfb53a924c2916a995584f12d9b95d1c7badf84a2e6d2868c644c8`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 2.6 MB (2567510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae38ee38583326101645f9e20629b31d27cd4cf59285f7f45c4c561dd2a241`  
		Last Modified: Mon, 20 Jul 2026 22:46:19 GMT  
		Size: 83.9 MB (83857214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f438d1484e07b133778bdb76fae32a71c15928c801b145aa798811754e9201e`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:03aa2c72690592071f3008b1f6b983caf066609ae405cc595bf24c902d6d2fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0ebe5d16f1f7f4589f37cadb02c948f6fc4b62a9ff60cb69343a35f56a40a`

```dockerfile
```

-	Layers:
	-	`sha256:8af4b6b7c4b13928957d4546454969b13b2bd69b8563b5fdd6278a8a5a578614`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 1.2 MB (1154536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79fb96e4644a0e7d0afbf778fee3fc37ab2598fa04b4a5df0a5e5f207d26736`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 15.2 KB (15220 bytes)  
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
$ docker pull telegraf@sha256:386b2d4fdd4265d9e5b6a20131dbfe2b6bc277a4d53972962e5a4a3d16f180ef
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
$ docker pull telegraf@sha256:e00cfdcf0a947fa35d718fccdaedabac8e6e1d0c89c573a8e55357767e99fba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175552861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092fc64a685a81f3088797835dc7290492d2a9afced33c808e31c2e3c5aab1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:46:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 01:46:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:46:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:46:14 GMT
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
	-	`sha256:763d09b190c07233b5263f7c488c7a48925c714de5d4e9bb67fadc05ff055c61`  
		Last Modified: Wed, 05 Aug 2026 01:46:35 GMT  
		Size: 18.9 MB (18944540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce696b669e8d869d6114585c9b5620f74797dbe3c08957afc093001ce5780d7c`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448642ee8abc72379cb1376fcea1da7c72e14de8162e50576927d69590ec3e11`  
		Last Modified: Wed, 05 Aug 2026 01:46:36 GMT  
		Size: 84.1 MB (84061411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a229ccf7d4df3c16594bf185a5a13145ed3793588a34d27760db608c4c9e3257`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:0794752fa7de7dc5d6bd807dacea300bc83aa80c7cf9f9890d26a88e483bbb8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6d934b07b98dfdef03c1003d22f426f318cc9990d4ae4fd7fc217d42a4b605`

```dockerfile
```

-	Layers:
	-	`sha256:fe4cf6478e50cff757e2898483134c04fd30473affd92b487adc9df195508e0b`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 6.7 MB (6686640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f62dde41a979591363fac13c61ae083436398bc46d8625756de343e741961789`  
		Last Modified: Wed, 05 Aug 2026 01:46:34 GMT  
		Size: 14.7 KB (14728 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:960b85edbbd0273a71407e139b499df854e16d791cf70ea3f24c88e818ee84d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162024941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b013e58e5ae83017eddc3a4d6c4fae3a559df9f330cf243fb2ef3b25904129e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:55:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:55:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 02:55:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 02:55:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 02:55:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 02:55:08 GMT
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
	-	`sha256:520704ce20f80efd7ae0709fc5258e23e2cef95d5a364be2e4120d7893b02236`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 17.7 MB (17699577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfbe1d3af54239b96eaf0ceb675e4498b7b64193c888f6b071fb5dcafa94e94`  
		Last Modified: Wed, 05 Aug 2026 02:55:24 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608d61d219b9829f99ab89fd442bdb6c4ea107340b138df23d57aae0facae5e8`  
		Last Modified: Wed, 05 Aug 2026 02:55:27 GMT  
		Size: 78.2 MB (78166859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abeca32e3b569c48d593037f45b2ec644a047816fd83edc90b654ca9afcb4d61`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:b59a24d3d59740433dbac1f0bdeb3e0e111b268210f329db2a416e97a0e0adb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8961ca0ef3f0bb26abe21de6d1a38be70b16b2ee8a5fd0f6466f434578c2d32`

```dockerfile
```

-	Layers:
	-	`sha256:7ac570c169c682c0f559f741a667148db234e4f28efd6b4c864f40ad45f1102d`  
		Last Modified: Wed, 05 Aug 2026 02:55:25 GMT  
		Size: 6.7 MB (6682050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e6d8d0e08b6814e33f7176a98f64abe54538434d7ed6e5d8bf3b2e0675e8c7`  
		Last Modified: Wed, 05 Aug 2026 02:55:24 GMT  
		Size: 14.8 KB (14827 bytes)  
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
