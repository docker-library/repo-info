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
-	[`telegraf:1.40-scratch`](#telegraf140-scratch)
-	[`telegraf:1.40.3`](#telegraf1403)
-	[`telegraf:1.40.3-alpine`](#telegraf1403-alpine)
-	[`telegraf:1.40.3-scratch`](#telegraf1403-scratch)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)
-	[`telegraf:scratch`](#telegrafscratch)

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:8a2e48826658eb5a40f3e23403edcd1c98e77847fdba8d8d7940130641df9c52
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
$ docker pull telegraf@sha256:d38f9653677454289109f4ddd990fe0c5a83f038769afa34ed872222a80db5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174867011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e5899cdcdbaf654f775df5c2f37cc43b03ef194168e25979d0218938963610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:47:26 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 08:47:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:47:26 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:47:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:47:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60550da1ac3ff9dc39c95164b5b083959c574d92d450b0dea79da36543658d4f`  
		Last Modified: Thu, 05 Nov 2026 08:47:44 GMT  
		Size: 19.0 MB (18950524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e008b56c5ce33c948b9894d4866785d01685607dba78c6f2c1a932aed74cd653`  
		Last Modified: Thu, 05 Nov 2026 08:47:42 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91bac476480de7d8f81f179c2fcfbf249308904b5143a13f1fce51ad06ca4ee`  
		Last Modified: Thu, 05 Nov 2026 08:47:45 GMT  
		Size: 83.5 MB (83511076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710ffcdb7eb2dba960b573f9230ec86eac53a257acae17e99ca030c39b104875`  
		Last Modified: Thu, 05 Nov 2026 08:47:43 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:58b3065448e958b7c10b2d9f3777dd25ddca98a831ceaca80bbda88801b5f4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a568211027c3b47dcc0571fb72b58a7be2bdf06404b583667ba491f1a8eaa95`

```dockerfile
```

-	Layers:
	-	`sha256:3b9eb2f6566bc83ae2c6cb76624edd48420237117f13e522bf6fec47ac8d6781`  
		Last Modified: Thu, 05 Nov 2026 08:47:43 GMT  
		Size: 6.7 MB (6676782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d581fbd19c74e3de81f4c0e181a3c737466f3b181814220de11501f8f2d14f6`  
		Last Modified: Thu, 05 Nov 2026 08:47:42 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:8913068a92ac75298478e2f51bd87e33fd075862bf43d32e3c409b424ec56859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161130478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8599f2762ea379bd474ef632a6b16e47fd2beb17b04e54ba01061b55dddd6c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 09:41:18 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 09:41:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 09:41:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 09:41:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 09:41:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 09:41:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3fdf7d4b4e78ea32af9113ad1563e8b693b8828f9c7fa6d95420a8e96733a1`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 17.7 MB (17703784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c72be16a094c06362c30808d340eca8845c69e53bf4fa56532548a5e0b377d`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd1e20d8e8ceec84a1ba2e77b7723871afdd2f548f202afa9f860817d656f95`  
		Last Modified: Thu, 05 Nov 2026 09:41:37 GMT  
		Size: 77.4 MB (77427910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cc37321da967f899fb644104729d67f0ee7f6c53b1260b760dfd0cb5117168`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:6d2d6658c1733d51b69ef8e8282ebfb11047bd2c82849a756ca0455339f59731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6685895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3b5d4df211f7fc9cddb2414160403390a2f9277f319a0905f5a3bc7fd14511`

```dockerfile
```

-	Layers:
	-	`sha256:a28b3ed85642a93fcd559e26e588fbfe0d5c23efcef375733a2bae6c833e485b`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 6.7 MB (6671379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89102b6deeedf9a96a4c69b0e952127c7721b725ca30d5a04b9a4450f55470a0`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 14.5 KB (14516 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:2e8cc23e256216b8148c1cf39649ce42ae126dfed8a4aa97da6284b3f5a14c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165225734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed9cc152fa147816cd8a667acdb6235d2724cce3e06fe7c4522bcfde3ab901b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:45:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:45:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:45:32 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 08:45:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:45:32 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:45:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:45:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:45:32 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2464fc80c7db41e5c593eb36c8cb6b35a6baa3b62347f1c7872e7234e5b25476`  
		Last Modified: Thu, 05 Nov 2026 08:45:52 GMT  
		Size: 18.9 MB (18890148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22dc857696ae560b5415a2e4dac98b0dbebb4ac0405cfe6818b7596d2e47fffd`  
		Last Modified: Thu, 05 Nov 2026 08:45:50 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327981ea57ff44bc0079fa0a219fd265e76598a5f4eb4195fc7eb72a4c30c82e`  
		Last Modified: Thu, 05 Nov 2026 08:45:59 GMT  
		Size: 74.5 MB (74476772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45776858de2af20f51b2c2d3cb758d1d9b675cd3025186cecb79ad860e889b1`  
		Last Modified: Thu, 05 Nov 2026 08:45:50 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:ada33c66dfbbeb70f84889cfdb125158b7ad95c386a3c9d2220e894fc6d165d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d876797b1732b9a4f11ec29f24b01e0af81ab2e431e9cf67664ae4b6cbbb422`

```dockerfile
```

-	Layers:
	-	`sha256:6f89c43aa6e9b2d3ba3eca539008701bbd04b636a933af4b035d8bd204a0aa71`  
		Last Modified: Thu, 05 Nov 2026 08:45:51 GMT  
		Size: 6.7 MB (6677458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa62c6f48117acd0f97928774bd3c118b7004b623091f5e6ce217f36a7219c47`  
		Last Modified: Thu, 05 Nov 2026 08:45:50 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38-alpine`

```console
$ docker pull telegraf@sha256:bc94044d9ee214919eb0bdaad9c7559cdd62c62514c25ce9a403e7be721da05c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d8288fa6920a959a0a69b67ccb5b743a1d823aa5f3f530272b7754ad55810865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19897e357369c2ae9ef139d2b0ee0dba2b717b4c0495792d3800956f538f380`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:36:52 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:37:00 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 19:37:00 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:37:00 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:37:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:37:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149656d3f82b03d030e8cdb22fa4cafeec6f30767eb1fc882c06f39f976a8613`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0391b209233e4343afd4463be0a341abb73f6505ee0b6e3ea94fc169afb68daf`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 2.6 MB (2571235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7423494269a795149e35708761a8a1531dd1e0138d93b72b91200c6e84ad1ea`  
		Last Modified: Thu, 05 Nov 2026 19:37:19 GMT  
		Size: 86.2 MB (86209110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b68a49f9014651ab01b3891a659ab968053ddd5a00645230f6fe83c0eebb26`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:17dec46dd6909761d8bcee4cece1cf3483be12b547c8769878377405e6438579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b173a71f8a0108b6fbd4c40c613de88375862062cdada551b07e470660f246`

```dockerfile
```

-	Layers:
	-	`sha256:35295918d23a142fbd19ae395f573977e3e0c130ceb795757ee64d3def201b14`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 1.1 MB (1141587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87edb4c0be510e8b4ca54ca9265ce9b8ecfc5e4a84c57ad3f82cfc552b7ac275`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 15.4 KB (15448 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:6fb5ace0d5abd3b608389915323008cfe5e735dd2857e61dc09683be0b45da72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83979179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd4df900ca719e6b9942a0f19e441ef4e807fff342bf77ed5858fc2b999e232`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:40:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:40:26 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 19:40:26 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:40:26 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:40:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:40:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:40:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a13cb037d0c958815b7819c92231db32f0971ee179d1e7f349e16792b42686`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a49ab9d21ccde29d2473603dc0bd929ab4b1ec8f6f9412e084fd3b6932f9481`  
		Last Modified: Thu, 05 Nov 2026 19:40:40 GMT  
		Size: 2.6 MB (2620259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e937c804262606e034502e154e8c0607fed4ce37c348f687a6ab4b71339fb7d`  
		Last Modified: Thu, 05 Nov 2026 19:40:41 GMT  
		Size: 77.2 MB (77167785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4435a137295c1d844f721d5d7e18e23ee411ec475dec103321cb38a0d733a`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:25ec4325fb74e0263eefb59472b3a3ff36f864be3b49beadf9da824034aac83b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae231b05da7c14c6f7206b5cf2fe9516f582fad3402dfe963ae2e96186d4927`

```dockerfile
```

-	Layers:
	-	`sha256:77139ccd0af6bd657094aecfe2706346cfb8aab6e90cd13336b4fd1864a1f5a4`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 1.1 MB (1136564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24efd60a90fd80825b8ca9f1cce7d57d7df278f9a6611ea45a2ab875c55c291f`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4`

```console
$ docker pull telegraf@sha256:8a2e48826658eb5a40f3e23403edcd1c98e77847fdba8d8d7940130641df9c52
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
$ docker pull telegraf@sha256:d38f9653677454289109f4ddd990fe0c5a83f038769afa34ed872222a80db5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174867011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e5899cdcdbaf654f775df5c2f37cc43b03ef194168e25979d0218938963610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:47:26 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 08:47:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:47:26 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:47:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:47:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60550da1ac3ff9dc39c95164b5b083959c574d92d450b0dea79da36543658d4f`  
		Last Modified: Thu, 05 Nov 2026 08:47:44 GMT  
		Size: 19.0 MB (18950524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e008b56c5ce33c948b9894d4866785d01685607dba78c6f2c1a932aed74cd653`  
		Last Modified: Thu, 05 Nov 2026 08:47:42 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91bac476480de7d8f81f179c2fcfbf249308904b5143a13f1fce51ad06ca4ee`  
		Last Modified: Thu, 05 Nov 2026 08:47:45 GMT  
		Size: 83.5 MB (83511076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710ffcdb7eb2dba960b573f9230ec86eac53a257acae17e99ca030c39b104875`  
		Last Modified: Thu, 05 Nov 2026 08:47:43 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:58b3065448e958b7c10b2d9f3777dd25ddca98a831ceaca80bbda88801b5f4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a568211027c3b47dcc0571fb72b58a7be2bdf06404b583667ba491f1a8eaa95`

```dockerfile
```

-	Layers:
	-	`sha256:3b9eb2f6566bc83ae2c6cb76624edd48420237117f13e522bf6fec47ac8d6781`  
		Last Modified: Thu, 05 Nov 2026 08:47:43 GMT  
		Size: 6.7 MB (6676782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d581fbd19c74e3de81f4c0e181a3c737466f3b181814220de11501f8f2d14f6`  
		Last Modified: Thu, 05 Nov 2026 08:47:42 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:8913068a92ac75298478e2f51bd87e33fd075862bf43d32e3c409b424ec56859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161130478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8599f2762ea379bd474ef632a6b16e47fd2beb17b04e54ba01061b55dddd6c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 09:41:18 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 09:41:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 09:41:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 09:41:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 09:41:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 09:41:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3fdf7d4b4e78ea32af9113ad1563e8b693b8828f9c7fa6d95420a8e96733a1`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 17.7 MB (17703784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c72be16a094c06362c30808d340eca8845c69e53bf4fa56532548a5e0b377d`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd1e20d8e8ceec84a1ba2e77b7723871afdd2f548f202afa9f860817d656f95`  
		Last Modified: Thu, 05 Nov 2026 09:41:37 GMT  
		Size: 77.4 MB (77427910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cc37321da967f899fb644104729d67f0ee7f6c53b1260b760dfd0cb5117168`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:6d2d6658c1733d51b69ef8e8282ebfb11047bd2c82849a756ca0455339f59731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6685895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3b5d4df211f7fc9cddb2414160403390a2f9277f319a0905f5a3bc7fd14511`

```dockerfile
```

-	Layers:
	-	`sha256:a28b3ed85642a93fcd559e26e588fbfe0d5c23efcef375733a2bae6c833e485b`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 6.7 MB (6671379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89102b6deeedf9a96a4c69b0e952127c7721b725ca30d5a04b9a4450f55470a0`  
		Last Modified: Thu, 05 Nov 2026 09:41:35 GMT  
		Size: 14.5 KB (14516 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:2e8cc23e256216b8148c1cf39649ce42ae126dfed8a4aa97da6284b3f5a14c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165225734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed9cc152fa147816cd8a667acdb6235d2724cce3e06fe7c4522bcfde3ab901b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:45:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:45:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:45:32 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 08:45:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:45:32 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:45:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:45:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:45:32 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2464fc80c7db41e5c593eb36c8cb6b35a6baa3b62347f1c7872e7234e5b25476`  
		Last Modified: Thu, 05 Nov 2026 08:45:52 GMT  
		Size: 18.9 MB (18890148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22dc857696ae560b5415a2e4dac98b0dbebb4ac0405cfe6818b7596d2e47fffd`  
		Last Modified: Thu, 05 Nov 2026 08:45:50 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327981ea57ff44bc0079fa0a219fd265e76598a5f4eb4195fc7eb72a4c30c82e`  
		Last Modified: Thu, 05 Nov 2026 08:45:59 GMT  
		Size: 74.5 MB (74476772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45776858de2af20f51b2c2d3cb758d1d9b675cd3025186cecb79ad860e889b1`  
		Last Modified: Thu, 05 Nov 2026 08:45:50 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:ada33c66dfbbeb70f84889cfdb125158b7ad95c386a3c9d2220e894fc6d165d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d876797b1732b9a4f11ec29f24b01e0af81ab2e431e9cf67664ae4b6cbbb422`

```dockerfile
```

-	Layers:
	-	`sha256:6f89c43aa6e9b2d3ba3eca539008701bbd04b636a933af4b035d8bd204a0aa71`  
		Last Modified: Thu, 05 Nov 2026 08:45:51 GMT  
		Size: 6.7 MB (6677458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa62c6f48117acd0f97928774bd3c118b7004b623091f5e6ce217f36a7219c47`  
		Last Modified: Thu, 05 Nov 2026 08:45:50 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4-alpine`

```console
$ docker pull telegraf@sha256:bc94044d9ee214919eb0bdaad9c7559cdd62c62514c25ce9a403e7be721da05c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d8288fa6920a959a0a69b67ccb5b743a1d823aa5f3f530272b7754ad55810865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19897e357369c2ae9ef139d2b0ee0dba2b717b4c0495792d3800956f538f380`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:36:52 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:37:00 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 19:37:00 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:37:00 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:37:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:37:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149656d3f82b03d030e8cdb22fa4cafeec6f30767eb1fc882c06f39f976a8613`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0391b209233e4343afd4463be0a341abb73f6505ee0b6e3ea94fc169afb68daf`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 2.6 MB (2571235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7423494269a795149e35708761a8a1531dd1e0138d93b72b91200c6e84ad1ea`  
		Last Modified: Thu, 05 Nov 2026 19:37:19 GMT  
		Size: 86.2 MB (86209110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b68a49f9014651ab01b3891a659ab968053ddd5a00645230f6fe83c0eebb26`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:17dec46dd6909761d8bcee4cece1cf3483be12b547c8769878377405e6438579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b173a71f8a0108b6fbd4c40c613de88375862062cdada551b07e470660f246`

```dockerfile
```

-	Layers:
	-	`sha256:35295918d23a142fbd19ae395f573977e3e0c130ceb795757ee64d3def201b14`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 1.1 MB (1141587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87edb4c0be510e8b4ca54ca9265ce9b8ecfc5e4a84c57ad3f82cfc552b7ac275`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 15.4 KB (15448 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:6fb5ace0d5abd3b608389915323008cfe5e735dd2857e61dc09683be0b45da72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83979179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd4df900ca719e6b9942a0f19e441ef4e807fff342bf77ed5858fc2b999e232`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:40:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:40:26 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 05 Nov 2026 19:40:26 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:40:26 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:40:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:40:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:40:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a13cb037d0c958815b7819c92231db32f0971ee179d1e7f349e16792b42686`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a49ab9d21ccde29d2473603dc0bd929ab4b1ec8f6f9412e084fd3b6932f9481`  
		Last Modified: Thu, 05 Nov 2026 19:40:40 GMT  
		Size: 2.6 MB (2620259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e937c804262606e034502e154e8c0607fed4ce37c348f687a6ab4b71339fb7d`  
		Last Modified: Thu, 05 Nov 2026 19:40:41 GMT  
		Size: 77.2 MB (77167785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4435a137295c1d844f721d5d7e18e23ee411ec475dec103321cb38a0d733a`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:25ec4325fb74e0263eefb59472b3a3ff36f864be3b49beadf9da824034aac83b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae231b05da7c14c6f7206b5cf2fe9516f582fad3402dfe963ae2e96186d4927`

```dockerfile
```

-	Layers:
	-	`sha256:77139ccd0af6bd657094aecfe2706346cfb8aab6e90cd13336b4fd1864a1f5a4`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 1.1 MB (1136564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24efd60a90fd80825b8ca9f1cce7d57d7df278f9a6611ea45a2ab875c55c291f`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39`

```console
$ docker pull telegraf@sha256:cc44f85b4124428a1fecbed842edcaf574e9b2b3c82330c36a838439a32d4a4e
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
$ docker pull telegraf@sha256:04b768d06ccc05e46f8b9b7195a71bf4378c10330ce254ca4a077f57a29cf4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177611343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16e9eb715803f2ee71490daf2ee4a6a42fc6fafde0b1b7614ccd95e546e43c38`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:47:35 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 08:47:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:47:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:47:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:47:35 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:47:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1da07419b07ed729031ddb72af1c99c01b0b8755897b32286889ae1dc399ab6`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 19.3 MB (19290711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f357b1c2f414c55bda3d76ba15344cf155927c2fed938e70d45babaa0e2b54`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006c38ce8a6bd3c4f1ca7d5315ad6bc591fcba77890468b8017922e1363d9419`  
		Last Modified: Thu, 05 Nov 2026 08:47:55 GMT  
		Size: 85.9 MB (85915220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710ffcdb7eb2dba960b573f9230ec86eac53a257acae17e99ca030c39b104875`  
		Last Modified: Thu, 05 Nov 2026 08:47:43 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:9c27f29ef51fe7bf16bac4da6aba5c995a1051fbfb20c7fb2ef7f95dcc9f3318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6522362e67100b236826ef31ca432835d2b5cfc90dc603a955ae9c023f3fc72`

```dockerfile
```

-	Layers:
	-	`sha256:f076b7866ed74be9b202d8e5db99492fe59cef73f0dde9fa6c670cfb0771d949`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 6.7 MB (6686665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee0eee2e58873e6e836392627e9fd4888756fe4410c7b42acebd47985218a41`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:6b792a05d2191e31efaeb69eeaef0b9441fd6599d569cb69abf064241ff92dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163823005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511c2d76f5e195598b0a23a2759d4c233882514d558af02869ce0a80a9e6710e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 09:41:21 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 09:41:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 09:41:21 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 09:41:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 09:41:22 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 09:41:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975cb83d9dd631833c3340e933bcdf0d32c535608ead3825ed67d4af3c86071e`  
		Last Modified: Thu, 05 Nov 2026 09:41:40 GMT  
		Size: 18.0 MB (17961350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bb670f6a768635afc24db8b596cd45cf75b5291b559481d0d62fc76721ec76`  
		Last Modified: Thu, 05 Nov 2026 09:41:39 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ced6b7062693b9c3f147c3f3b39a1a64c3a2f9d48b7a21b18e9ae3c7f29362`  
		Last Modified: Thu, 05 Nov 2026 09:41:41 GMT  
		Size: 79.9 MB (79862853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28761c2a0c97e4cf8c8fbf1fb98554766e80f9139f776d87e90f6f8e9a588544`  
		Last Modified: Thu, 05 Nov 2026 09:41:39 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:e9fe0fc9d57a49701cca29410436a1b21c48526fe9bfae9f6c85d86883c2875d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eb4221731807b6a13287b5bb139ce91559f8d976f4fc27833962b174ba8217`

```dockerfile
```

-	Layers:
	-	`sha256:6d13adf074f4106a0545c9ca16fdc6997cc99ac3f38972070c8b7c8db9c56825`  
		Last Modified: Thu, 05 Nov 2026 09:41:39 GMT  
		Size: 6.7 MB (6682067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f2b97c5dd87c289b565b98b116e7a34e8b51f3ee994e53efb6e63994ef9a81b`  
		Last Modified: Thu, 05 Nov 2026 09:41:39 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:192ab11741b5179bc4be8f92eea8f73b32ca62ea6e7f1c48c8125026edaec79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167806657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db20a4c54054293f5407d7c556b171925404cd71432704a38c36940dffb64c27`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:18 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 08:46:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bf1fe7a3611487549ea0164ee8b6813ffc2c2ebd4eaf242aa64ac00ccac1e9`  
		Last Modified: Thu, 05 Nov 2026 08:46:42 GMT  
		Size: 19.2 MB (19194170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c930675a32c55ef7a02ba6678651d4def69ea60242c012f0d2144318dae20c3`  
		Last Modified: Thu, 05 Nov 2026 08:46:41 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:986eb3296a27cfb26f6222afc6d7ca7ac9f49962ab1de4d9e5d41a8e3abaaf41`  
		Last Modified: Thu, 05 Nov 2026 08:46:43 GMT  
		Size: 76.8 MB (76753660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307b66a76a677bcf7956a82fc6965e1616e2b69e8f07e1fd13e2e33d0698977e`  
		Last Modified: Thu, 05 Nov 2026 08:46:41 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:79d930a07c3daace795edd6af47bdded0832d4f2ae59604dfba3b401e4e28b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682b1e86675b3d6e84d1e31f2ed4abb14a37f2d4e6f56f8c92e0b91a3c8e175c`

```dockerfile
```

-	Layers:
	-	`sha256:089d0549b4541e6397ae2b603e47a5f08940b47a9fa06ca5efc14bd8c6a0d714`  
		Last Modified: Thu, 05 Nov 2026 08:46:41 GMT  
		Size: 6.7 MB (6687341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ef665ab3b5f2369354d70424bd5bb60e5226f7deab5deadecd643dbcedad7c3`  
		Last Modified: Thu, 05 Nov 2026 08:46:40 GMT  
		Size: 14.6 KB (14578 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39-alpine`

```console
$ docker pull telegraf@sha256:1d2c91ae422e3c739b34437467b70648ea9f6c1a4da4f3bd0c30197e8bb751a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:56672090c8e4e020fe1c1e70dc0863496e97fce3fc4fb31802bd08ab4d307473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfdbd2b26499bcad8b4a7405fa203055c63a694f35eff70a37c553c4c7a22f8`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:54 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:36:55 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:37:03 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 19:37:03 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:37:03 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:37:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:37:03 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:03 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc77a4a6168dd1009ee3bf3704924f2ca96a2717e15c4b259f07757e786f9c47`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60eff330c2b4c7513ca7f2d1fecc9a305ee1b1b49156c4dcbc5f31bfcec5d9ad`  
		Last Modified: Thu, 05 Nov 2026 19:37:18 GMT  
		Size: 2.6 MB (2578254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5671c2e30c4212b7dedd7c041adaef29608e8782cd182715f09287efd13fdb0`  
		Last Modified: Thu, 05 Nov 2026 19:37:20 GMT  
		Size: 88.6 MB (88605027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db6e7a4dc6af0651176a73fb7674d9ac227a93f471e02217e306db102d57812`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:e21a018b2e40468332f03cd693b834b8f97b23bdd1b49a482aa6839252fe19f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0b727479b028dab3fca93b11a411f3a9a1fa7e07b5b9472353207f21456d69`

```dockerfile
```

-	Layers:
	-	`sha256:5f9a38cd36fb97a4e25e51e386dc2d9ce0dfa49a7bdca0ff6349a1b108576201`  
		Last Modified: Thu, 05 Nov 2026 19:37:18 GMT  
		Size: 1.1 MB (1147111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca2ecc0fa0f80954fb1ff165618805f0e940ed28ac9c912173c2f9f4ad1ac0c0`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:eaec54f9e7bb4ca56e8a8062edc46f6bab09e64d2dd730fd606ab6f7117a443f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86257490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73ceb5d914870ffe6e8ee272040e9cc4a5f3702668a45525cbfcf2d48293f4d`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:40:28 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:40:35 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 19:40:35 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:40:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:40:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:40:35 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:40:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b8f7c1fb245835c220718893938b9516fb338ad8fd641c9a56f542641f1467`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b649863ab558701ab4396ffae6dbc954f6c59ab3d5b2e28a9eb7f762519843`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 2.6 MB (2628517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbe70d91ae7da4576ad49cf387717920f8b894e392f625b2a1877c1205691a1`  
		Last Modified: Thu, 05 Nov 2026 19:40:51 GMT  
		Size: 79.4 MB (79437836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0aa91b2a417c2cd1659c16a975dd5d904ceafbc14c145357b41ecf7c35d6ea5`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:b7d7c79b441526eea4d538bc6f73383460404477d02935ed8313a561ada3ef27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b558db8b80deeed0d20abd743aa7db7f04f201f839e24ac590168f1dc3a45415`

```dockerfile
```

-	Layers:
	-	`sha256:e574ab679df0039c1c0032046967d322f0dfe1e4a458b8c906bcd6028bccd774`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 1.1 MB (1142088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb912e5ac5a04d5ab1f4959abe6c5fff047b21ca417a37d4cf392bd1e09711e6`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3`

```console
$ docker pull telegraf@sha256:cc44f85b4124428a1fecbed842edcaf574e9b2b3c82330c36a838439a32d4a4e
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
$ docker pull telegraf@sha256:04b768d06ccc05e46f8b9b7195a71bf4378c10330ce254ca4a077f57a29cf4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177611343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16e9eb715803f2ee71490daf2ee4a6a42fc6fafde0b1b7614ccd95e546e43c38`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:30 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:47:35 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 08:47:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:47:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:47:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:47:35 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:47:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1da07419b07ed729031ddb72af1c99c01b0b8755897b32286889ae1dc399ab6`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 19.3 MB (19290711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f357b1c2f414c55bda3d76ba15344cf155927c2fed938e70d45babaa0e2b54`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006c38ce8a6bd3c4f1ca7d5315ad6bc591fcba77890468b8017922e1363d9419`  
		Last Modified: Thu, 05 Nov 2026 08:47:55 GMT  
		Size: 85.9 MB (85915220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710ffcdb7eb2dba960b573f9230ec86eac53a257acae17e99ca030c39b104875`  
		Last Modified: Thu, 05 Nov 2026 08:47:43 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:9c27f29ef51fe7bf16bac4da6aba5c995a1051fbfb20c7fb2ef7f95dcc9f3318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6522362e67100b236826ef31ca432835d2b5cfc90dc603a955ae9c023f3fc72`

```dockerfile
```

-	Layers:
	-	`sha256:f076b7866ed74be9b202d8e5db99492fe59cef73f0dde9fa6c670cfb0771d949`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 6.7 MB (6686665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee0eee2e58873e6e836392627e9fd4888756fe4410c7b42acebd47985218a41`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:6b792a05d2191e31efaeb69eeaef0b9441fd6599d569cb69abf064241ff92dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163823005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511c2d76f5e195598b0a23a2759d4c233882514d558af02869ce0a80a9e6710e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 09:41:21 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 09:41:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 09:41:21 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 09:41:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 09:41:22 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 09:41:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975cb83d9dd631833c3340e933bcdf0d32c535608ead3825ed67d4af3c86071e`  
		Last Modified: Thu, 05 Nov 2026 09:41:40 GMT  
		Size: 18.0 MB (17961350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bb670f6a768635afc24db8b596cd45cf75b5291b559481d0d62fc76721ec76`  
		Last Modified: Thu, 05 Nov 2026 09:41:39 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ced6b7062693b9c3f147c3f3b39a1a64c3a2f9d48b7a21b18e9ae3c7f29362`  
		Last Modified: Thu, 05 Nov 2026 09:41:41 GMT  
		Size: 79.9 MB (79862853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28761c2a0c97e4cf8c8fbf1fb98554766e80f9139f776d87e90f6f8e9a588544`  
		Last Modified: Thu, 05 Nov 2026 09:41:39 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:e9fe0fc9d57a49701cca29410436a1b21c48526fe9bfae9f6c85d86883c2875d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eb4221731807b6a13287b5bb139ce91559f8d976f4fc27833962b174ba8217`

```dockerfile
```

-	Layers:
	-	`sha256:6d13adf074f4106a0545c9ca16fdc6997cc99ac3f38972070c8b7c8db9c56825`  
		Last Modified: Thu, 05 Nov 2026 09:41:39 GMT  
		Size: 6.7 MB (6682067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f2b97c5dd87c289b565b98b116e7a34e8b51f3ee994e53efb6e63994ef9a81b`  
		Last Modified: Thu, 05 Nov 2026 09:41:39 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:192ab11741b5179bc4be8f92eea8f73b32ca62ea6e7f1c48c8125026edaec79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167806657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db20a4c54054293f5407d7c556b171925404cd71432704a38c36940dffb64c27`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:17 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:18 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 08:46:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bf1fe7a3611487549ea0164ee8b6813ffc2c2ebd4eaf242aa64ac00ccac1e9`  
		Last Modified: Thu, 05 Nov 2026 08:46:42 GMT  
		Size: 19.2 MB (19194170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c930675a32c55ef7a02ba6678651d4def69ea60242c012f0d2144318dae20c3`  
		Last Modified: Thu, 05 Nov 2026 08:46:41 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:986eb3296a27cfb26f6222afc6d7ca7ac9f49962ab1de4d9e5d41a8e3abaaf41`  
		Last Modified: Thu, 05 Nov 2026 08:46:43 GMT  
		Size: 76.8 MB (76753660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307b66a76a677bcf7956a82fc6965e1616e2b69e8f07e1fd13e2e33d0698977e`  
		Last Modified: Thu, 05 Nov 2026 08:46:41 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:79d930a07c3daace795edd6af47bdded0832d4f2ae59604dfba3b401e4e28b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682b1e86675b3d6e84d1e31f2ed4abb14a37f2d4e6f56f8c92e0b91a3c8e175c`

```dockerfile
```

-	Layers:
	-	`sha256:089d0549b4541e6397ae2b603e47a5f08940b47a9fa06ca5efc14bd8c6a0d714`  
		Last Modified: Thu, 05 Nov 2026 08:46:41 GMT  
		Size: 6.7 MB (6687341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ef665ab3b5f2369354d70424bd5bb60e5226f7deab5deadecd643dbcedad7c3`  
		Last Modified: Thu, 05 Nov 2026 08:46:40 GMT  
		Size: 14.6 KB (14578 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3-alpine`

```console
$ docker pull telegraf@sha256:1d2c91ae422e3c739b34437467b70648ea9f6c1a4da4f3bd0c30197e8bb751a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:56672090c8e4e020fe1c1e70dc0863496e97fce3fc4fb31802bd08ab4d307473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfdbd2b26499bcad8b4a7405fa203055c63a694f35eff70a37c553c4c7a22f8`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:54 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:36:55 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:37:03 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 19:37:03 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:37:03 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:37:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:37:03 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:03 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc77a4a6168dd1009ee3bf3704924f2ca96a2717e15c4b259f07757e786f9c47`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60eff330c2b4c7513ca7f2d1fecc9a305ee1b1b49156c4dcbc5f31bfcec5d9ad`  
		Last Modified: Thu, 05 Nov 2026 19:37:18 GMT  
		Size: 2.6 MB (2578254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5671c2e30c4212b7dedd7c041adaef29608e8782cd182715f09287efd13fdb0`  
		Last Modified: Thu, 05 Nov 2026 19:37:20 GMT  
		Size: 88.6 MB (88605027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db6e7a4dc6af0651176a73fb7674d9ac227a93f471e02217e306db102d57812`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:e21a018b2e40468332f03cd693b834b8f97b23bdd1b49a482aa6839252fe19f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0b727479b028dab3fca93b11a411f3a9a1fa7e07b5b9472353207f21456d69`

```dockerfile
```

-	Layers:
	-	`sha256:5f9a38cd36fb97a4e25e51e386dc2d9ce0dfa49a7bdca0ff6349a1b108576201`  
		Last Modified: Thu, 05 Nov 2026 19:37:18 GMT  
		Size: 1.1 MB (1147111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca2ecc0fa0f80954fb1ff165618805f0e940ed28ac9c912173c2f9f4ad1ac0c0`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:eaec54f9e7bb4ca56e8a8062edc46f6bab09e64d2dd730fd606ab6f7117a443f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86257490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73ceb5d914870ffe6e8ee272040e9cc4a5f3702668a45525cbfcf2d48293f4d`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:40:28 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:40:35 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 05 Nov 2026 19:40:35 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:40:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:40:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:40:35 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:40:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b8f7c1fb245835c220718893938b9516fb338ad8fd641c9a56f542641f1467`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b649863ab558701ab4396ffae6dbc954f6c59ab3d5b2e28a9eb7f762519843`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 2.6 MB (2628517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbe70d91ae7da4576ad49cf387717920f8b894e392f625b2a1877c1205691a1`  
		Last Modified: Thu, 05 Nov 2026 19:40:51 GMT  
		Size: 79.4 MB (79437836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0aa91b2a417c2cd1659c16a975dd5d904ceafbc14c145357b41ecf7c35d6ea5`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 636.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:b7d7c79b441526eea4d538bc6f73383460404477d02935ed8313a561ada3ef27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1157684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b558db8b80deeed0d20abd743aa7db7f04f201f839e24ac590168f1dc3a45415`

```dockerfile
```

-	Layers:
	-	`sha256:e574ab679df0039c1c0032046967d322f0dfe1e4a458b8c906bcd6028bccd774`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 1.1 MB (1142088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb912e5ac5a04d5ab1f4959abe6c5fff047b21ca417a37d4cf392bd1e09711e6`  
		Last Modified: Thu, 05 Nov 2026 19:40:49 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40`

```console
$ docker pull telegraf@sha256:3b9fce7c353dc6deba774ee2b2d85619536c6263f43106e7b39b20d47b37ca6c
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
$ docker pull telegraf@sha256:f4e2348849f054dec7e30fc75b629490eec7984c21f64d4aa2c6b43426005b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181082109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956f115fca4f182b1f0d2d104cd7f65333207ede9166db716e3cabfd4b4d8bca`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:19:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:19:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:19:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:19:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:19:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b5d6c6d0ca8f989c79aa980ec70ff69515db257a085bf7b9287d9069c257c5`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 19.3 MB (19290825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed9010c0d21d872f85e421f8884fbe2818ee232674a0b3f28e93f9a43caf78b`  
		Last Modified: Mon, 16 Nov 2026 20:19:26 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ddcf70e5a7e77e06cedd20a6763e672d20b810c25c64aea54f5cf2d3948175`  
		Last Modified: Mon, 16 Nov 2026 20:19:29 GMT  
		Size: 89.4 MB (89385885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bd72be98f6a3d40f5092455a46a5b6530b9670b5c2a334b8f73c32e224246c`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:b218d7a73973670cab1e645370007297b3a1a96af41a5a48433a7f3a02ab9e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c2c86791ed753112cc914475c40a1739a2327bf7006731029d9c803f3090a0`

```dockerfile
```

-	Layers:
	-	`sha256:94f4cd8c4aae2d7e0f1a460dad11735e4406783383ca7d14b8ea431c7182a5d3`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 6.7 MB (6689368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c8e823bd9ae4dd8164e55bd4b691537081fdcecc2583b6178f0b621195e3280`  
		Last Modified: Mon, 16 Nov 2026 20:19:26 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:ee4ddceba44105618622ad306d1731756cf933d8deb59f21e0bb3c7f95c6c84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167067297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422c7e17d98ba9a3354bb9b2c3b21120979ec56aeae5ecc0c8d61354e5dc38ef`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:20:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:20:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:20:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:20:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:20:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0a07f2a7e0ca1ad5c62e1836c7d58c22866246cb97175a724b9dbaf7da52a8`  
		Last Modified: Mon, 16 Nov 2026 20:20:39 GMT  
		Size: 18.0 MB (17961362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20fbd988b1b676884d95d70b30b093a33cf3c113f7e7dfde7ae57d0c3c34c85`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b41aef86d4269e94e9a815e37ef095468f23371fa04e26f8e2bbba2533eaca4`  
		Last Modified: Mon, 16 Nov 2026 20:20:41 GMT  
		Size: 83.1 MB (83107149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf8aa935998f0aec24fa2436e5514cf786192ad41c418381b27cec368fcaad4`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:f0e72469cd16849cad0d27f3e4240d66474824a6fcc7b0522f637889ce38eb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec9e061ea0a1e7812136c54986b8762ac6d158728c55f23d13653f0a07ec8df`

```dockerfile
```

-	Layers:
	-	`sha256:98ccbbb60dcc26b8a6c779103c39b9b94d453f55c88fc8ba4fc85069493f9542`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 6.7 MB (6684778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59bea145c208f9e0aaa15806b837c45b4ca7a986e78130c10e6822f2ccfc1d07`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8556de2f36ddc2d297874bf49ab92c18bcb910e30d6a1d4b347e9ba4e00d4015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170865894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6f82beb0056e6f3e45bc2d7c58865f13b9f4595e7fead7d950780670401604`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:24:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:24:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:24:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:24:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:24:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb5072f8c4d6c1a7eb3e85529edd3e304833d20b55e7d391e7cacf6c034cfe9`  
		Last Modified: Mon, 16 Nov 2026 20:24:47 GMT  
		Size: 19.2 MB (19194133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753b1e66ca001740ef6f7a62acbd8aeafebf7797c9d646dc6ba360ddadff19bb`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f0f591257fd13ab7109875b9009a503a3f90fa6eb69ea8bbd920bd150685a1`  
		Last Modified: Mon, 16 Nov 2026 20:24:49 GMT  
		Size: 79.8 MB (79812930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4527880aa51d4e61a2b6b9855b7ed9d33bf81d6d8a9cd5865d8ea01239e5355`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:7ae7ce12f95543ef89ed8a9808b0092f49e9aae909d9bf8ff3f889b2a25fc647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e0118b6b39f9aafae36a5e1787022f27ca42c4aad829a082d568ff38b41e23`

```dockerfile
```

-	Layers:
	-	`sha256:2c3f58ceeab0ff1643eeacf6259b380471066bf9f1b386676b583a781f593b75`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 6.7 MB (6690056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b99064a6962cfe2119bd6ab80af95fe49b6404111919bbd1ca6caa60a47e1cb3`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:10fe8c974752c8088858f012cb47b71f5bb67c5695829be56d87dfbf8e0092b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:6ecc1e2a959fd69ad1de5e1fbcf44c238fc53617900792c8883c99716e0f3ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98516250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bea2e6245bdd355f05ad871331bd53b3d0432bee4dbb55a9d30e8819b5de1e`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:12 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:37:13 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 19:37:19 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:37:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103f0a390a41a827199a2d76035595138fcc15992c38fddc9879a259a9a04974`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1e8d00d1da627d59ae0b5f653a285adc8d742da288d1d8b6a31d908e79a32a`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 2.6 MB (2578248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2d9e3e7d504747f933e0eda31ffedf4f168963d9f40ce8522d971368332079`  
		Last Modified: Thu, 05 Nov 2026 19:37:37 GMT  
		Size: 92.1 MB (92084499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d651cf6a75765a5cde30f85175f47798106b12bb4821f673545d3e8878dfeffc`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:98278f12858994c486061125bbab19c6e12c23fd8afa300a3c79e8bb156a867d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23353508b9c2d56f21074c1adb2f1b410dff5ebcecc38d4d0749b565a2856469`

```dockerfile
```

-	Layers:
	-	`sha256:139369df91ba03742ee3febafc7b864992f8186526c7d8f72945232f5897a9eb`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 1.1 MB (1149814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c939b660bd4b89015b027867eae519edad22f406f12fd0d4b3c3f7060a529c`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:70d370873a6b9a1aa7b3a56f00676e716f0819cbdca12a39bda58f7ea38220f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89317126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0bef04357db48f9222b9d036753c1ded94fb6bec213ac3c03728ad8e413ccc`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:30 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:40:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 19:40:38 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:40:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:40:38 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51572f05395be8689936b6c8ccf74a0ebe93e48d8afed7f77f4856e32c23b2d`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fc4eefdb5ea9b21d47551fbb67641b4073f9a4a0aa99daf7775a087a9b3080`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 2.6 MB (2628489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2549a78bfa1058f29e9d9227fee935497e749f9b9a62d995816eeb5d1140b397`  
		Last Modified: Thu, 05 Nov 2026 19:40:54 GMT  
		Size: 82.5 MB (82497503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4822c3a35b7f9bef756a86adb050c006deb2234edf4c8da8f16b8a556038db`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:673aac9760227d944226253e54a52c37bba7b8cff6d5889eb2073e8fae1e09aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e66aa3103638b84c302becf24aecf835fb7676e3e2f9653e6ffc3dfc07d6f6`

```dockerfile
```

-	Layers:
	-	`sha256:afb83f1d436229b556ab657482233d169a32e15a968b872a19260348358266ec`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 1.1 MB (1144803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfb39e157d37ecc8c59ccbb144a27b5c7a6c84e695ba1b31107bfb3816c827fc`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-scratch`

```console
$ docker pull telegraf@sha256:bbc43a9e96ea190d94ab3258e9f3673998b30322c78672952bbcfa68c30b1eba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-scratch` - linux; amd64

```console
$ docker pull telegraf@sha256:692201cdb45d9685b6b11ab40a2e71ca0d2addc6e0061b1fbafa82b9385df8fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89404002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f267d5ba16236b0da5b110ea830400aea718fdd81746bc68146b6e96cd0c3`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Mon, 16 Nov 2026 20:19:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 20:19:04 GMT
ENV HOME=/home/telegraf
# Mon, 16 Nov 2026 20:19:04 GMT
USER 65532:65532
# Mon, 16 Nov 2026 20:19:04 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Mon, 16 Nov 2026 20:19:04 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:2576a0644500b01a3b64cf8524b4e15929d91c0630004b638a1fd0e0f83cd8be`  
		Last Modified: Mon, 16 Nov 2026 20:19:22 GMT  
		Size: 89.4 MB (89404002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:db50aba000359e862fecf114f87136a485886a322cee4c20b1c243da84c6919c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.9 KB (463871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899ea1105b5bc741b01a02148644321db5a7366c9bd0e7a520bf6b21bb5cda52`

```dockerfile
```

-	Layers:
	-	`sha256:64aaf64375c2502078488f936d1fbae90b31e097a0f7b2012e8b909fbbfa60c4`  
		Last Modified: Mon, 16 Nov 2026 20:19:20 GMT  
		Size: 449.0 KB (449028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fed36e8f61ee0c749a1d4050e3512e4380bddb4463cc926c9c8c0ead8021bd`  
		Last Modified: Mon, 16 Nov 2026 20:19:21 GMT  
		Size: 14.8 KB (14843 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-scratch` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:92f690653f8ea376b5f38e855e7039b474e8bca83b3492829805fb4daf050342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79840574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2bbb88ee2daa184eedf2a77bc870925c715df41e535ff6ab17328112146637`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Mon, 16 Nov 2026 20:25:01 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 20:25:01 GMT
ENV HOME=/home/telegraf
# Mon, 16 Nov 2026 20:25:01 GMT
USER 65532:65532
# Mon, 16 Nov 2026 20:25:01 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Mon, 16 Nov 2026 20:25:01 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:8783a2cac07b3f75a75d9933f79401afd8365c3facff516137112804defae480`  
		Last Modified: Mon, 16 Nov 2026 20:25:19 GMT  
		Size: 79.8 MB (79840574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:7010c73b90257ee6127538da8d4ce4693e64fedc16e033f0347bd09154d3a48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.8 KB (460804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0451d500ea2cc0a589c370c71ca05a9842c4402dd6e45fbeb536c3181be7ee9c`

```dockerfile
```

-	Layers:
	-	`sha256:59d419b57c168af17b8a2fcbc64f9e726b82ae381697a9c3243d86c2a89f7ec4`  
		Last Modified: Mon, 16 Nov 2026 20:25:17 GMT  
		Size: 445.9 KB (445869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e2b24588668cbefdf7628c7f4691b58863e1a9c045b4ed605a59a5ff3bb6289`  
		Last Modified: Mon, 16 Nov 2026 20:25:17 GMT  
		Size: 14.9 KB (14935 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.3`

```console
$ docker pull telegraf@sha256:3b9fce7c353dc6deba774ee2b2d85619536c6263f43106e7b39b20d47b37ca6c
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
$ docker pull telegraf@sha256:f4e2348849f054dec7e30fc75b629490eec7984c21f64d4aa2c6b43426005b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181082109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956f115fca4f182b1f0d2d104cd7f65333207ede9166db716e3cabfd4b4d8bca`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:19:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:19:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:19:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:19:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:19:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b5d6c6d0ca8f989c79aa980ec70ff69515db257a085bf7b9287d9069c257c5`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 19.3 MB (19290825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed9010c0d21d872f85e421f8884fbe2818ee232674a0b3f28e93f9a43caf78b`  
		Last Modified: Mon, 16 Nov 2026 20:19:26 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ddcf70e5a7e77e06cedd20a6763e672d20b810c25c64aea54f5cf2d3948175`  
		Last Modified: Mon, 16 Nov 2026 20:19:29 GMT  
		Size: 89.4 MB (89385885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bd72be98f6a3d40f5092455a46a5b6530b9670b5c2a334b8f73c32e224246c`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:b218d7a73973670cab1e645370007297b3a1a96af41a5a48433a7f3a02ab9e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c2c86791ed753112cc914475c40a1739a2327bf7006731029d9c803f3090a0`

```dockerfile
```

-	Layers:
	-	`sha256:94f4cd8c4aae2d7e0f1a460dad11735e4406783383ca7d14b8ea431c7182a5d3`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 6.7 MB (6689368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c8e823bd9ae4dd8164e55bd4b691537081fdcecc2583b6178f0b621195e3280`  
		Last Modified: Mon, 16 Nov 2026 20:19:26 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:ee4ddceba44105618622ad306d1731756cf933d8deb59f21e0bb3c7f95c6c84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167067297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422c7e17d98ba9a3354bb9b2c3b21120979ec56aeae5ecc0c8d61354e5dc38ef`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:20:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:20:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:20:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:20:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:20:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0a07f2a7e0ca1ad5c62e1836c7d58c22866246cb97175a724b9dbaf7da52a8`  
		Last Modified: Mon, 16 Nov 2026 20:20:39 GMT  
		Size: 18.0 MB (17961362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20fbd988b1b676884d95d70b30b093a33cf3c113f7e7dfde7ae57d0c3c34c85`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b41aef86d4269e94e9a815e37ef095468f23371fa04e26f8e2bbba2533eaca4`  
		Last Modified: Mon, 16 Nov 2026 20:20:41 GMT  
		Size: 83.1 MB (83107149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf8aa935998f0aec24fa2436e5514cf786192ad41c418381b27cec368fcaad4`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:f0e72469cd16849cad0d27f3e4240d66474824a6fcc7b0522f637889ce38eb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec9e061ea0a1e7812136c54986b8762ac6d158728c55f23d13653f0a07ec8df`

```dockerfile
```

-	Layers:
	-	`sha256:98ccbbb60dcc26b8a6c779103c39b9b94d453f55c88fc8ba4fc85069493f9542`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 6.7 MB (6684778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59bea145c208f9e0aaa15806b837c45b4ca7a986e78130c10e6822f2ccfc1d07`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8556de2f36ddc2d297874bf49ab92c18bcb910e30d6a1d4b347e9ba4e00d4015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170865894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6f82beb0056e6f3e45bc2d7c58865f13b9f4595e7fead7d950780670401604`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:24:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:24:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:24:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:24:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:24:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb5072f8c4d6c1a7eb3e85529edd3e304833d20b55e7d391e7cacf6c034cfe9`  
		Last Modified: Mon, 16 Nov 2026 20:24:47 GMT  
		Size: 19.2 MB (19194133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753b1e66ca001740ef6f7a62acbd8aeafebf7797c9d646dc6ba360ddadff19bb`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f0f591257fd13ab7109875b9009a503a3f90fa6eb69ea8bbd920bd150685a1`  
		Last Modified: Mon, 16 Nov 2026 20:24:49 GMT  
		Size: 79.8 MB (79812930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4527880aa51d4e61a2b6b9855b7ed9d33bf81d6d8a9cd5865d8ea01239e5355`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:7ae7ce12f95543ef89ed8a9808b0092f49e9aae909d9bf8ff3f889b2a25fc647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e0118b6b39f9aafae36a5e1787022f27ca42c4aad829a082d568ff38b41e23`

```dockerfile
```

-	Layers:
	-	`sha256:2c3f58ceeab0ff1643eeacf6259b380471066bf9f1b386676b583a781f593b75`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 6.7 MB (6690056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b99064a6962cfe2119bd6ab80af95fe49b6404111919bbd1ca6caa60a47e1cb3`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.3-alpine`

```console
$ docker pull telegraf@sha256:10fe8c974752c8088858f012cb47b71f5bb67c5695829be56d87dfbf8e0092b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:6ecc1e2a959fd69ad1de5e1fbcf44c238fc53617900792c8883c99716e0f3ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98516250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bea2e6245bdd355f05ad871331bd53b3d0432bee4dbb55a9d30e8819b5de1e`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:12 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:37:13 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 19:37:19 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:37:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103f0a390a41a827199a2d76035595138fcc15992c38fddc9879a259a9a04974`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1e8d00d1da627d59ae0b5f653a285adc8d742da288d1d8b6a31d908e79a32a`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 2.6 MB (2578248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2d9e3e7d504747f933e0eda31ffedf4f168963d9f40ce8522d971368332079`  
		Last Modified: Thu, 05 Nov 2026 19:37:37 GMT  
		Size: 92.1 MB (92084499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d651cf6a75765a5cde30f85175f47798106b12bb4821f673545d3e8878dfeffc`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:98278f12858994c486061125bbab19c6e12c23fd8afa300a3c79e8bb156a867d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23353508b9c2d56f21074c1adb2f1b410dff5ebcecc38d4d0749b565a2856469`

```dockerfile
```

-	Layers:
	-	`sha256:139369df91ba03742ee3febafc7b864992f8186526c7d8f72945232f5897a9eb`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 1.1 MB (1149814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c939b660bd4b89015b027867eae519edad22f406f12fd0d4b3c3f7060a529c`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:70d370873a6b9a1aa7b3a56f00676e716f0819cbdca12a39bda58f7ea38220f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89317126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0bef04357db48f9222b9d036753c1ded94fb6bec213ac3c03728ad8e413ccc`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:30 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:40:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 19:40:38 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:40:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:40:38 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51572f05395be8689936b6c8ccf74a0ebe93e48d8afed7f77f4856e32c23b2d`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fc4eefdb5ea9b21d47551fbb67641b4073f9a4a0aa99daf7775a087a9b3080`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 2.6 MB (2628489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2549a78bfa1058f29e9d9227fee935497e749f9b9a62d995816eeb5d1140b397`  
		Last Modified: Thu, 05 Nov 2026 19:40:54 GMT  
		Size: 82.5 MB (82497503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4822c3a35b7f9bef756a86adb050c006deb2234edf4c8da8f16b8a556038db`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:673aac9760227d944226253e54a52c37bba7b8cff6d5889eb2073e8fae1e09aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e66aa3103638b84c302becf24aecf835fb7676e3e2f9653e6ffc3dfc07d6f6`

```dockerfile
```

-	Layers:
	-	`sha256:afb83f1d436229b556ab657482233d169a32e15a968b872a19260348358266ec`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 1.1 MB (1144803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfb39e157d37ecc8c59ccbb144a27b5c7a6c84e695ba1b31107bfb3816c827fc`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.3-scratch`

```console
$ docker pull telegraf@sha256:bbc43a9e96ea190d94ab3258e9f3673998b30322c78672952bbcfa68c30b1eba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.3-scratch` - linux; amd64

```console
$ docker pull telegraf@sha256:692201cdb45d9685b6b11ab40a2e71ca0d2addc6e0061b1fbafa82b9385df8fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89404002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f267d5ba16236b0da5b110ea830400aea718fdd81746bc68146b6e96cd0c3`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Mon, 16 Nov 2026 20:19:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 20:19:04 GMT
ENV HOME=/home/telegraf
# Mon, 16 Nov 2026 20:19:04 GMT
USER 65532:65532
# Mon, 16 Nov 2026 20:19:04 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Mon, 16 Nov 2026 20:19:04 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:2576a0644500b01a3b64cf8524b4e15929d91c0630004b638a1fd0e0f83cd8be`  
		Last Modified: Mon, 16 Nov 2026 20:19:22 GMT  
		Size: 89.4 MB (89404002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3-scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:db50aba000359e862fecf114f87136a485886a322cee4c20b1c243da84c6919c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.9 KB (463871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899ea1105b5bc741b01a02148644321db5a7366c9bd0e7a520bf6b21bb5cda52`

```dockerfile
```

-	Layers:
	-	`sha256:64aaf64375c2502078488f936d1fbae90b31e097a0f7b2012e8b909fbbfa60c4`  
		Last Modified: Mon, 16 Nov 2026 20:19:20 GMT  
		Size: 449.0 KB (449028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fed36e8f61ee0c749a1d4050e3512e4380bddb4463cc926c9c8c0ead8021bd`  
		Last Modified: Mon, 16 Nov 2026 20:19:21 GMT  
		Size: 14.8 KB (14843 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3-scratch` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:92f690653f8ea376b5f38e855e7039b474e8bca83b3492829805fb4daf050342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79840574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2bbb88ee2daa184eedf2a77bc870925c715df41e535ff6ab17328112146637`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Mon, 16 Nov 2026 20:25:01 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 20:25:01 GMT
ENV HOME=/home/telegraf
# Mon, 16 Nov 2026 20:25:01 GMT
USER 65532:65532
# Mon, 16 Nov 2026 20:25:01 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Mon, 16 Nov 2026 20:25:01 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:8783a2cac07b3f75a75d9933f79401afd8365c3facff516137112804defae480`  
		Last Modified: Mon, 16 Nov 2026 20:25:19 GMT  
		Size: 79.8 MB (79840574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3-scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:7010c73b90257ee6127538da8d4ce4693e64fedc16e033f0347bd09154d3a48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.8 KB (460804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0451d500ea2cc0a589c370c71ca05a9842c4402dd6e45fbeb536c3181be7ee9c`

```dockerfile
```

-	Layers:
	-	`sha256:59d419b57c168af17b8a2fcbc64f9e726b82ae381697a9c3243d86c2a89f7ec4`  
		Last Modified: Mon, 16 Nov 2026 20:25:17 GMT  
		Size: 445.9 KB (445869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e2b24588668cbefdf7628c7f4691b58863e1a9c045b4ed605a59a5ff3bb6289`  
		Last Modified: Mon, 16 Nov 2026 20:25:17 GMT  
		Size: 14.9 KB (14935 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:10fe8c974752c8088858f012cb47b71f5bb67c5695829be56d87dfbf8e0092b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:6ecc1e2a959fd69ad1de5e1fbcf44c238fc53617900792c8883c99716e0f3ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98516250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bea2e6245bdd355f05ad871331bd53b3d0432bee4dbb55a9d30e8819b5de1e`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:12 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:37:13 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 19:37:19 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:37:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103f0a390a41a827199a2d76035595138fcc15992c38fddc9879a259a9a04974`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1e8d00d1da627d59ae0b5f653a285adc8d742da288d1d8b6a31d908e79a32a`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 2.6 MB (2578248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2d9e3e7d504747f933e0eda31ffedf4f168963d9f40ce8522d971368332079`  
		Last Modified: Thu, 05 Nov 2026 19:37:37 GMT  
		Size: 92.1 MB (92084499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d651cf6a75765a5cde30f85175f47798106b12bb4821f673545d3e8878dfeffc`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:98278f12858994c486061125bbab19c6e12c23fd8afa300a3c79e8bb156a867d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23353508b9c2d56f21074c1adb2f1b410dff5ebcecc38d4d0749b565a2856469`

```dockerfile
```

-	Layers:
	-	`sha256:139369df91ba03742ee3febafc7b864992f8186526c7d8f72945232f5897a9eb`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 1.1 MB (1149814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c939b660bd4b89015b027867eae519edad22f406f12fd0d4b3c3f7060a529c`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:70d370873a6b9a1aa7b3a56f00676e716f0819cbdca12a39bda58f7ea38220f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89317126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0bef04357db48f9222b9d036753c1ded94fb6bec213ac3c03728ad8e413ccc`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:30 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:40:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 19:40:38 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:40:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:40:38 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51572f05395be8689936b6c8ccf74a0ebe93e48d8afed7f77f4856e32c23b2d`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fc4eefdb5ea9b21d47551fbb67641b4073f9a4a0aa99daf7775a087a9b3080`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 2.6 MB (2628489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2549a78bfa1058f29e9d9227fee935497e749f9b9a62d995816eeb5d1140b397`  
		Last Modified: Thu, 05 Nov 2026 19:40:54 GMT  
		Size: 82.5 MB (82497503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4822c3a35b7f9bef756a86adb050c006deb2234edf4c8da8f16b8a556038db`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:673aac9760227d944226253e54a52c37bba7b8cff6d5889eb2073e8fae1e09aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e66aa3103638b84c302becf24aecf835fb7676e3e2f9653e6ffc3dfc07d6f6`

```dockerfile
```

-	Layers:
	-	`sha256:afb83f1d436229b556ab657482233d169a32e15a968b872a19260348358266ec`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 1.1 MB (1144803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfb39e157d37ecc8c59ccbb144a27b5c7a6c84e695ba1b31107bfb3816c827fc`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:3b9fce7c353dc6deba774ee2b2d85619536c6263f43106e7b39b20d47b37ca6c
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
$ docker pull telegraf@sha256:f4e2348849f054dec7e30fc75b629490eec7984c21f64d4aa2c6b43426005b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181082109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956f115fca4f182b1f0d2d104cd7f65333207ede9166db716e3cabfd4b4d8bca`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:19:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:19:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:19:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:19:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:19:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:19:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b5d6c6d0ca8f989c79aa980ec70ff69515db257a085bf7b9287d9069c257c5`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 19.3 MB (19290825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed9010c0d21d872f85e421f8884fbe2818ee232674a0b3f28e93f9a43caf78b`  
		Last Modified: Mon, 16 Nov 2026 20:19:26 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ddcf70e5a7e77e06cedd20a6763e672d20b810c25c64aea54f5cf2d3948175`  
		Last Modified: Mon, 16 Nov 2026 20:19:29 GMT  
		Size: 89.4 MB (89385885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bd72be98f6a3d40f5092455a46a5b6530b9670b5c2a334b8f73c32e224246c`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:b218d7a73973670cab1e645370007297b3a1a96af41a5a48433a7f3a02ab9e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c2c86791ed753112cc914475c40a1739a2327bf7006731029d9c803f3090a0`

```dockerfile
```

-	Layers:
	-	`sha256:94f4cd8c4aae2d7e0f1a460dad11735e4406783383ca7d14b8ea431c7182a5d3`  
		Last Modified: Mon, 16 Nov 2026 20:19:27 GMT  
		Size: 6.7 MB (6689368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c8e823bd9ae4dd8164e55bd4b691537081fdcecc2583b6178f0b621195e3280`  
		Last Modified: Mon, 16 Nov 2026 20:19:26 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:ee4ddceba44105618622ad306d1731756cf933d8deb59f21e0bb3c7f95c6c84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167067297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422c7e17d98ba9a3354bb9b2c3b21120979ec56aeae5ecc0c8d61354e5dc38ef`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:20:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:20:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:20:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:20:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:20:18 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:20:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0a07f2a7e0ca1ad5c62e1836c7d58c22866246cb97175a724b9dbaf7da52a8`  
		Last Modified: Mon, 16 Nov 2026 20:20:39 GMT  
		Size: 18.0 MB (17961362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20fbd988b1b676884d95d70b30b093a33cf3c113f7e7dfde7ae57d0c3c34c85`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b41aef86d4269e94e9a815e37ef095468f23371fa04e26f8e2bbba2533eaca4`  
		Last Modified: Mon, 16 Nov 2026 20:20:41 GMT  
		Size: 83.1 MB (83107149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf8aa935998f0aec24fa2436e5514cf786192ad41c418381b27cec368fcaad4`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:f0e72469cd16849cad0d27f3e4240d66474824a6fcc7b0522f637889ce38eb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec9e061ea0a1e7812136c54986b8762ac6d158728c55f23d13653f0a07ec8df`

```dockerfile
```

-	Layers:
	-	`sha256:98ccbbb60dcc26b8a6c779103c39b9b94d453f55c88fc8ba4fc85069493f9542`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 6.7 MB (6684778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59bea145c208f9e0aaa15806b837c45b4ca7a986e78130c10e6822f2ccfc1d07`  
		Last Modified: Mon, 16 Nov 2026 20:20:38 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8556de2f36ddc2d297874bf49ab92c18bcb910e30d6a1d4b347e9ba4e00d4015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170865894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6f82beb0056e6f3e45bc2d7c58865f13b9f4595e7fead7d950780670401604`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:24:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:24:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
ENV TELEGRAF_VERSION=1.40.3
# Mon, 16 Nov 2026 20:24:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 16 Nov 2026 20:24:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 16 Nov 2026 20:24:28 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 16 Nov 2026 20:24:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb5072f8c4d6c1a7eb3e85529edd3e304833d20b55e7d391e7cacf6c034cfe9`  
		Last Modified: Mon, 16 Nov 2026 20:24:47 GMT  
		Size: 19.2 MB (19194133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753b1e66ca001740ef6f7a62acbd8aeafebf7797c9d646dc6ba360ddadff19bb`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 5.1 KB (5073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f0f591257fd13ab7109875b9009a503a3f90fa6eb69ea8bbd920bd150685a1`  
		Last Modified: Mon, 16 Nov 2026 20:24:49 GMT  
		Size: 79.8 MB (79812930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4527880aa51d4e61a2b6b9855b7ed9d33bf81d6d8a9cd5865d8ea01239e5355`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:7ae7ce12f95543ef89ed8a9808b0092f49e9aae909d9bf8ff3f889b2a25fc647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e0118b6b39f9aafae36a5e1787022f27ca42c4aad829a082d568ff38b41e23`

```dockerfile
```

-	Layers:
	-	`sha256:2c3f58ceeab0ff1643eeacf6259b380471066bf9f1b386676b583a781f593b75`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 6.7 MB (6690056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b99064a6962cfe2119bd6ab80af95fe49b6404111919bbd1ca6caa60a47e1cb3`  
		Last Modified: Mon, 16 Nov 2026 20:24:46 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:scratch`

```console
$ docker pull telegraf@sha256:bbc43a9e96ea190d94ab3258e9f3673998b30322c78672952bbcfa68c30b1eba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:scratch` - linux; amd64

```console
$ docker pull telegraf@sha256:692201cdb45d9685b6b11ab40a2e71ca0d2addc6e0061b1fbafa82b9385df8fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89404002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f267d5ba16236b0da5b110ea830400aea718fdd81746bc68146b6e96cd0c3`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Mon, 16 Nov 2026 20:19:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 20:19:04 GMT
ENV HOME=/home/telegraf
# Mon, 16 Nov 2026 20:19:04 GMT
USER 65532:65532
# Mon, 16 Nov 2026 20:19:04 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Mon, 16 Nov 2026 20:19:04 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:2576a0644500b01a3b64cf8524b4e15929d91c0630004b638a1fd0e0f83cd8be`  
		Last Modified: Mon, 16 Nov 2026 20:19:22 GMT  
		Size: 89.4 MB (89404002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:db50aba000359e862fecf114f87136a485886a322cee4c20b1c243da84c6919c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.9 KB (463871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899ea1105b5bc741b01a02148644321db5a7366c9bd0e7a520bf6b21bb5cda52`

```dockerfile
```

-	Layers:
	-	`sha256:64aaf64375c2502078488f936d1fbae90b31e097a0f7b2012e8b909fbbfa60c4`  
		Last Modified: Mon, 16 Nov 2026 20:19:20 GMT  
		Size: 449.0 KB (449028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fed36e8f61ee0c749a1d4050e3512e4380bddb4463cc926c9c8c0ead8021bd`  
		Last Modified: Mon, 16 Nov 2026 20:19:21 GMT  
		Size: 14.8 KB (14843 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:scratch` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:92f690653f8ea376b5f38e855e7039b474e8bca83b3492829805fb4daf050342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79840574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2bbb88ee2daa184eedf2a77bc870925c715df41e535ff6ab17328112146637`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Mon, 16 Nov 2026 20:25:01 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 20:25:01 GMT
ENV HOME=/home/telegraf
# Mon, 16 Nov 2026 20:25:01 GMT
USER 65532:65532
# Mon, 16 Nov 2026 20:25:01 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Mon, 16 Nov 2026 20:25:01 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:8783a2cac07b3f75a75d9933f79401afd8365c3facff516137112804defae480`  
		Last Modified: Mon, 16 Nov 2026 20:25:19 GMT  
		Size: 79.8 MB (79840574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:7010c73b90257ee6127538da8d4ce4693e64fedc16e033f0347bd09154d3a48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.8 KB (460804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0451d500ea2cc0a589c370c71ca05a9842c4402dd6e45fbeb536c3181be7ee9c`

```dockerfile
```

-	Layers:
	-	`sha256:59d419b57c168af17b8a2fcbc64f9e726b82ae381697a9c3243d86c2a89f7ec4`  
		Last Modified: Mon, 16 Nov 2026 20:25:17 GMT  
		Size: 445.9 KB (445869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e2b24588668cbefdf7628c7f4691b58863e1a9c045b4ed605a59a5ff3bb6289`  
		Last Modified: Mon, 16 Nov 2026 20:25:17 GMT  
		Size: 14.9 KB (14935 bytes)  
		MIME: application/vnd.in-toto+json
