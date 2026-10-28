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
-	[`telegraf:1.40.2`](#telegraf1402)
-	[`telegraf:1.40.2-alpine`](#telegraf1402-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:da68e73990dd5259cb2e002dcbadb28329dd7660ddf46b41a695c13e4d697620
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
$ docker pull telegraf@sha256:18f12c6bdd81c98956965d76440c30e7424da451f5bba02d91186883901fbd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174861094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59be41c93c373bc4852d607e85570393ea4a091058717a02429874eee194636b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 01:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:11 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdf3d73237192cb7c3a26f0c3a1ae2b2f95c991bbae4655d47475d8780cb2ff`  
		Last Modified: Wed, 21 Oct 2026 01:41:31 GMT  
		Size: 19.0 MB (18950470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ad6234031bae42e8f33a2cfcef2fbb7dcc2d36ef2e4ef392d71d118fbf17c3`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7101b5cc2f68c57ed65310bc6b9cf3bbc3ce82c1c557c0850f127b80179616`  
		Last Modified: Wed, 21 Oct 2026 01:41:33 GMT  
		Size: 83.5 MB (83511107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dd6d0501e4d5533b519dfdc71d7181e5badcf0da58bd4819305cb10b795530`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:ca51e7176d8e5c1deed31d5cae9796707cb2c1f2019d6290344026bb63b1f958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ef8fbe54075a78a37b78a89f6082770afebd717525d3cefa44192f83690500`

```dockerfile
```

-	Layers:
	-	`sha256:0cbc1080766b221f9594eebeb69adaac723bebb65882d9ee5ac2fdbd0e0f019c`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 6.7 MB (6677504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41cacd11c94b8faafb70ab7d798c7c0baef580c90cac7da0509cf4099a12bd80`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:aa2158d1a88f9692265e58caa1cab7bea0a79c8f755b7304158d54dcd4550c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161128560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c665384fff163d441fe5dabb89e389eeee8707b17929a1f1440de536f0fea4ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 03:47:20 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 28 Oct 2026 03:47:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 03:47:20 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 03:47:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 03:47:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 03:47:20 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a31cc9857b76ac1ee54c2904e42cd68cb12119bab7493335947aa59a0c920df`  
		Last Modified: Wed, 28 Oct 2026 03:47:38 GMT  
		Size: 17.7 MB (17703540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3fe4dd540c99a288dd70cceec06a27d0eb8e2d73954eb31b22d5db61d15d90`  
		Last Modified: Wed, 28 Oct 2026 03:47:37 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4040fc3e1f52367ff2b5363039211b6ca14ba1ef6837619863e51ba8c924bd`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 77.4 MB (77427889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a36aa7f50993108a465187b7dbbc3917c6ae7089092fb77443eba1814860eb`  
		Last Modified: Wed, 28 Oct 2026 03:47:38 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:90444f796f6318ce2dcc9a4052880867b232dc67a4311d9a3dd00b2face84452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6685842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b263a2280095f05a364d046897a8f5a62d14cee30d9815191d210b3690ec3d4`

```dockerfile
```

-	Layers:
	-	`sha256:021169254612ea6d0d0d5f41199fc5a813884b6d3bf23e5b3e4b3f8dddefd489`  
		Last Modified: Wed, 28 Oct 2026 03:47:38 GMT  
		Size: 6.7 MB (6671325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba9fbc35cb814ceeed852a2fa43f0513b1157fb86df157e858d35d8c8ab1e98a`  
		Last Modified: Wed, 28 Oct 2026 03:47:37 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:271017fc16bea394bfb287fe95ff09ebccda5483436f4466f5651c9f94ab8c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165217494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317e9cd7dc5854c582149a7138496f97396a0a7828b5a487d5f99cf368c44218`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:49:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:49:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:49:35 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 28 Oct 2026 02:49:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:49:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:49:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:49:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 02:49:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a96a6156f5f3e8dafc9cf05f9f4de1b2db2606c9bf5eee75b1435cbb050f4`  
		Last Modified: Wed, 28 Oct 2026 02:49:53 GMT  
		Size: 18.9 MB (18890094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe3a79001f223d089de040cd1604e2d493515ca5d48d5b776f225b1bad0ba44`  
		Last Modified: Wed, 28 Oct 2026 02:49:52 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695a8df7333105af527775795eec1e63b125f006c6951e46994e31b60764e127`  
		Last Modified: Wed, 28 Oct 2026 02:49:55 GMT  
		Size: 74.5 MB (74476776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162b9843afa21fd89926273ae7b057be362546c78c6ae599c2197e0f16b4b7a7`  
		Last Modified: Wed, 28 Oct 2026 02:49:52 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:267f19f23937ebe97597b8ada8cc14ccdb7a7963e49cc57c0302cb26213b5f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddb0bd557b4da5d9b0bc36ec2dc1a93d2fb1549c32c24a6af1c236bc02e50f1`

```dockerfile
```

-	Layers:
	-	`sha256:815237e80105668a3164dafe41406b659d8d002914922aa96a4fcf6ff1cb5892`  
		Last Modified: Wed, 28 Oct 2026 02:49:53 GMT  
		Size: 6.7 MB (6677404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7b36f3d0ce4d0fad64bcd7e06a39e2d3c876da148974154f2868fc5cd6e4890`  
		Last Modified: Wed, 28 Oct 2026 02:49:52 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38-alpine`

```console
$ docker pull telegraf@sha256:c4e265b36ae5167cdf740a4f3b7a51f8443cc1cfd330d12898f01c47bbd593f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:7b63f204a94fa974e3549b575569f0bb279c1c7612a8a73372f08e4dff7b0204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda4ca9ce5ca12e8c8fb7548d52e0cb49c24546033443e95112dbd20c5176a33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:17 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:18 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 21:32:25 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:25 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f54c01ca88a578b98f242e09363ae934159a7de560ae3e966e06d44f8a7dee`  
		Last Modified: Wed, 21 Oct 2026 21:32:41 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7cad50e7af710ee2c087aa12b217a6b798def01e48e651f7fbf52030f8ef0d`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 2.6 MB (2571261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590d3184e03e1f747798d5d232140efe49fff92932900a447a248919fcd8473c`  
		Last Modified: Wed, 21 Oct 2026 21:32:44 GMT  
		Size: 86.2 MB (86209096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facda3821d439f2b9abe0da5afd7e25f0a674c3cfed79b90b7c5b83dea57c8ed`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:7fe6c82d94e10f7bd14ef680148a1496c841e47115f6d651706aebdbd16d9a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7fbf892b6c7a99d1110072005ae18f01a512df780db889bad204d6e097ce2b`

```dockerfile
```

-	Layers:
	-	`sha256:24846957553e70de1f66610cf963abb28b9b0c413651447b5fad4132730c6f93`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 1.1 MB (1141587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d705f78270233b9f187cd9a2983b09ee7a27135cf38e2477eea0b398d00a0fd5`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 15.4 KB (15448 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:51c8cf38226e3cd20c7f9c8741062cf20f9ba023ec855f43f72ffed5c13ee28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83978446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772346d1a668c9cbb6c4bdabde160333efddef3e324241c8dda22256eae4ec39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:13 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 21:34:21 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:21 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc371f4d882a9afa867b442d9555685492083bba48c45c4bfd1bbde6939508b3`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b97a42c8e22c7aaf90ea030a7a3049044395e98879cce3c9a85a86a2c0456a`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 2.6 MB (2620273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33237e4b2d30d05b6ce96484a879c3aec0f559edcc4d41c1df594fad01d2651d`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 77.2 MB (77167764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfbbbcf30af9d4dff99f8a91af5edc6839fef5268d598018fc330fd829bd6f7`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:73f81daf4cc3deb53a112530dea15308fdd6063e22180f04093299bcd64d526a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d057ab2a063ff579b03f1a1c733eb8bdbe7159a5fcfb393bbd675ac647f9d11a`

```dockerfile
```

-	Layers:
	-	`sha256:6f375cb7e5a6005a1999b5f8dfa1956c2c77f96b3188719a89ff79e75c970ab5`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 1.1 MB (1136564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba9da05f46028141e5819f147aa836dca6b657cdaa7d980a8bc86ff555076f2a`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4`

```console
$ docker pull telegraf@sha256:da68e73990dd5259cb2e002dcbadb28329dd7660ddf46b41a695c13e4d697620
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
$ docker pull telegraf@sha256:18f12c6bdd81c98956965d76440c30e7424da451f5bba02d91186883901fbd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174861094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59be41c93c373bc4852d607e85570393ea4a091058717a02429874eee194636b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:07 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 01:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:11 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdf3d73237192cb7c3a26f0c3a1ae2b2f95c991bbae4655d47475d8780cb2ff`  
		Last Modified: Wed, 21 Oct 2026 01:41:31 GMT  
		Size: 19.0 MB (18950470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ad6234031bae42e8f33a2cfcef2fbb7dcc2d36ef2e4ef392d71d118fbf17c3`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7101b5cc2f68c57ed65310bc6b9cf3bbc3ce82c1c557c0850f127b80179616`  
		Last Modified: Wed, 21 Oct 2026 01:41:33 GMT  
		Size: 83.5 MB (83511107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dd6d0501e4d5533b519dfdc71d7181e5badcf0da58bd4819305cb10b795530`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:ca51e7176d8e5c1deed31d5cae9796707cb2c1f2019d6290344026bb63b1f958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ef8fbe54075a78a37b78a89f6082770afebd717525d3cefa44192f83690500`

```dockerfile
```

-	Layers:
	-	`sha256:0cbc1080766b221f9594eebeb69adaac723bebb65882d9ee5ac2fdbd0e0f019c`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 6.7 MB (6677504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41cacd11c94b8faafb70ab7d798c7c0baef580c90cac7da0509cf4099a12bd80`  
		Last Modified: Wed, 21 Oct 2026 01:41:30 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:aa2158d1a88f9692265e58caa1cab7bea0a79c8f755b7304158d54dcd4550c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161128560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c665384fff163d441fe5dabb89e389eeee8707b17929a1f1440de536f0fea4ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 03:47:20 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 28 Oct 2026 03:47:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 03:47:20 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 03:47:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 03:47:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 03:47:20 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a31cc9857b76ac1ee54c2904e42cd68cb12119bab7493335947aa59a0c920df`  
		Last Modified: Wed, 28 Oct 2026 03:47:38 GMT  
		Size: 17.7 MB (17703540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3fe4dd540c99a288dd70cceec06a27d0eb8e2d73954eb31b22d5db61d15d90`  
		Last Modified: Wed, 28 Oct 2026 03:47:37 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4040fc3e1f52367ff2b5363039211b6ca14ba1ef6837619863e51ba8c924bd`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 77.4 MB (77427889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a36aa7f50993108a465187b7dbbc3917c6ae7089092fb77443eba1814860eb`  
		Last Modified: Wed, 28 Oct 2026 03:47:38 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:90444f796f6318ce2dcc9a4052880867b232dc67a4311d9a3dd00b2face84452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6685842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b263a2280095f05a364d046897a8f5a62d14cee30d9815191d210b3690ec3d4`

```dockerfile
```

-	Layers:
	-	`sha256:021169254612ea6d0d0d5f41199fc5a813884b6d3bf23e5b3e4b3f8dddefd489`  
		Last Modified: Wed, 28 Oct 2026 03:47:38 GMT  
		Size: 6.7 MB (6671325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba9fbc35cb814ceeed852a2fa43f0513b1157fb86df157e858d35d8c8ab1e98a`  
		Last Modified: Wed, 28 Oct 2026 03:47:37 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:271017fc16bea394bfb287fe95ff09ebccda5483436f4466f5651c9f94ab8c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165217494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317e9cd7dc5854c582149a7138496f97396a0a7828b5a487d5f99cf368c44218`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:49:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:49:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:49:35 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 28 Oct 2026 02:49:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:49:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:49:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:49:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 02:49:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a96a6156f5f3e8dafc9cf05f9f4de1b2db2606c9bf5eee75b1435cbb050f4`  
		Last Modified: Wed, 28 Oct 2026 02:49:53 GMT  
		Size: 18.9 MB (18890094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe3a79001f223d089de040cd1604e2d493515ca5d48d5b776f225b1bad0ba44`  
		Last Modified: Wed, 28 Oct 2026 02:49:52 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695a8df7333105af527775795eec1e63b125f006c6951e46994e31b60764e127`  
		Last Modified: Wed, 28 Oct 2026 02:49:55 GMT  
		Size: 74.5 MB (74476776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162b9843afa21fd89926273ae7b057be362546c78c6ae599c2197e0f16b4b7a7`  
		Last Modified: Wed, 28 Oct 2026 02:49:52 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:267f19f23937ebe97597b8ada8cc14ccdb7a7963e49cc57c0302cb26213b5f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddb0bd557b4da5d9b0bc36ec2dc1a93d2fb1549c32c24a6af1c236bc02e50f1`

```dockerfile
```

-	Layers:
	-	`sha256:815237e80105668a3164dafe41406b659d8d002914922aa96a4fcf6ff1cb5892`  
		Last Modified: Wed, 28 Oct 2026 02:49:53 GMT  
		Size: 6.7 MB (6677404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7b36f3d0ce4d0fad64bcd7e06a39e2d3c876da148974154f2868fc5cd6e4890`  
		Last Modified: Wed, 28 Oct 2026 02:49:52 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4-alpine`

```console
$ docker pull telegraf@sha256:c4e265b36ae5167cdf740a4f3b7a51f8443cc1cfd330d12898f01c47bbd593f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:7b63f204a94fa974e3549b575569f0bb279c1c7612a8a73372f08e4dff7b0204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda4ca9ce5ca12e8c8fb7548d52e0cb49c24546033443e95112dbd20c5176a33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:17 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:18 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 21:32:25 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:25 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f54c01ca88a578b98f242e09363ae934159a7de560ae3e966e06d44f8a7dee`  
		Last Modified: Wed, 21 Oct 2026 21:32:41 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7cad50e7af710ee2c087aa12b217a6b798def01e48e651f7fbf52030f8ef0d`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 2.6 MB (2571261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590d3184e03e1f747798d5d232140efe49fff92932900a447a248919fcd8473c`  
		Last Modified: Wed, 21 Oct 2026 21:32:44 GMT  
		Size: 86.2 MB (86209096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facda3821d439f2b9abe0da5afd7e25f0a674c3cfed79b90b7c5b83dea57c8ed`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:7fe6c82d94e10f7bd14ef680148a1496c841e47115f6d651706aebdbd16d9a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7fbf892b6c7a99d1110072005ae18f01a512df780db889bad204d6e097ce2b`

```dockerfile
```

-	Layers:
	-	`sha256:24846957553e70de1f66610cf963abb28b9b0c413651447b5fad4132730c6f93`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 1.1 MB (1141587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d705f78270233b9f187cd9a2983b09ee7a27135cf38e2477eea0b398d00a0fd5`  
		Last Modified: Wed, 21 Oct 2026 21:32:42 GMT  
		Size: 15.4 KB (15448 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:51c8cf38226e3cd20c7f9c8741062cf20f9ba023ec855f43f72ffed5c13ee28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83978446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772346d1a668c9cbb6c4bdabde160333efddef3e324241c8dda22256eae4ec39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:13 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 21 Oct 2026 21:34:21 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:21 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc371f4d882a9afa867b442d9555685492083bba48c45c4bfd1bbde6939508b3`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b97a42c8e22c7aaf90ea030a7a3049044395e98879cce3c9a85a86a2c0456a`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 2.6 MB (2620273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33237e4b2d30d05b6ce96484a879c3aec0f559edcc4d41c1df594fad01d2651d`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 77.2 MB (77167764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfbbbcf30af9d4dff99f8a91af5edc6839fef5268d598018fc330fd829bd6f7`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:73f81daf4cc3deb53a112530dea15308fdd6063e22180f04093299bcd64d526a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d057ab2a063ff579b03f1a1c733eb8bdbe7159a5fcfb393bbd675ac647f9d11a`

```dockerfile
```

-	Layers:
	-	`sha256:6f375cb7e5a6005a1999b5f8dfa1956c2c77f96b3188719a89ff79e75c970ab5`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 1.1 MB (1136564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba9da05f46028141e5819f147aa836dca6b657cdaa7d980a8bc86ff555076f2a`  
		Last Modified: Wed, 21 Oct 2026 21:34:35 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39`

```console
$ docker pull telegraf@sha256:343ddca80ff57fa5827b10a84c83d69759645bdc8ae70c6b20bb4d96e8559423
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
$ docker pull telegraf@sha256:d34cad09bc6b5b7a3c20132b831b0ddc32578194b24a8eecf935d0b6acc14002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177605496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4452b43260fd48445c53ba51b4256ee4dc75e765a1e4247c31a931067bd45e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:31 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:32 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 01:41:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea1168e36d59ada92de015f36a13ad152ad0715f3e5db23c1365b9edac586be`  
		Last Modified: Wed, 21 Oct 2026 01:41:55 GMT  
		Size: 19.3 MB (19290718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4dd83ff6f7fa462907928672cb328bd50dd97d2f2c596f8261f6925c3e3f91`  
		Last Modified: Wed, 21 Oct 2026 01:41:53 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cd2f24d8cda20d13f3f7ffcdb602ba25619f06b1252fc96ef608e3ad4a4d24`  
		Last Modified: Wed, 21 Oct 2026 01:41:56 GMT  
		Size: 85.9 MB (85915247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca1d90af8f90e287bb61b0974b36432a53bdac35711c48662181d35376ec235`  
		Last Modified: Wed, 21 Oct 2026 01:41:54 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:475911c842fdd9f4dfc693bdab8fc038fb1af2cc998a858536682f9204465195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134dfcded0a259236b4e36f2a9509bd088cfbf6e155e32b26ef413bdb6fe5ad`

```dockerfile
```

-	Layers:
	-	`sha256:341495d699a627cf2e84733329bb2f95bc2faee22277fb0f036c1db946b79611`  
		Last Modified: Wed, 21 Oct 2026 01:41:54 GMT  
		Size: 6.7 MB (6687387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9a35b767640cd74957e5751e15ecc94c009481a912e5a57d7b1e40deef67f89`  
		Last Modified: Wed, 21 Oct 2026 01:41:53 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:7648e10badb798b160e3eb76c84935e2fa73f838f955a245d67b53fe319bc2b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163821316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b3070c59369e8f1302403ad684c2db20a7a726d6abe4e04e5ca0e0bdbd8ea9`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 03:47:22 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 28 Oct 2026 03:47:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 03:47:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 03:47:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 03:47:22 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 03:47:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c803e8d3359d1825300a99d11b12565d85dbb5e3dace9454372b202aa923245`  
		Last Modified: Wed, 28 Oct 2026 03:47:41 GMT  
		Size: 18.0 MB (17961383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f6ddfa34fec1db85b6f20e1779495205b570fe006ecc923729e9b57b82f80a`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46ad76d9a5caff24a8eb59a36625ef65dd253df6a8a9a26db5a33214afec083`  
		Last Modified: Wed, 28 Oct 2026 03:47:42 GMT  
		Size: 79.9 MB (79862804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92af12f54dc749c0af65874b70a05535ed28c34ba64b38e1ee4c0023ca85198f`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:8be2b5ce4adcba42809fa2ff6841541499ca5b9cd09dcfd8ee429190b69a1506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d442c116f6b7b08a570e7529827e1bac803011a1441db58269361f7a891d46`

```dockerfile
```

-	Layers:
	-	`sha256:05b3dada4f28d132a181ca24c1f2ad47384d117d9d2602355eac5a547d551f52`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 6.7 MB (6682013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d19fa7a7bbf03df6546fe9b1bd49583f295c5b222dc1d575317c657707c983d5`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f2c6eec7b9589edc9365b1eb09d1da544c905a3af3d692a45c807d028d90e5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167798626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53cda70d5cc87b993d95cf30f0acecef9d482d44640db7fb38be10f8a763798`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:50:13 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 28 Oct 2026 02:50:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:50:13 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:50:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:50:13 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 02:50:13 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3826fc3403be12b92a243e88b94d723208699b2d5e7d60644f40429fc41d8a30`  
		Last Modified: Wed, 28 Oct 2026 02:50:32 GMT  
		Size: 19.2 MB (19194313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81159295db9fae42e81f4f4031ba19f4a94429abe799c4319f286944bd8e5dc2`  
		Last Modified: Wed, 28 Oct 2026 02:50:31 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5603abb0dd472661e27b4c508be43dfb8ae2e4af2382ef9e34617ab411db4b`  
		Last Modified: Wed, 28 Oct 2026 02:50:33 GMT  
		Size: 76.8 MB (76753688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85044ece2bea85ab0053e80e158c81d2f2f3a2424083807344c0236be6ed18b7`  
		Last Modified: Wed, 28 Oct 2026 02:50:31 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:0609bd6c0933444ade96fd63a2f0917e72c87d3760a103ff76d1e2896c41a972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bdbac4c556fddf2a881e2506dadd5655c2685fe523c45bb1260a0a4b84155d`

```dockerfile
```

-	Layers:
	-	`sha256:144efeeab3810a405a32e9942191e3a3def326814bdc45b333ee9dc90f5a1629`  
		Last Modified: Wed, 28 Oct 2026 02:50:31 GMT  
		Size: 6.7 MB (6687287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:185c32236c3a7b570c07d416d2ec9586cd3a15ed5c3c2cfd938111bf3d3bdc0e`  
		Last Modified: Wed, 28 Oct 2026 02:50:31 GMT  
		Size: 14.6 KB (14578 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39-alpine`

```console
$ docker pull telegraf@sha256:941df79bae0c0667ed051941e0a7f1af6d98a2cc70b1a11757dbf37ee169d88a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:514de8e25c406216b9adb898cc758218e62d848e6fb96040103ac7cd3de72f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a73b8dad6a3456b460d3b5f01c03cb051e69f5224760731982addc9d04111ee`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:26 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 21:32:33 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d916a8b8fe65166e5b60f899247dd866095a1607d2b31388dff9c172c7336928`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90299dbb2777d242670a98994b40f4ac4bc5219c94d006139b86df09e744659`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f348c360cbd734bc32ea58080b1557f0fb38d0e062264fca22cf5c110a56e1e`  
		Last Modified: Wed, 21 Oct 2026 21:32:51 GMT  
		Size: 88.6 MB (88605076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f754bdc473dfdf59efa06b762fe822a65d9fb1ce79e3e7ff4a05216c0df668`  
		Last Modified: Wed, 21 Oct 2026 21:32:48 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:5ee221c213afab92234bc16af5c55293e5d1c959ab47f5ce95061c81682bb8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a101a7881c02e646dab6cfdbaea6dd5c98766cbd9c8ee41532ce277dbb0f5c4`

```dockerfile
```

-	Layers:
	-	`sha256:e2177db46370d9b86ef42f0e5f4f90326fba1018aa2978c2eb763271fb70e8be`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 1.1 MB (1147111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0325025da6f832c2213375c7981efa3e103f6206d1c5db0c2b5f40410499719`  
		Last Modified: Wed, 21 Oct 2026 21:32:48 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:4a50e5abee1afd285d612ca3e63b9573be1992e207d5285da1fa9d1443cec92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86256719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09ce48f74904a3481e2ffc0ec1b7783b75c478b21a3d12b37b275799a5f4de1`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:16 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:17 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 21:34:24 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:24 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c78fb1e4d220f9a201120e098ac3b14e41cd011ff79385c4874696e3cc5c1d`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373a53d8093f43d06fb8e15aa8d7dd259fa9e1fd9ab2da6854c4b68334d18c97`  
		Last Modified: Wed, 21 Oct 2026 21:34:39 GMT  
		Size: 2.6 MB (2628552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48e8921e1ccd84a8064f3eb7cfb095eb6be3f8a9d8663b802cc28de386e6680`  
		Last Modified: Wed, 21 Oct 2026 21:34:40 GMT  
		Size: 79.4 MB (79437759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b9a97a99f3a92b8b06a4b676d52fc3851899a6d90d4b4c761c3d815116a754`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:5eec1ac10fcd009cf76a17ce47513bda5c428a2e590236e35c08740c777534be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a31c5e185f6523460e30c2186ec094a190a29ca2f9daf4cbbcfaa64471ef9`

```dockerfile
```

-	Layers:
	-	`sha256:641f4ecb5a9033d1bf6a272bdeca41d10e0e8dd40ef7f6ce3c28195592f34ed0`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 1.1 MB (1142088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c490e3bb6edf2ecc55c301ff6ef67dfa5936c537ff5cd7bca713f7f0861d7fd`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3`

```console
$ docker pull telegraf@sha256:343ddca80ff57fa5827b10a84c83d69759645bdc8ae70c6b20bb4d96e8559423
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
$ docker pull telegraf@sha256:d34cad09bc6b5b7a3c20132b831b0ddc32578194b24a8eecf935d0b6acc14002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177605496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4452b43260fd48445c53ba51b4256ee4dc75e765a1e4247c31a931067bd45e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:31 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:32 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 01:41:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:36 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea1168e36d59ada92de015f36a13ad152ad0715f3e5db23c1365b9edac586be`  
		Last Modified: Wed, 21 Oct 2026 01:41:55 GMT  
		Size: 19.3 MB (19290718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4dd83ff6f7fa462907928672cb328bd50dd97d2f2c596f8261f6925c3e3f91`  
		Last Modified: Wed, 21 Oct 2026 01:41:53 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cd2f24d8cda20d13f3f7ffcdb602ba25619f06b1252fc96ef608e3ad4a4d24`  
		Last Modified: Wed, 21 Oct 2026 01:41:56 GMT  
		Size: 85.9 MB (85915247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca1d90af8f90e287bb61b0974b36432a53bdac35711c48662181d35376ec235`  
		Last Modified: Wed, 21 Oct 2026 01:41:54 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:475911c842fdd9f4dfc693bdab8fc038fb1af2cc998a858536682f9204465195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134dfcded0a259236b4e36f2a9509bd088cfbf6e155e32b26ef413bdb6fe5ad`

```dockerfile
```

-	Layers:
	-	`sha256:341495d699a627cf2e84733329bb2f95bc2faee22277fb0f036c1db946b79611`  
		Last Modified: Wed, 21 Oct 2026 01:41:54 GMT  
		Size: 6.7 MB (6687387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9a35b767640cd74957e5751e15ecc94c009481a912e5a57d7b1e40deef67f89`  
		Last Modified: Wed, 21 Oct 2026 01:41:53 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:7648e10badb798b160e3eb76c84935e2fa73f838f955a245d67b53fe319bc2b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163821316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b3070c59369e8f1302403ad684c2db20a7a726d6abe4e04e5ca0e0bdbd8ea9`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 03:47:22 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 28 Oct 2026 03:47:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 03:47:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 03:47:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 03:47:22 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 03:47:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c803e8d3359d1825300a99d11b12565d85dbb5e3dace9454372b202aa923245`  
		Last Modified: Wed, 28 Oct 2026 03:47:41 GMT  
		Size: 18.0 MB (17961383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f6ddfa34fec1db85b6f20e1779495205b570fe006ecc923729e9b57b82f80a`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46ad76d9a5caff24a8eb59a36625ef65dd253df6a8a9a26db5a33214afec083`  
		Last Modified: Wed, 28 Oct 2026 03:47:42 GMT  
		Size: 79.9 MB (79862804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92af12f54dc749c0af65874b70a05535ed28c34ba64b38e1ee4c0023ca85198f`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:8be2b5ce4adcba42809fa2ff6841541499ca5b9cd09dcfd8ee429190b69a1506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d442c116f6b7b08a570e7529827e1bac803011a1441db58269361f7a891d46`

```dockerfile
```

-	Layers:
	-	`sha256:05b3dada4f28d132a181ca24c1f2ad47384d117d9d2602355eac5a547d551f52`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 6.7 MB (6682013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d19fa7a7bbf03df6546fe9b1bd49583f295c5b222dc1d575317c657707c983d5`  
		Last Modified: Wed, 28 Oct 2026 03:47:40 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f2c6eec7b9589edc9365b1eb09d1da544c905a3af3d692a45c807d028d90e5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167798626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53cda70d5cc87b993d95cf30f0acecef9d482d44640db7fb38be10f8a763798`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:50:13 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 28 Oct 2026 02:50:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:50:13 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:50:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:50:13 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 02:50:13 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3826fc3403be12b92a243e88b94d723208699b2d5e7d60644f40429fc41d8a30`  
		Last Modified: Wed, 28 Oct 2026 02:50:32 GMT  
		Size: 19.2 MB (19194313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81159295db9fae42e81f4f4031ba19f4a94429abe799c4319f286944bd8e5dc2`  
		Last Modified: Wed, 28 Oct 2026 02:50:31 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5603abb0dd472661e27b4c508be43dfb8ae2e4af2382ef9e34617ab411db4b`  
		Last Modified: Wed, 28 Oct 2026 02:50:33 GMT  
		Size: 76.8 MB (76753688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85044ece2bea85ab0053e80e158c81d2f2f3a2424083807344c0236be6ed18b7`  
		Last Modified: Wed, 28 Oct 2026 02:50:31 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:0609bd6c0933444ade96fd63a2f0917e72c87d3760a103ff76d1e2896c41a972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bdbac4c556fddf2a881e2506dadd5655c2685fe523c45bb1260a0a4b84155d`

```dockerfile
```

-	Layers:
	-	`sha256:144efeeab3810a405a32e9942191e3a3def326814bdc45b333ee9dc90f5a1629`  
		Last Modified: Wed, 28 Oct 2026 02:50:31 GMT  
		Size: 6.7 MB (6687287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:185c32236c3a7b570c07d416d2ec9586cd3a15ed5c3c2cfd938111bf3d3bdc0e`  
		Last Modified: Wed, 28 Oct 2026 02:50:31 GMT  
		Size: 14.6 KB (14578 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3-alpine`

```console
$ docker pull telegraf@sha256:941df79bae0c0667ed051941e0a7f1af6d98a2cc70b1a11757dbf37ee169d88a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:514de8e25c406216b9adb898cc758218e62d848e6fb96040103ac7cd3de72f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a73b8dad6a3456b460d3b5f01c03cb051e69f5224760731982addc9d04111ee`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:26 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 21:32:33 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:33 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d916a8b8fe65166e5b60f899247dd866095a1607d2b31388dff9c172c7336928`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90299dbb2777d242670a98994b40f4ac4bc5219c94d006139b86df09e744659`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f348c360cbd734bc32ea58080b1557f0fb38d0e062264fca22cf5c110a56e1e`  
		Last Modified: Wed, 21 Oct 2026 21:32:51 GMT  
		Size: 88.6 MB (88605076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f754bdc473dfdf59efa06b762fe822a65d9fb1ce79e3e7ff4a05216c0df668`  
		Last Modified: Wed, 21 Oct 2026 21:32:48 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:5ee221c213afab92234bc16af5c55293e5d1c959ab47f5ce95061c81682bb8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a101a7881c02e646dab6cfdbaea6dd5c98766cbd9c8ee41532ce277dbb0f5c4`

```dockerfile
```

-	Layers:
	-	`sha256:e2177db46370d9b86ef42f0e5f4f90326fba1018aa2978c2eb763271fb70e8be`  
		Last Modified: Wed, 21 Oct 2026 21:32:49 GMT  
		Size: 1.1 MB (1147111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0325025da6f832c2213375c7981efa3e103f6206d1c5db0c2b5f40410499719`  
		Last Modified: Wed, 21 Oct 2026 21:32:48 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:4a50e5abee1afd285d612ca3e63b9573be1992e207d5285da1fa9d1443cec92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86256719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09ce48f74904a3481e2ffc0ec1b7783b75c478b21a3d12b37b275799a5f4de1`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:16 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:17 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 21 Oct 2026 21:34:24 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:24 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:24 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c78fb1e4d220f9a201120e098ac3b14e41cd011ff79385c4874696e3cc5c1d`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373a53d8093f43d06fb8e15aa8d7dd259fa9e1fd9ab2da6854c4b68334d18c97`  
		Last Modified: Wed, 21 Oct 2026 21:34:39 GMT  
		Size: 2.6 MB (2628552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48e8921e1ccd84a8064f3eb7cfb095eb6be3f8a9d8663b802cc28de386e6680`  
		Last Modified: Wed, 21 Oct 2026 21:34:40 GMT  
		Size: 79.4 MB (79437759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b9a97a99f3a92b8b06a4b676d52fc3851899a6d90d4b4c761c3d815116a754`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:5eec1ac10fcd009cf76a17ce47513bda5c428a2e590236e35c08740c777534be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a31c5e185f6523460e30c2186ec094a190a29ca2f9daf4cbbcfaa64471ef9`

```dockerfile
```

-	Layers:
	-	`sha256:641f4ecb5a9033d1bf6a272bdeca41d10e0e8dd40ef7f6ce3c28195592f34ed0`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 1.1 MB (1142088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c490e3bb6edf2ecc55c301ff6ef67dfa5936c537ff5cd7bca713f7f0861d7fd`  
		Last Modified: Wed, 21 Oct 2026 21:34:38 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40`

```console
$ docker pull telegraf@sha256:236f73ce796622bda52135f8203f900dcbdd41aa46894fd6074b948ce397f3a9
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
$ docker pull telegraf@sha256:bacd6eaed5f6586e095101a2533bb06fcee37bd842d2c645fdc9265844ab825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.4 MB (180392107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd76b77a421ae0174a6eeed9794bbfa2add6b76056ed9cb655a97ff84449443`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a3b580249d83ee0b51bb931b3342de6f62d58ed6defa5dc81bc219ebbc21e9`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 19.3 MB (19290731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8991750fb0796f258d020a1b8d2e0579b17cb80e7abb5eac893147bd54ee0972`  
		Last Modified: Wed, 21 Oct 2026 01:42:14 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcec5d7aaa9cb7549e35d7a26b0fdbd6a8e590b0f8ecadfdc402f083e8da2233`  
		Last Modified: Wed, 21 Oct 2026 01:42:17 GMT  
		Size: 88.7 MB (88701859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca0e093695b8a3b0a9c779023d3b22fe7ba7ba7d195dc9fcee4c26cf1cf9ee`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:306527f0a14becbdeb375b23444222c5d72cebb1d9cea7af08c9bfb3cd10d5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dc7beaf133efaeb506bb6740a9d37af31e0b173f785ca23af248b03bd69860`

```dockerfile
```

-	Layers:
	-	`sha256:6f96b081c091a08d0097eabae205e557f75b12b74a144f2a37a3badc5175fa6a`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 6.7 MB (6690012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f3b3c568e560d3417b7afd9de5bbdc9de4aa2c9d23b8f2a3b8ba1bd400c418`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:fab779bcf97e10cefa4e26ac6da421c0b8c744f8ae8e40450f7124e48808409f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166486200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824ada4ae3aaba0ad463203cce70481910a5faaaeb0a6990d1dddc3d63246954`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:39 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 28 Oct 2026 03:47:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 03:47:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 03:47:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854c7e1655ac7fd2716c7905772756a87ab56f67c54524701b6c6cbe3c34923b`  
		Last Modified: Wed, 28 Oct 2026 03:48:08 GMT  
		Size: 18.0 MB (17961308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a660f648cab9d11e85b2ea4d241fbde79f50a998767e30c0d63ae45907689f84`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa5a1c0a2ceadcaf2f13eae2605a853a80b4ce2e9a292318c7679a7159d380a0`  
		Last Modified: Wed, 28 Oct 2026 03:48:09 GMT  
		Size: 82.5 MB (82527763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3994233b125abba8aedde27bca1dac9675191cd400d125729569df49f512be`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:e33772d6e1823e06fc765a1438e2c39f019860e066e1458e117c827bbf1585bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:001fbe11ba9225baa9c4c2c2545248c8e891b0a0b9f2a01b0bd85a4a9c9e83fd`

```dockerfile
```

-	Layers:
	-	`sha256:88de9a9ac6118d992293b58e608c06bc493233cf8d2c60d5bd1b9e9605c4d9db`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 6.7 MB (6684646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b945f3bb77a5d1f2b9497aba2207fed0a7db84fbf8b1b4696da3e08fb334a71`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a08d378c99c31c1e0b463a57d4926932515e37c08417d7e5376653f26dc9eadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170287013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c1f4720dadda8e33fc7e2edbe11410ba0ba299fdc5ab00e49271ab7e6e8bb7`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:39 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 28 Oct 2026 02:50:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:50:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 02:50:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58181e3d4f52fb1888f4ee7d3293f6bb8559bb9449991501017d0ac0888bc6f`  
		Last Modified: Wed, 28 Oct 2026 02:51:03 GMT  
		Size: 19.2 MB (19194254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2bbf0b3e1985cda36383ebd29d18ed2ba781d10fcc5f2d4bcc68961d0d0593`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449fb77eddc25c103929a974ae83aff2bbd1fd5a4e763c33b0b2af70d0a6705c`  
		Last Modified: Wed, 28 Oct 2026 02:51:05 GMT  
		Size: 79.2 MB (79242119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4aea23a78f0b42ebfb2389e6a7d676a3b8f91bb132b3a62e84409aa4f90751`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:dbbbe73f9018045065c6d847936aed7febd54d88c3fe2c2949ef179b74431656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37dad1e69c7445858f1f07264015418a49875cd2858d81a178e160b768db9907`

```dockerfile
```

-	Layers:
	-	`sha256:23b8ec0205ee7e3fd8645dac06d0956a383c806e81ff59ad11f1f8bb10c337f5`  
		Last Modified: Wed, 28 Oct 2026 02:51:03 GMT  
		Size: 6.7 MB (6689924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8dc68c777357cfff03632445d390e3b869486d1cebcb8c1dd22168dad7b772f`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:4a62bd294bf2f4c1e3781194fe7b625b7e527244eeb31afd5758227914a16229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ee80b97dbc73e75928b23bb44f9d37dc3c24c04d103a267391d57bbf0c715ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97826055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc0d37fa5bccd21fc4cf4cd070eaeab6a4cb44b5c3b06928fec4e455f5a7fec`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:32 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:32:39 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdd54f6f4e59c174324eef02571a6fff31e5408c96e950ff1a42c6d235670ea`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e931821e2cc8c823c295ba8d489b41179d43630c8091db45f32effed5b738bc`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61121e35107c11d0b1abbe121f15b57b5ed18de214095f46dfd4658b6a7a3255`  
		Last Modified: Wed, 21 Oct 2026 21:32:58 GMT  
		Size: 91.4 MB (91394651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed113135fee29685855d1d12b379a3ff0865e9e4e2af4eb37a0308b94d6e3682`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:24370ef8ec3af16c68e7dbdb589c3c68c4cfd5204e7e41dcb3de582848765ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374408f3e19a4f55646a2c989fe7ba6261884fe7a75c06d9580fba85911025eb`

```dockerfile
```

-	Layers:
	-	`sha256:234de45d5bd34b8d5f400a2ce4dd0d707c98f73e92e256951f00fc6883243470`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 1.1 MB (1149736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ab44257c63fde9552a3d1b6eb26ee1f634311eaec002b2ea452a902bd798bf`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:794fa91887f5927901ec362681fdbd16f2d4fb64b96e6fbb14804edacd1c57e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88729512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886a355101435218d399e322d16467b264d85f1b8bedb6ac6c52638e06681563`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:35 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:34:42 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b3ba44e1545643b0259d257983328bc9ec4bea27ccd4789ea8da8c5a2d6d2`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d14b83e01daa841bd6a6a638b9f776432f0f34b855c0ecbca9f320ff10452bf`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 2.6 MB (2628536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09036a9a31093b38070c389fc413ab77ed61441d82ba90e997281bfc6fbcc14`  
		Last Modified: Wed, 21 Oct 2026 21:34:59 GMT  
		Size: 81.9 MB (81910568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95b4db8b97f0744721fc8b5fef69b671779fd3a42a1032855a35c7ab6064f6d`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:a5c45baf758c848dc2b67cc63a910e60bc111deb52d22fa8435f134e929efbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c53580f871d71641d71f8835553c19809c672e908a7425b16a9bcddfa8a6ea6`

```dockerfile
```

-	Layers:
	-	`sha256:c838e8f58a91f2204f082e8411cfaa2dca41a9b976a3267f6141ed8041f5f045`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 1.1 MB (1144725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8d0f0d7a708eff68fc77e009cc1622b08722750937d0069d56a552f26ff246`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.2`

```console
$ docker pull telegraf@sha256:236f73ce796622bda52135f8203f900dcbdd41aa46894fd6074b948ce397f3a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.2` - linux; amd64

```console
$ docker pull telegraf@sha256:bacd6eaed5f6586e095101a2533bb06fcee37bd842d2c645fdc9265844ab825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.4 MB (180392107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd76b77a421ae0174a6eeed9794bbfa2add6b76056ed9cb655a97ff84449443`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a3b580249d83ee0b51bb931b3342de6f62d58ed6defa5dc81bc219ebbc21e9`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 19.3 MB (19290731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8991750fb0796f258d020a1b8d2e0579b17cb80e7abb5eac893147bd54ee0972`  
		Last Modified: Wed, 21 Oct 2026 01:42:14 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcec5d7aaa9cb7549e35d7a26b0fdbd6a8e590b0f8ecadfdc402f083e8da2233`  
		Last Modified: Wed, 21 Oct 2026 01:42:17 GMT  
		Size: 88.7 MB (88701859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca0e093695b8a3b0a9c779023d3b22fe7ba7ba7d195dc9fcee4c26cf1cf9ee`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:306527f0a14becbdeb375b23444222c5d72cebb1d9cea7af08c9bfb3cd10d5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dc7beaf133efaeb506bb6740a9d37af31e0b173f785ca23af248b03bd69860`

```dockerfile
```

-	Layers:
	-	`sha256:6f96b081c091a08d0097eabae205e557f75b12b74a144f2a37a3badc5175fa6a`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 6.7 MB (6690012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f3b3c568e560d3417b7afd9de5bbdc9de4aa2c9d23b8f2a3b8ba1bd400c418`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.2` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:fab779bcf97e10cefa4e26ac6da421c0b8c744f8ae8e40450f7124e48808409f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166486200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824ada4ae3aaba0ad463203cce70481910a5faaaeb0a6990d1dddc3d63246954`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:39 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 28 Oct 2026 03:47:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 03:47:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 03:47:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854c7e1655ac7fd2716c7905772756a87ab56f67c54524701b6c6cbe3c34923b`  
		Last Modified: Wed, 28 Oct 2026 03:48:08 GMT  
		Size: 18.0 MB (17961308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a660f648cab9d11e85b2ea4d241fbde79f50a998767e30c0d63ae45907689f84`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa5a1c0a2ceadcaf2f13eae2605a853a80b4ce2e9a292318c7679a7159d380a0`  
		Last Modified: Wed, 28 Oct 2026 03:48:09 GMT  
		Size: 82.5 MB (82527763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3994233b125abba8aedde27bca1dac9675191cd400d125729569df49f512be`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:e33772d6e1823e06fc765a1438e2c39f019860e066e1458e117c827bbf1585bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:001fbe11ba9225baa9c4c2c2545248c8e891b0a0b9f2a01b0bd85a4a9c9e83fd`

```dockerfile
```

-	Layers:
	-	`sha256:88de9a9ac6118d992293b58e608c06bc493233cf8d2c60d5bd1b9e9605c4d9db`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 6.7 MB (6684646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b945f3bb77a5d1f2b9497aba2207fed0a7db84fbf8b1b4696da3e08fb334a71`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.2` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a08d378c99c31c1e0b463a57d4926932515e37c08417d7e5376653f26dc9eadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170287013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c1f4720dadda8e33fc7e2edbe11410ba0ba299fdc5ab00e49271ab7e6e8bb7`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:39 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 28 Oct 2026 02:50:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:50:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 02:50:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58181e3d4f52fb1888f4ee7d3293f6bb8559bb9449991501017d0ac0888bc6f`  
		Last Modified: Wed, 28 Oct 2026 02:51:03 GMT  
		Size: 19.2 MB (19194254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2bbf0b3e1985cda36383ebd29d18ed2ba781d10fcc5f2d4bcc68961d0d0593`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449fb77eddc25c103929a974ae83aff2bbd1fd5a4e763c33b0b2af70d0a6705c`  
		Last Modified: Wed, 28 Oct 2026 02:51:05 GMT  
		Size: 79.2 MB (79242119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4aea23a78f0b42ebfb2389e6a7d676a3b8f91bb132b3a62e84409aa4f90751`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2` - unknown; unknown

```console
$ docker pull telegraf@sha256:dbbbe73f9018045065c6d847936aed7febd54d88c3fe2c2949ef179b74431656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37dad1e69c7445858f1f07264015418a49875cd2858d81a178e160b768db9907`

```dockerfile
```

-	Layers:
	-	`sha256:23b8ec0205ee7e3fd8645dac06d0956a383c806e81ff59ad11f1f8bb10c337f5`  
		Last Modified: Wed, 28 Oct 2026 02:51:03 GMT  
		Size: 6.7 MB (6689924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8dc68c777357cfff03632445d390e3b869486d1cebcb8c1dd22168dad7b772f`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.2-alpine`

```console
$ docker pull telegraf@sha256:4a62bd294bf2f4c1e3781194fe7b625b7e527244eeb31afd5758227914a16229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.2-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ee80b97dbc73e75928b23bb44f9d37dc3c24c04d103a267391d57bbf0c715ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97826055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc0d37fa5bccd21fc4cf4cd070eaeab6a4cb44b5c3b06928fec4e455f5a7fec`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:32 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:32:39 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdd54f6f4e59c174324eef02571a6fff31e5408c96e950ff1a42c6d235670ea`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e931821e2cc8c823c295ba8d489b41179d43630c8091db45f32effed5b738bc`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61121e35107c11d0b1abbe121f15b57b5ed18de214095f46dfd4658b6a7a3255`  
		Last Modified: Wed, 21 Oct 2026 21:32:58 GMT  
		Size: 91.4 MB (91394651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed113135fee29685855d1d12b379a3ff0865e9e4e2af4eb37a0308b94d6e3682`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:24370ef8ec3af16c68e7dbdb589c3c68c4cfd5204e7e41dcb3de582848765ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374408f3e19a4f55646a2c989fe7ba6261884fe7a75c06d9580fba85911025eb`

```dockerfile
```

-	Layers:
	-	`sha256:234de45d5bd34b8d5f400a2ce4dd0d707c98f73e92e256951f00fc6883243470`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 1.1 MB (1149736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ab44257c63fde9552a3d1b6eb26ee1f634311eaec002b2ea452a902bd798bf`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.2-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:794fa91887f5927901ec362681fdbd16f2d4fb64b96e6fbb14804edacd1c57e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88729512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886a355101435218d399e322d16467b264d85f1b8bedb6ac6c52638e06681563`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:35 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:34:42 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b3ba44e1545643b0259d257983328bc9ec4bea27ccd4789ea8da8c5a2d6d2`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d14b83e01daa841bd6a6a638b9f776432f0f34b855c0ecbca9f320ff10452bf`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 2.6 MB (2628536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09036a9a31093b38070c389fc413ab77ed61441d82ba90e997281bfc6fbcc14`  
		Last Modified: Wed, 21 Oct 2026 21:34:59 GMT  
		Size: 81.9 MB (81910568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95b4db8b97f0744721fc8b5fef69b671779fd3a42a1032855a35c7ab6064f6d`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.2-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:a5c45baf758c848dc2b67cc63a910e60bc111deb52d22fa8435f134e929efbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c53580f871d71641d71f8835553c19809c672e908a7425b16a9bcddfa8a6ea6`

```dockerfile
```

-	Layers:
	-	`sha256:c838e8f58a91f2204f082e8411cfaa2dca41a9b976a3267f6141ed8041f5f045`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 1.1 MB (1144725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8d0f0d7a708eff68fc77e009cc1622b08722750937d0069d56a552f26ff246`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:4a62bd294bf2f4c1e3781194fe7b625b7e527244eeb31afd5758227914a16229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ee80b97dbc73e75928b23bb44f9d37dc3c24c04d103a267391d57bbf0c715ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97826055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc0d37fa5bccd21fc4cf4cd070eaeab6a4cb44b5c3b06928fec4e455f5a7fec`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:32 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:32:39 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdd54f6f4e59c174324eef02571a6fff31e5408c96e950ff1a42c6d235670ea`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e931821e2cc8c823c295ba8d489b41179d43630c8091db45f32effed5b738bc`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61121e35107c11d0b1abbe121f15b57b5ed18de214095f46dfd4658b6a7a3255`  
		Last Modified: Wed, 21 Oct 2026 21:32:58 GMT  
		Size: 91.4 MB (91394651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed113135fee29685855d1d12b379a3ff0865e9e4e2af4eb37a0308b94d6e3682`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:24370ef8ec3af16c68e7dbdb589c3c68c4cfd5204e7e41dcb3de582848765ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374408f3e19a4f55646a2c989fe7ba6261884fe7a75c06d9580fba85911025eb`

```dockerfile
```

-	Layers:
	-	`sha256:234de45d5bd34b8d5f400a2ce4dd0d707c98f73e92e256951f00fc6883243470`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 1.1 MB (1149736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ab44257c63fde9552a3d1b6eb26ee1f634311eaec002b2ea452a902bd798bf`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:794fa91887f5927901ec362681fdbd16f2d4fb64b96e6fbb14804edacd1c57e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88729512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886a355101435218d399e322d16467b264d85f1b8bedb6ac6c52638e06681563`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:35 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:34:42 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b3ba44e1545643b0259d257983328bc9ec4bea27ccd4789ea8da8c5a2d6d2`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d14b83e01daa841bd6a6a638b9f776432f0f34b855c0ecbca9f320ff10452bf`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 2.6 MB (2628536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09036a9a31093b38070c389fc413ab77ed61441d82ba90e997281bfc6fbcc14`  
		Last Modified: Wed, 21 Oct 2026 21:34:59 GMT  
		Size: 81.9 MB (81910568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95b4db8b97f0744721fc8b5fef69b671779fd3a42a1032855a35c7ab6064f6d`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:a5c45baf758c848dc2b67cc63a910e60bc111deb52d22fa8435f134e929efbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c53580f871d71641d71f8835553c19809c672e908a7425b16a9bcddfa8a6ea6`

```dockerfile
```

-	Layers:
	-	`sha256:c838e8f58a91f2204f082e8411cfaa2dca41a9b976a3267f6141ed8041f5f045`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 1.1 MB (1144725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8d0f0d7a708eff68fc77e009cc1622b08722750937d0069d56a552f26ff246`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:236f73ce796622bda52135f8203f900dcbdd41aa46894fd6074b948ce397f3a9
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
$ docker pull telegraf@sha256:bacd6eaed5f6586e095101a2533bb06fcee37bd842d2c645fdc9265844ab825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.4 MB (180392107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd76b77a421ae0174a6eeed9794bbfa2add6b76056ed9cb655a97ff84449443`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a3b580249d83ee0b51bb931b3342de6f62d58ed6defa5dc81bc219ebbc21e9`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 19.3 MB (19290731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8991750fb0796f258d020a1b8d2e0579b17cb80e7abb5eac893147bd54ee0972`  
		Last Modified: Wed, 21 Oct 2026 01:42:14 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcec5d7aaa9cb7549e35d7a26b0fdbd6a8e590b0f8ecadfdc402f083e8da2233`  
		Last Modified: Wed, 21 Oct 2026 01:42:17 GMT  
		Size: 88.7 MB (88701859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca0e093695b8a3b0a9c779023d3b22fe7ba7ba7d195dc9fcee4c26cf1cf9ee`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:306527f0a14becbdeb375b23444222c5d72cebb1d9cea7af08c9bfb3cd10d5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dc7beaf133efaeb506bb6740a9d37af31e0b173f785ca23af248b03bd69860`

```dockerfile
```

-	Layers:
	-	`sha256:6f96b081c091a08d0097eabae205e557f75b12b74a144f2a37a3badc5175fa6a`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 6.7 MB (6690012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f3b3c568e560d3417b7afd9de5bbdc9de4aa2c9d23b8f2a3b8ba1bd400c418`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:fab779bcf97e10cefa4e26ac6da421c0b8c744f8ae8e40450f7124e48808409f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166486200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824ada4ae3aaba0ad463203cce70481910a5faaaeb0a6990d1dddc3d63246954`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:39 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 28 Oct 2026 03:47:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 03:47:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 03:47:49 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 03:47:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854c7e1655ac7fd2716c7905772756a87ab56f67c54524701b6c6cbe3c34923b`  
		Last Modified: Wed, 28 Oct 2026 03:48:08 GMT  
		Size: 18.0 MB (17961308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a660f648cab9d11e85b2ea4d241fbde79f50a998767e30c0d63ae45907689f84`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa5a1c0a2ceadcaf2f13eae2605a853a80b4ce2e9a292318c7679a7159d380a0`  
		Last Modified: Wed, 28 Oct 2026 03:48:09 GMT  
		Size: 82.5 MB (82527763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3994233b125abba8aedde27bca1dac9675191cd400d125729569df49f512be`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:e33772d6e1823e06fc765a1438e2c39f019860e066e1458e117c827bbf1585bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:001fbe11ba9225baa9c4c2c2545248c8e891b0a0b9f2a01b0bd85a4a9c9e83fd`

```dockerfile
```

-	Layers:
	-	`sha256:88de9a9ac6118d992293b58e608c06bc493233cf8d2c60d5bd1b9e9605c4d9db`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 6.7 MB (6684646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b945f3bb77a5d1f2b9497aba2207fed0a7db84fbf8b1b4696da3e08fb334a71`  
		Last Modified: Wed, 28 Oct 2026 03:48:07 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a08d378c99c31c1e0b463a57d4926932515e37c08417d7e5376653f26dc9eadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170287013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c1f4720dadda8e33fc7e2edbe11410ba0ba299fdc5ab00e49271ab7e6e8bb7`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:39 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:50:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 28 Oct 2026 02:50:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:50:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:50:45 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 02:50:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58181e3d4f52fb1888f4ee7d3293f6bb8559bb9449991501017d0ac0888bc6f`  
		Last Modified: Wed, 28 Oct 2026 02:51:03 GMT  
		Size: 19.2 MB (19194254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2bbf0b3e1985cda36383ebd29d18ed2ba781d10fcc5f2d4bcc68961d0d0593`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449fb77eddc25c103929a974ae83aff2bbd1fd5a4e763c33b0b2af70d0a6705c`  
		Last Modified: Wed, 28 Oct 2026 02:51:05 GMT  
		Size: 79.2 MB (79242119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4aea23a78f0b42ebfb2389e6a7d676a3b8f91bb132b3a62e84409aa4f90751`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:dbbbe73f9018045065c6d847936aed7febd54d88c3fe2c2949ef179b74431656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37dad1e69c7445858f1f07264015418a49875cd2858d81a178e160b768db9907`

```dockerfile
```

-	Layers:
	-	`sha256:23b8ec0205ee7e3fd8645dac06d0956a383c806e81ff59ad11f1f8bb10c337f5`  
		Last Modified: Wed, 28 Oct 2026 02:51:03 GMT  
		Size: 6.7 MB (6689924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8dc68c777357cfff03632445d390e3b869486d1cebcb8c1dd22168dad7b772f`  
		Last Modified: Wed, 28 Oct 2026 02:51:02 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
