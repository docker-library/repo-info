## `telegraf:latest`

```console
$ docker pull telegraf@sha256:695045186c69152ff71827ec0c4f40216fb10491597af71c00195d98be8c39f2
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
$ docker pull telegraf@sha256:9c656a6d7f58ae327fab266b0acba299bfb2ea0b4e0ac92e0b21b1919d1320ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181081795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a6927bad74b0c952fb9fac1aca13f0469e642a604bcab59a578b17716fe336`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:36:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:36:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:36:32 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 24 Nov 2026 05:36:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:36:32 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:36:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:36:32 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 05:36:32 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91366fbe23f78753b22d0dbdc826278a39a7c8a2652389eccda54e669d4f74a`  
		Last Modified: Tue, 24 Nov 2026 05:36:52 GMT  
		Size: 19.3 MB (19290626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af854690c2746d02725350d0e99ec38811d225ef1acfe73da4f97aa6e63b2c2f`  
		Last Modified: Tue, 24 Nov 2026 05:36:51 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1f8ba01be7f1fb8c4b0cc404e8e83fa7bba1dcb927285bc51f5488453389f5`  
		Last Modified: Tue, 24 Nov 2026 05:36:53 GMT  
		Size: 89.4 MB (89385826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46466dcea0471f844bf2109c1e664f129a6fda29b5342b8a9c8d96e7c29d71d5`  
		Last Modified: Tue, 24 Nov 2026 05:36:51 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:6ca62970133d8282e5bcf5bcc0af59fce7dd4cec1686a3ff6201dec686d18c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237a4ce92099e724b281b8360430c5567cab52e61a96ea79d0fb4e905d87b945`

```dockerfile
```

-	Layers:
	-	`sha256:484bf33c1633b02f6c80ba0b9a49fc95f14ad27ac8e74762c20251f1c022e15b`  
		Last Modified: Tue, 24 Nov 2026 05:36:51 GMT  
		Size: 6.7 MB (6689368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cec85e973875282d2975a1b82228b3a0f60eb4f5192ad6f1852aee79cd54ec5`  
		Last Modified: Tue, 24 Nov 2026 05:36:50 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:6319bc43abdb83a5b1a306f6186529bf5d51e4535895959063ecad239d47357f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167066743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566bd44ef9044d794d43876b735615cadef0ccd2e388d24d9e5da1e033ea3270`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:04 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:05 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 06:42:12 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 24 Nov 2026 06:42:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 06:42:12 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 06:42:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 06:42:12 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 06:42:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6ac0d814892f590af7533060e7d411f4b069b41846d6b77643c1ec671212d`  
		Last Modified: Tue, 24 Nov 2026 05:16:06 GMT  
		Size: 21.8 MB (21769445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d2e249beca6597f5be9dda27631077681cc1b261a41f72823decb2379f416b`  
		Last Modified: Tue, 24 Nov 2026 06:42:31 GMT  
		Size: 18.0 MB (17961248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d09593449d7afbf1705e6cd2c30af942e1174a3d33f443c33358bc047b369e`  
		Last Modified: Tue, 24 Nov 2026 06:42:30 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db72f5c8a3a11749b0c435a08a2bd8a8f8663dbc99dda836102bae4c8e4ebc5`  
		Last Modified: Tue, 24 Nov 2026 06:42:33 GMT  
		Size: 83.1 MB (83107136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b873a3f378d22f1274b44bdabbd12958efeccffbe14c8363af769abe4cfab26`  
		Last Modified: Tue, 24 Nov 2026 06:42:30 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:e2171158ee7183205d457903dbf725336ef7a4fe045186ab6c25278d7d937a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c0cf5e127085a14fdef593deeabbf3c63098e1e2fecbe60ec8b00ec6010b76`

```dockerfile
```

-	Layers:
	-	`sha256:52d9c08eb3033f9a29e5b02826c55571878714e401e5f3659ac59ef38436fc99`  
		Last Modified: Tue, 24 Nov 2026 06:42:31 GMT  
		Size: 6.7 MB (6684778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b03a7d2fad4a2212e25b7fcd41dca346d61d92f59805def43677179ac95d7437`  
		Last Modified: Tue, 24 Nov 2026 06:42:30 GMT  
		Size: 14.9 KB (14867 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:62f00db9e6e0ed934e4e1ab9d95d5cb94d72becd7f61ccd7f9507bd7c1f4dfb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170865333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6f07ec05578b2655f3db0f11462b93d81c08049c8f0eb9c34fe889ff9c3373`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:48:55 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:48:55 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:49:00 GMT
ENV TELEGRAF_VERSION=1.40.3
# Tue, 24 Nov 2026 05:49:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:49:00 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:49:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:49:00 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 05:49:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44239c12c80b04161803b6a92181996eb2c7e4ec23cffcd39e0c82a696c6a50`  
		Last Modified: Tue, 24 Nov 2026 05:49:20 GMT  
		Size: 19.2 MB (19194063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b94df205a3d6d8587b6ea691426f393fc555f8cc7ba2b141fa9c9fdbdb7ad1`  
		Last Modified: Tue, 24 Nov 2026 05:49:19 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9979a7644a34e1b6b9899ad83f79e1c72b36aae63a4bc9ecd5f72c42a7b8d50`  
		Last Modified: Tue, 24 Nov 2026 05:49:21 GMT  
		Size: 79.8 MB (79812935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfd8ddb2ed31623d7494517389684562e39a2af2fb01a0ea905f4d16d780277`  
		Last Modified: Tue, 24 Nov 2026 05:49:19 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:7e6382394ed34bc655afcaf3d6ffcaba437b14c630116d7ed595791e86914130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bfb3f87c08307b46afb0b44ce6c4a3cc6bcd68002d906cf068cca61e01973c`

```dockerfile
```

-	Layers:
	-	`sha256:168cbc44b83dcd197b769e74f77bad6e448f414ca955b800277319a548594cd2`  
		Last Modified: Tue, 24 Nov 2026 05:49:19 GMT  
		Size: 6.7 MB (6690056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3411e185e6a28487a9e841bf65992400ec6a6f1ac3c594b2935f8c3b0f1b0f6b`  
		Last Modified: Tue, 24 Nov 2026 05:49:19 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
