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
-	[`telegraf:1.40.3`](#telegraf1403)
-	[`telegraf:1.40.3-alpine`](#telegraf1403-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:c1bfe7177d59140f7ef2f98f9b977825479aba735e7ae13930f910bf2d35985a
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
$ docker pull telegraf@sha256:57eed7c11cff17461d1b8563e074f1d7c3351e2bc0a897f9541281088b010c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174865055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b816db92904b21e432b9a2c6474fc216e8ea3f9b97be00777d7de69cc3f3f0dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:39:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:39:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:39:19 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 28 Oct 2026 02:39:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:39:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:39:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:39:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 02:39:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8da7d8e5a2047a13aba70ac2772f87e3ea7e718154a22fb6e041492e7f3457`  
		Last Modified: Wed, 28 Oct 2026 02:39:38 GMT  
		Size: 19.0 MB (18950462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e1414a35179bdfd0e33814e2d00b4c16daa53839cde8925aadd580e1091112d`  
		Last Modified: Wed, 28 Oct 2026 02:39:37 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e824b5f044a49ecad316de447234cae95071c0129f42ad7cc43a3d5dae8e1b`  
		Last Modified: Wed, 28 Oct 2026 02:39:40 GMT  
		Size: 83.5 MB (83511100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36379d0dcd13de7a7cb10e2c6d058bdfa13c9898f276e6cc4baa74812323e27`  
		Last Modified: Wed, 28 Oct 2026 02:39:37 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:13e27e9413c67ea76fc5541237be6311703069651b0be3bf4304cb77830e0e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265fbd27e3122d8c0b0cdef8b764bc9a4b3887cdbd96a5d75911e66ac562de99`

```dockerfile
```

-	Layers:
	-	`sha256:aa275d5913a07b08714e4ba31632105704b602cbb15c9962eb4f63c95beb9caf`  
		Last Modified: Wed, 28 Oct 2026 02:39:38 GMT  
		Size: 6.7 MB (6676728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a881e23457ad48ff5541f3c7f15fd582b9b2f1038fc9a9e4c20d141ca76aba1b`  
		Last Modified: Wed, 28 Oct 2026 02:39:37 GMT  
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
$ docker pull telegraf@sha256:c1bfe7177d59140f7ef2f98f9b977825479aba735e7ae13930f910bf2d35985a
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
$ docker pull telegraf@sha256:57eed7c11cff17461d1b8563e074f1d7c3351e2bc0a897f9541281088b010c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174865055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b816db92904b21e432b9a2c6474fc216e8ea3f9b97be00777d7de69cc3f3f0dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:39:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:39:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:39:19 GMT
ENV TELEGRAF_VERSION=1.38.4
# Wed, 28 Oct 2026 02:39:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:39:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:39:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:39:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 02:39:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8da7d8e5a2047a13aba70ac2772f87e3ea7e718154a22fb6e041492e7f3457`  
		Last Modified: Wed, 28 Oct 2026 02:39:38 GMT  
		Size: 19.0 MB (18950462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e1414a35179bdfd0e33814e2d00b4c16daa53839cde8925aadd580e1091112d`  
		Last Modified: Wed, 28 Oct 2026 02:39:37 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e824b5f044a49ecad316de447234cae95071c0129f42ad7cc43a3d5dae8e1b`  
		Last Modified: Wed, 28 Oct 2026 02:39:40 GMT  
		Size: 83.5 MB (83511100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36379d0dcd13de7a7cb10e2c6d058bdfa13c9898f276e6cc4baa74812323e27`  
		Last Modified: Wed, 28 Oct 2026 02:39:37 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:13e27e9413c67ea76fc5541237be6311703069651b0be3bf4304cb77830e0e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265fbd27e3122d8c0b0cdef8b764bc9a4b3887cdbd96a5d75911e66ac562de99`

```dockerfile
```

-	Layers:
	-	`sha256:aa275d5913a07b08714e4ba31632105704b602cbb15c9962eb4f63c95beb9caf`  
		Last Modified: Wed, 28 Oct 2026 02:39:38 GMT  
		Size: 6.7 MB (6676728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a881e23457ad48ff5541f3c7f15fd582b9b2f1038fc9a9e4c20d141ca76aba1b`  
		Last Modified: Wed, 28 Oct 2026 02:39:37 GMT  
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
$ docker pull telegraf@sha256:2b9f809de4c86e99e8c3e80c875111229cc6efd75185a83e74641278aaf6b15a
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
$ docker pull telegraf@sha256:9ee3d9a3be82af10d129407e6870db035a7253c9ed84d0c1428a925d1754de24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177609474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690ad70b542df51bc6fa86ad6fd45dce55a2e6d03e6101c4ccfd5011842d7000`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:39:20 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:39:21 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:39:29 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 28 Oct 2026 02:39:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:39:29 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:39:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:39:30 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 02:39:30 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806b227bb499bbb342b75ad537c43acdc96ba6b0800efeeac0f1257001664ace`  
		Last Modified: Wed, 28 Oct 2026 02:39:50 GMT  
		Size: 19.3 MB (19290746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d5866d69c679102fe7aba50a9d647714a25f89b63b081f5b377a7c064d666f`  
		Last Modified: Wed, 28 Oct 2026 02:39:49 GMT  
		Size: 5.1 KB (5067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304908f880b7b2cc86ff4e95040dd753b32aa47c1bbab9759cd4d1cbb17390f4`  
		Last Modified: Wed, 28 Oct 2026 02:39:51 GMT  
		Size: 85.9 MB (85915222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b841995123454c3338025f0b835441ec17d25a2566d531de01730f0c164bb194`  
		Last Modified: Wed, 28 Oct 2026 02:39:49 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:c0db2084896802b7bdb746972d81d2a421446252f89cca2774d840ed5f4c7f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20660375cb348070a4b6f48ffd70b7c2a2d34e2bee8dd0a54103937b695fb5a2`

```dockerfile
```

-	Layers:
	-	`sha256:4fc0fde61dd1bba791a524b78c1e594d1e4fd986f8ddbc168d2fb3fe59b051f5`  
		Last Modified: Wed, 28 Oct 2026 02:39:49 GMT  
		Size: 6.7 MB (6686611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b0e733cf6fea15f98ef45205bfb9a1bb6ccda491024c325feadb833b85c1e0`  
		Last Modified: Wed, 28 Oct 2026 02:39:49 GMT  
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
$ docker pull telegraf@sha256:2b9f809de4c86e99e8c3e80c875111229cc6efd75185a83e74641278aaf6b15a
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
$ docker pull telegraf@sha256:9ee3d9a3be82af10d129407e6870db035a7253c9ed84d0c1428a925d1754de24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177609474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690ad70b542df51bc6fa86ad6fd45dce55a2e6d03e6101c4ccfd5011842d7000`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:39:20 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:39:21 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 28 Oct 2026 02:39:29 GMT
ENV TELEGRAF_VERSION=1.39.3
# Wed, 28 Oct 2026 02:39:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 28 Oct 2026 02:39:29 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 28 Oct 2026 02:39:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:39:30 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 28 Oct 2026 02:39:30 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806b227bb499bbb342b75ad537c43acdc96ba6b0800efeeac0f1257001664ace`  
		Last Modified: Wed, 28 Oct 2026 02:39:50 GMT  
		Size: 19.3 MB (19290746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d5866d69c679102fe7aba50a9d647714a25f89b63b081f5b377a7c064d666f`  
		Last Modified: Wed, 28 Oct 2026 02:39:49 GMT  
		Size: 5.1 KB (5067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304908f880b7b2cc86ff4e95040dd753b32aa47c1bbab9759cd4d1cbb17390f4`  
		Last Modified: Wed, 28 Oct 2026 02:39:51 GMT  
		Size: 85.9 MB (85915222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b841995123454c3338025f0b835441ec17d25a2566d531de01730f0c164bb194`  
		Last Modified: Wed, 28 Oct 2026 02:39:49 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:c0db2084896802b7bdb746972d81d2a421446252f89cca2774d840ed5f4c7f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20660375cb348070a4b6f48ffd70b7c2a2d34e2bee8dd0a54103937b695fb5a2`

```dockerfile
```

-	Layers:
	-	`sha256:4fc0fde61dd1bba791a524b78c1e594d1e4fd986f8ddbc168d2fb3fe59b051f5`  
		Last Modified: Wed, 28 Oct 2026 02:39:49 GMT  
		Size: 6.7 MB (6686611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b0e733cf6fea15f98ef45205bfb9a1bb6ccda491024c325feadb833b85c1e0`  
		Last Modified: Wed, 28 Oct 2026 02:39:49 GMT  
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
$ docker pull telegraf@sha256:235cff5a4a5b4162ffabcb1e04ccf88b2a26a190bbc2f1d37e910c9e0d2f8304
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
$ docker pull telegraf@sha256:47eabbc9af77955156a6d83b93ea76d86e00a7ec64c9ed6be1485eae72ef46f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181080092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e4a18d06acecf851cdd63f97ddd5d790bbd3d79d705ee714f2c8cf367989b9`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5077f3af9036afb050254852388d1326e05dd824b325295765decfed9c202a`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 19.3 MB (19290706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c89cca74d7e27e07806633cafb33592e5c11cbc0d63bf74136360f41722ac56`  
		Last Modified: Tue, 03 Nov 2026 00:26:35 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e440b040e0e1c82f887499cebc0a8151273a9a951af67f932b6699bec661019`  
		Last Modified: Tue, 03 Nov 2026 00:26:38 GMT  
		Size: 89.4 MB (89385893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2a063c125a2122506cafbd71eea8e14cfe0f8adb9198a668c8e223e2b9aeca`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:8a16555250c52ca5c2d1f8cb5ee9936c6851172ab836936488d71daf2ccee82c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d1e2a4126a94a4f43b1a44cc723aecac37ae9e889dc9730a01c7d3c92fac37`

```dockerfile
```

-	Layers:
	-	`sha256:5302df852e70299fff5ac1fea0b38819f55625b0f7cba8fbdbcde796d630f27c`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 6.7 MB (6689314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a60d73f149088720d5ec3a03aece804b86181e8c75ee807d60d345d193a3b92e`  
		Last Modified: Tue, 03 Nov 2026 00:26:35 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:108ad565afcf069d4ba0ec41f9c24ca5f36ba814d33f08b5c968839fffae4eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167065664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e4bb64c5f777480d391dde522e35bbfe692c6be1db62a065c56882fa3abe8b`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:27:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:27:18 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:27:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:27:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:24 GMT
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
	-	`sha256:14e77b446067b5e0a7a90b6c4e00b5373e279a1c6ff5a67feb825882838f46ba`  
		Last Modified: Tue, 03 Nov 2026 00:27:43 GMT  
		Size: 18.0 MB (17961346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed6d1eefda635fba2bb76bbe36a3ce9c303ae9da578b221ee85c44f4943d551`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a9a22a9f84a4d6c3d8efc487ed7ff519cf33dbb48c18acd26649f70213f054`  
		Last Modified: Tue, 03 Nov 2026 00:27:45 GMT  
		Size: 83.1 MB (83107174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bd4b6864fb8c4650d12d44e9fc4365130e51aeaf9da4df8b096cb4b5373524`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:a036d08f7dccc8dfa5761aa30dc14d62a0441c7ffdda0b8e57dffa0605717b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbae7f3c67403234cdcefbb9ada021d58837d57a1e42a55b83e691c6aab6299`

```dockerfile
```

-	Layers:
	-	`sha256:42d01f538b9d1be5ec8261ff1ceaa244218261290883edc228b7b44d58a9984d`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 6.7 MB (6684724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3a445beb4f93ccd90ae389f013f83c2ba0421d577186f579d304f6778b24b0a`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 14.9 KB (14866 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:780f6db8698a3bbb62551f94644ec8766c20f2b3a0bc2596a96c7cd69d9cb030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170857829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8acfcbb5acf754f8d01e88ce16c4f5b0992ef788d0c8a4af5ab06abf2811aff9`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:10 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:20 GMT
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
	-	`sha256:33f7ca3f912bbe6d470f486cba946b9ff4c3d486159f92c262ec139b6cd6f732`  
		Last Modified: Tue, 03 Nov 2026 00:26:40 GMT  
		Size: 19.2 MB (19194229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48578bc76af62103e41dace98b09ebe914231dfd56e41511e3bc6f8fe509f683`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfeaea4b058bb7fe894f34164a722e4940b816265dd9c2cdba8f3b1765e1370`  
		Last Modified: Tue, 03 Nov 2026 00:26:41 GMT  
		Size: 79.8 MB (79812976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1470717672fd5ae2222109d05fb05f40eadfb1b08d805748fb0f73ccae0fa6`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:767605c02280e83d2dcff1a203f7cc707d3f16bccc871139aaa51d92bd03fb15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094ed2adf0ab8c0da75675d3f5a7e256743db4c83e35dcea95c263927273f7c7`

```dockerfile
```

-	Layers:
	-	`sha256:2df3850b41df679a0b0ebb8fd847567101f4b4d649bfba3a7f63020739a8faad`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 6.7 MB (6690002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a575f9701ead0ad57ea1c56cfdc39e0f72dde915c06e72c61c45ad14a43a673`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:6d20820eeb3cfdbbd33b9040fded5898ed15f552836362836d9a8f00884ac1ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:8be8479838465980a4f0ea7428f092b0645b6969a29793bce96631e17a3c2fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98515948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc868fd10752e3d291dab4d67210a10dce69a38f454076a29bfc3451406799f3`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:25:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:06 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:06 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6a0c7358c35c98329d906f0eed1955643584f66d227cd5643f81a03928ae51`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea03f9c115db587229808ce1e4c83e4f8e5ed005563df8c90887d00ebd4f9de`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 2.6 MB (2578274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef70af7db1d093ecaa4e540cbebb009e0861c2c1337714acc8c188ec3b25718`  
		Last Modified: Tue, 03 Nov 2026 00:26:25 GMT  
		Size: 92.1 MB (92084534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc06242deba1530fd16e8da1c987a9090623b672ee32d5b65251122016aa055`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4e1be938cf14177fb03e33952aaf65de736514f8f1a907c57312f94db47ded11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec9492dd2a9e4d4bf6467fb97803bd9b11b9f51a9cdaf171fdb868d81593fab`

```dockerfile
```

-	Layers:
	-	`sha256:930f0a75fed6c8ded3a5c7b4abd48c9a638879bc8c3df470139b501179d895d3`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 1.1 MB (1149814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fb4e170ec012fde9b5913c92959092029bb9492761e5038f15934f04d915513`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:1940aea11b00f98e69ed0bffb5e4414c27d7ba12d801c3bd597f52c3a050e245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89316472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033ea083688e3b37ec74b92356fa50ad1222f083c14b829b45c477a41f51ac8a`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:25:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 00:25:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:08 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:08 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44de443d9276be66c37cb853902e871a9eaf5d8a5b2d6851ee908f52b1233a34`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705db6653b577b182661dd110d38fb7c1dad28648f7f093d29c2240840d63f83`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 2.6 MB (2628593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e382bcc8625a03fa2d2ebba162eab551020cdec72f37f16ddb7e5ffc68cdb6`  
		Last Modified: Tue, 03 Nov 2026 00:26:24 GMT  
		Size: 82.5 MB (82497472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b398c48424e04b555ce8011f94889dc5fdc924fe0b3d9881492193f052d7188`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:be78617afbf2689870cadd29e29e4b7cbb2b29828d70c752d511a7e01b429a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96c0d3197e2a0c20eaf455450484b07c10b5a6ea31086a2ef49d3ff8c9f3a4b`

```dockerfile
```

-	Layers:
	-	`sha256:94f746a9e80c8ed4c32edc04b4656d2ae6c9e92896fcd580083e1aed7d0506a2`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 1.1 MB (1144803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dd1e59a80705bf0f0c666983a036f200e267715aba2d221b97ca4853bb06a83`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.3`

```console
$ docker pull telegraf@sha256:235cff5a4a5b4162ffabcb1e04ccf88b2a26a190bbc2f1d37e910c9e0d2f8304
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.3` - linux; amd64

```console
$ docker pull telegraf@sha256:47eabbc9af77955156a6d83b93ea76d86e00a7ec64c9ed6be1485eae72ef46f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181080092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e4a18d06acecf851cdd63f97ddd5d790bbd3d79d705ee714f2c8cf367989b9`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5077f3af9036afb050254852388d1326e05dd824b325295765decfed9c202a`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 19.3 MB (19290706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c89cca74d7e27e07806633cafb33592e5c11cbc0d63bf74136360f41722ac56`  
		Last Modified: Tue, 03 Nov 2026 00:26:35 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e440b040e0e1c82f887499cebc0a8151273a9a951af67f932b6699bec661019`  
		Last Modified: Tue, 03 Nov 2026 00:26:38 GMT  
		Size: 89.4 MB (89385893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2a063c125a2122506cafbd71eea8e14cfe0f8adb9198a668c8e223e2b9aeca`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:8a16555250c52ca5c2d1f8cb5ee9936c6851172ab836936488d71daf2ccee82c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d1e2a4126a94a4f43b1a44cc723aecac37ae9e889dc9730a01c7d3c92fac37`

```dockerfile
```

-	Layers:
	-	`sha256:5302df852e70299fff5ac1fea0b38819f55625b0f7cba8fbdbcde796d630f27c`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 6.7 MB (6689314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a60d73f149088720d5ec3a03aece804b86181e8c75ee807d60d345d193a3b92e`  
		Last Modified: Tue, 03 Nov 2026 00:26:35 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:108ad565afcf069d4ba0ec41f9c24ca5f36ba814d33f08b5c968839fffae4eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167065664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e4bb64c5f777480d391dde522e35bbfe692c6be1db62a065c56882fa3abe8b`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:27:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:27:18 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:27:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:27:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:24 GMT
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
	-	`sha256:14e77b446067b5e0a7a90b6c4e00b5373e279a1c6ff5a67feb825882838f46ba`  
		Last Modified: Tue, 03 Nov 2026 00:27:43 GMT  
		Size: 18.0 MB (17961346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed6d1eefda635fba2bb76bbe36a3ce9c303ae9da578b221ee85c44f4943d551`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a9a22a9f84a4d6c3d8efc487ed7ff519cf33dbb48c18acd26649f70213f054`  
		Last Modified: Tue, 03 Nov 2026 00:27:45 GMT  
		Size: 83.1 MB (83107174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bd4b6864fb8c4650d12d44e9fc4365130e51aeaf9da4df8b096cb4b5373524`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:a036d08f7dccc8dfa5761aa30dc14d62a0441c7ffdda0b8e57dffa0605717b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbae7f3c67403234cdcefbb9ada021d58837d57a1e42a55b83e691c6aab6299`

```dockerfile
```

-	Layers:
	-	`sha256:42d01f538b9d1be5ec8261ff1ceaa244218261290883edc228b7b44d58a9984d`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 6.7 MB (6684724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3a445beb4f93ccd90ae389f013f83c2ba0421d577186f579d304f6778b24b0a`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 14.9 KB (14866 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:780f6db8698a3bbb62551f94644ec8766c20f2b3a0bc2596a96c7cd69d9cb030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170857829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8acfcbb5acf754f8d01e88ce16c4f5b0992ef788d0c8a4af5ab06abf2811aff9`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:10 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:20 GMT
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
	-	`sha256:33f7ca3f912bbe6d470f486cba946b9ff4c3d486159f92c262ec139b6cd6f732`  
		Last Modified: Tue, 03 Nov 2026 00:26:40 GMT  
		Size: 19.2 MB (19194229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48578bc76af62103e41dace98b09ebe914231dfd56e41511e3bc6f8fe509f683`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfeaea4b058bb7fe894f34164a722e4940b816265dd9c2cdba8f3b1765e1370`  
		Last Modified: Tue, 03 Nov 2026 00:26:41 GMT  
		Size: 79.8 MB (79812976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1470717672fd5ae2222109d05fb05f40eadfb1b08d805748fb0f73ccae0fa6`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:767605c02280e83d2dcff1a203f7cc707d3f16bccc871139aaa51d92bd03fb15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094ed2adf0ab8c0da75675d3f5a7e256743db4c83e35dcea95c263927273f7c7`

```dockerfile
```

-	Layers:
	-	`sha256:2df3850b41df679a0b0ebb8fd847567101f4b4d649bfba3a7f63020739a8faad`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 6.7 MB (6690002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a575f9701ead0ad57ea1c56cfdc39e0f72dde915c06e72c61c45ad14a43a673`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.3-alpine`

```console
$ docker pull telegraf@sha256:6d20820eeb3cfdbbd33b9040fded5898ed15f552836362836d9a8f00884ac1ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:8be8479838465980a4f0ea7428f092b0645b6969a29793bce96631e17a3c2fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98515948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc868fd10752e3d291dab4d67210a10dce69a38f454076a29bfc3451406799f3`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:25:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:06 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:06 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6a0c7358c35c98329d906f0eed1955643584f66d227cd5643f81a03928ae51`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea03f9c115db587229808ce1e4c83e4f8e5ed005563df8c90887d00ebd4f9de`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 2.6 MB (2578274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef70af7db1d093ecaa4e540cbebb009e0861c2c1337714acc8c188ec3b25718`  
		Last Modified: Tue, 03 Nov 2026 00:26:25 GMT  
		Size: 92.1 MB (92084534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc06242deba1530fd16e8da1c987a9090623b672ee32d5b65251122016aa055`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4e1be938cf14177fb03e33952aaf65de736514f8f1a907c57312f94db47ded11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec9492dd2a9e4d4bf6467fb97803bd9b11b9f51a9cdaf171fdb868d81593fab`

```dockerfile
```

-	Layers:
	-	`sha256:930f0a75fed6c8ded3a5c7b4abd48c9a638879bc8c3df470139b501179d895d3`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 1.1 MB (1149814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fb4e170ec012fde9b5913c92959092029bb9492761e5038f15934f04d915513`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:1940aea11b00f98e69ed0bffb5e4414c27d7ba12d801c3bd597f52c3a050e245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89316472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033ea083688e3b37ec74b92356fa50ad1222f083c14b829b45c477a41f51ac8a`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:25:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 00:25:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:08 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:08 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44de443d9276be66c37cb853902e871a9eaf5d8a5b2d6851ee908f52b1233a34`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705db6653b577b182661dd110d38fb7c1dad28648f7f093d29c2240840d63f83`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 2.6 MB (2628593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e382bcc8625a03fa2d2ebba162eab551020cdec72f37f16ddb7e5ffc68cdb6`  
		Last Modified: Tue, 03 Nov 2026 00:26:24 GMT  
		Size: 82.5 MB (82497472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b398c48424e04b555ce8011f94889dc5fdc924fe0b3d9881492193f052d7188`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:be78617afbf2689870cadd29e29e4b7cbb2b29828d70c752d511a7e01b429a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96c0d3197e2a0c20eaf455450484b07c10b5a6ea31086a2ef49d3ff8c9f3a4b`

```dockerfile
```

-	Layers:
	-	`sha256:94f746a9e80c8ed4c32edc04b4656d2ae6c9e92896fcd580083e1aed7d0506a2`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 1.1 MB (1144803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dd1e59a80705bf0f0c666983a036f200e267715aba2d221b97ca4853bb06a83`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:6d20820eeb3cfdbbd33b9040fded5898ed15f552836362836d9a8f00884ac1ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:8be8479838465980a4f0ea7428f092b0645b6969a29793bce96631e17a3c2fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98515948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc868fd10752e3d291dab4d67210a10dce69a38f454076a29bfc3451406799f3`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:25:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:06 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:06 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:06 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6a0c7358c35c98329d906f0eed1955643584f66d227cd5643f81a03928ae51`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea03f9c115db587229808ce1e4c83e4f8e5ed005563df8c90887d00ebd4f9de`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 2.6 MB (2578274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef70af7db1d093ecaa4e540cbebb009e0861c2c1337714acc8c188ec3b25718`  
		Last Modified: Tue, 03 Nov 2026 00:26:25 GMT  
		Size: 92.1 MB (92084534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc06242deba1530fd16e8da1c987a9090623b672ee32d5b65251122016aa055`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:4e1be938cf14177fb03e33952aaf65de736514f8f1a907c57312f94db47ded11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec9492dd2a9e4d4bf6467fb97803bd9b11b9f51a9cdaf171fdb868d81593fab`

```dockerfile
```

-	Layers:
	-	`sha256:930f0a75fed6c8ded3a5c7b4abd48c9a638879bc8c3df470139b501179d895d3`  
		Last Modified: Tue, 03 Nov 2026 00:26:23 GMT  
		Size: 1.1 MB (1149814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fb4e170ec012fde9b5913c92959092029bb9492761e5038f15934f04d915513`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:1940aea11b00f98e69ed0bffb5e4414c27d7ba12d801c3bd597f52c3a050e245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89316472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033ea083688e3b37ec74b92356fa50ad1222f083c14b829b45c477a41f51ac8a`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:25:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 00:25:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:08 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:08 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44de443d9276be66c37cb853902e871a9eaf5d8a5b2d6851ee908f52b1233a34`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705db6653b577b182661dd110d38fb7c1dad28648f7f093d29c2240840d63f83`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 2.6 MB (2628593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e382bcc8625a03fa2d2ebba162eab551020cdec72f37f16ddb7e5ffc68cdb6`  
		Last Modified: Tue, 03 Nov 2026 00:26:24 GMT  
		Size: 82.5 MB (82497472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b398c48424e04b555ce8011f94889dc5fdc924fe0b3d9881492193f052d7188`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:be78617afbf2689870cadd29e29e4b7cbb2b29828d70c752d511a7e01b429a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96c0d3197e2a0c20eaf455450484b07c10b5a6ea31086a2ef49d3ff8c9f3a4b`

```dockerfile
```

-	Layers:
	-	`sha256:94f746a9e80c8ed4c32edc04b4656d2ae6c9e92896fcd580083e1aed7d0506a2`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 1.1 MB (1144803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dd1e59a80705bf0f0c666983a036f200e267715aba2d221b97ca4853bb06a83`  
		Last Modified: Tue, 03 Nov 2026 00:26:22 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:235cff5a4a5b4162ffabcb1e04ccf88b2a26a190bbc2f1d37e910c9e0d2f8304
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
$ docker pull telegraf@sha256:47eabbc9af77955156a6d83b93ea76d86e00a7ec64c9ed6be1485eae72ef46f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181080092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e4a18d06acecf851cdd63f97ddd5d790bbd3d79d705ee714f2c8cf367989b9`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:08 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:15 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5077f3af9036afb050254852388d1326e05dd824b325295765decfed9c202a`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 19.3 MB (19290706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c89cca74d7e27e07806633cafb33592e5c11cbc0d63bf74136360f41722ac56`  
		Last Modified: Tue, 03 Nov 2026 00:26:35 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e440b040e0e1c82f887499cebc0a8151273a9a951af67f932b6699bec661019`  
		Last Modified: Tue, 03 Nov 2026 00:26:38 GMT  
		Size: 89.4 MB (89385893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2a063c125a2122506cafbd71eea8e14cfe0f8adb9198a668c8e223e2b9aeca`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:8a16555250c52ca5c2d1f8cb5ee9936c6851172ab836936488d71daf2ccee82c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d1e2a4126a94a4f43b1a44cc723aecac37ae9e889dc9730a01c7d3c92fac37`

```dockerfile
```

-	Layers:
	-	`sha256:5302df852e70299fff5ac1fea0b38819f55625b0f7cba8fbdbcde796d630f27c`  
		Last Modified: Tue, 03 Nov 2026 00:26:36 GMT  
		Size: 6.7 MB (6689314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a60d73f149088720d5ec3a03aece804b86181e8c75ee807d60d345d193a3b92e`  
		Last Modified: Tue, 03 Nov 2026 00:26:35 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:108ad565afcf069d4ba0ec41f9c24ca5f36ba814d33f08b5c968839fffae4eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167065664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e4bb64c5f777480d391dde522e35bbfe692c6be1db62a065c56882fa3abe8b`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:27:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:27:18 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:27:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:27:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:24 GMT
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
	-	`sha256:14e77b446067b5e0a7a90b6c4e00b5373e279a1c6ff5a67feb825882838f46ba`  
		Last Modified: Tue, 03 Nov 2026 00:27:43 GMT  
		Size: 18.0 MB (17961346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed6d1eefda635fba2bb76bbe36a3ce9c303ae9da578b221ee85c44f4943d551`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a9a22a9f84a4d6c3d8efc487ed7ff519cf33dbb48c18acd26649f70213f054`  
		Last Modified: Tue, 03 Nov 2026 00:27:45 GMT  
		Size: 83.1 MB (83107174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bd4b6864fb8c4650d12d44e9fc4365130e51aeaf9da4df8b096cb4b5373524`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:a036d08f7dccc8dfa5761aa30dc14d62a0441c7ffdda0b8e57dffa0605717b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbae7f3c67403234cdcefbb9ada021d58837d57a1e42a55b83e691c6aab6299`

```dockerfile
```

-	Layers:
	-	`sha256:42d01f538b9d1be5ec8261ff1ceaa244218261290883edc228b7b44d58a9984d`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 6.7 MB (6684724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3a445beb4f93ccd90ae389f013f83c2ba0421d577186f579d304f6778b24b0a`  
		Last Modified: Tue, 03 Nov 2026 00:27:42 GMT  
		Size: 14.9 KB (14866 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:780f6db8698a3bbb62551f94644ec8766c20f2b3a0bc2596a96c7cd69d9cb030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170857829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8acfcbb5acf754f8d01e88ce16c4f5b0992ef788d0c8a4af5ab06abf2811aff9`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:10 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:26:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 03 Nov 2026 00:26:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 03 Nov 2026 00:26:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:26:20 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 03 Nov 2026 00:26:20 GMT
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
	-	`sha256:33f7ca3f912bbe6d470f486cba946b9ff4c3d486159f92c262ec139b6cd6f732`  
		Last Modified: Tue, 03 Nov 2026 00:26:40 GMT  
		Size: 19.2 MB (19194229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48578bc76af62103e41dace98b09ebe914231dfd56e41511e3bc6f8fe509f683`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfeaea4b058bb7fe894f34164a722e4940b816265dd9c2cdba8f3b1765e1370`  
		Last Modified: Tue, 03 Nov 2026 00:26:41 GMT  
		Size: 79.8 MB (79812976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1470717672fd5ae2222109d05fb05f40eadfb1b08d805748fb0f73ccae0fa6`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:767605c02280e83d2dcff1a203f7cc707d3f16bccc871139aaa51d92bd03fb15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094ed2adf0ab8c0da75675d3f5a7e256743db4c83e35dcea95c263927273f7c7`

```dockerfile
```

-	Layers:
	-	`sha256:2df3850b41df679a0b0ebb8fd847567101f4b4d649bfba3a7f63020739a8faad`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 6.7 MB (6690002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a575f9701ead0ad57ea1c56cfdc39e0f72dde915c06e72c61c45ad14a43a673`  
		Last Modified: Tue, 03 Nov 2026 00:26:39 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
