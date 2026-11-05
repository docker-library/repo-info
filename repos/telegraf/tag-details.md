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
$ docker pull telegraf@sha256:2958e3cbdc22d702ebd4a1e2db004c564f52a866551a65817eea26011407ea66
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
$ docker pull telegraf@sha256:7d2078bf1c75a0b3e5f1a88345067bb164a46437ba3d013c0a9b4f793788cc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181082014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c01c6118d8b4b1d1470457ce872f1fdabb4df40435763622b5843d766d3472e7`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 08:47:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:47:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:47:33 GMT
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
	-	`sha256:cc81d701129db2257202ea8ba3603e2a29d85d550ac58e86a009caf05dfdc92d`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 19.3 MB (19290785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ad69db49825ee84cc3b3acc4f776d0aae382d96f57148c96ecd10468acd5ac`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d42154070d48fd3b258bf9f31ff302402d3f145f6801beba8d9d316b85e7bf`  
		Last Modified: Thu, 05 Nov 2026 08:47:54 GMT  
		Size: 89.4 MB (89385832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b352006ce4efc62e0ecc94f1f71936b51f2860c7984c3b6a603ea681964fd4`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:7bf9158a314c782c176a8bd3ed2c24aa9f69515d86e46d227cb12ba398bde09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554ba993cbd58c24fce814083c3519fe2c46dfc3b9d1ad8722fd69a4b1e8bae9`

```dockerfile
```

-	Layers:
	-	`sha256:a83b2d3683241a9f920312d5bb6c2d6960ef973f45a8c1170110a87a498eaf6a`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 6.7 MB (6689368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d144a66a6b9b80e97877648af3bbe567cafb229574cbd2543d7e9daad538735`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:e19e537d1f2406a7086555ca79d0eaca4bb1ceb77072846112cd26de96cba53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167067340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e621cff1a37f8e02b1bf4fe469b45e2ea2514e776b9daf55fbedd85c72ca681`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 09:41:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 09:41:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 09:41:56 GMT
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
	-	`sha256:aeaf6c5623e0ee3e43f53388a6a5730bdd8ad52c8c82fb55d3e75306734e1589`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 18.0 MB (17961380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784560d87321d3f3e034f0938c988b38e68e36dc99828c772119f59eef0fcafe`  
		Last Modified: Thu, 05 Nov 2026 09:42:13 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6b0d2ac860c4dcb599502d220634fd89df1c5b08069b67d30b78d1825294a3`  
		Last Modified: Thu, 05 Nov 2026 09:42:16 GMT  
		Size: 83.1 MB (83107173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba60dcb75f54249463431f88ec2677776aee63fed729ebb490aa5d63d28c73ea`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:b5492b1cdaa2de6f5eb0a4b31a1113d8344ca53c975c10d9d2056a0e7d2a6f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8519e084a1f0d6c154cd64402f9dd4d31037cbbf212109d1ef5cf4c2ea0017`

```dockerfile
```

-	Layers:
	-	`sha256:4dd7d8173a5e472df6e7395a8f2c4d0c274edc27021a21495776317d2af05c39`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 6.7 MB (6684778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bb4eccf952e55f883d27cd32a3c8bd83866db990e9f64050e4e695363806cce`  
		Last Modified: Thu, 05 Nov 2026 09:42:13 GMT  
		Size: 14.9 KB (14867 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:1b195e1a917d88f905dc8d21e62c619bc3a0663b93a8405640a545da8b773630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170865953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34645e97ee0ec0eaa1a28c138878ad9f0c541bdd3a97b77ea389276a0f669cbf`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 08:46:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:46:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:53 GMT
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
	-	`sha256:6550ea3c670d157d85174bf6950fad1db9cb2359e2ad1ec6bee185aba7bbe79e`  
		Last Modified: Thu, 05 Nov 2026 08:47:12 GMT  
		Size: 19.2 MB (19194230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601e9b8a28405345b48256938f43026cf53a49968d4664bd28383bd2a5334093`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd3267f636b438c0ce56695d63baf641b8f2d07526e4d89bb576ef9dc65e21a`  
		Last Modified: Thu, 05 Nov 2026 08:47:13 GMT  
		Size: 79.8 MB (79812910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68d1291d264e7ef478864762d12eff5c0014511ef3e88cd6e72778c1d1d7bcd`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:774ea3583016ffaef7090e98e1896d3a059bb6d8ac53217c521e832cda70e4a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2276882598d12242411a0febdfe8b0eb82ace02d2e2fa1848990e40d9d045a`

```dockerfile
```

-	Layers:
	-	`sha256:8361932fbb8d5a5af5b3bce1b6ac0026b8848427311c071a03713ea77f731f8f`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 6.7 MB (6690056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:518d09eb8bd035d7f5aa07f03e6567dc9cd008dcaf9c44f6162d8e83fb08976c`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 14.9 KB (14890 bytes)  
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
$ docker pull telegraf@sha256:2958e3cbdc22d702ebd4a1e2db004c564f52a866551a65817eea26011407ea66
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
$ docker pull telegraf@sha256:7d2078bf1c75a0b3e5f1a88345067bb164a46437ba3d013c0a9b4f793788cc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181082014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c01c6118d8b4b1d1470457ce872f1fdabb4df40435763622b5843d766d3472e7`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 08:47:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:47:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:47:33 GMT
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
	-	`sha256:cc81d701129db2257202ea8ba3603e2a29d85d550ac58e86a009caf05dfdc92d`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 19.3 MB (19290785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ad69db49825ee84cc3b3acc4f776d0aae382d96f57148c96ecd10468acd5ac`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d42154070d48fd3b258bf9f31ff302402d3f145f6801beba8d9d316b85e7bf`  
		Last Modified: Thu, 05 Nov 2026 08:47:54 GMT  
		Size: 89.4 MB (89385832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b352006ce4efc62e0ecc94f1f71936b51f2860c7984c3b6a603ea681964fd4`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:7bf9158a314c782c176a8bd3ed2c24aa9f69515d86e46d227cb12ba398bde09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554ba993cbd58c24fce814083c3519fe2c46dfc3b9d1ad8722fd69a4b1e8bae9`

```dockerfile
```

-	Layers:
	-	`sha256:a83b2d3683241a9f920312d5bb6c2d6960ef973f45a8c1170110a87a498eaf6a`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 6.7 MB (6689368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d144a66a6b9b80e97877648af3bbe567cafb229574cbd2543d7e9daad538735`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:e19e537d1f2406a7086555ca79d0eaca4bb1ceb77072846112cd26de96cba53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167067340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e621cff1a37f8e02b1bf4fe469b45e2ea2514e776b9daf55fbedd85c72ca681`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 09:41:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 09:41:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 09:41:56 GMT
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
	-	`sha256:aeaf6c5623e0ee3e43f53388a6a5730bdd8ad52c8c82fb55d3e75306734e1589`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 18.0 MB (17961380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784560d87321d3f3e034f0938c988b38e68e36dc99828c772119f59eef0fcafe`  
		Last Modified: Thu, 05 Nov 2026 09:42:13 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6b0d2ac860c4dcb599502d220634fd89df1c5b08069b67d30b78d1825294a3`  
		Last Modified: Thu, 05 Nov 2026 09:42:16 GMT  
		Size: 83.1 MB (83107173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba60dcb75f54249463431f88ec2677776aee63fed729ebb490aa5d63d28c73ea`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:b5492b1cdaa2de6f5eb0a4b31a1113d8344ca53c975c10d9d2056a0e7d2a6f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8519e084a1f0d6c154cd64402f9dd4d31037cbbf212109d1ef5cf4c2ea0017`

```dockerfile
```

-	Layers:
	-	`sha256:4dd7d8173a5e472df6e7395a8f2c4d0c274edc27021a21495776317d2af05c39`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 6.7 MB (6684778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bb4eccf952e55f883d27cd32a3c8bd83866db990e9f64050e4e695363806cce`  
		Last Modified: Thu, 05 Nov 2026 09:42:13 GMT  
		Size: 14.9 KB (14867 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:1b195e1a917d88f905dc8d21e62c619bc3a0663b93a8405640a545da8b773630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170865953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34645e97ee0ec0eaa1a28c138878ad9f0c541bdd3a97b77ea389276a0f669cbf`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 08:46:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:46:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:53 GMT
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
	-	`sha256:6550ea3c670d157d85174bf6950fad1db9cb2359e2ad1ec6bee185aba7bbe79e`  
		Last Modified: Thu, 05 Nov 2026 08:47:12 GMT  
		Size: 19.2 MB (19194230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601e9b8a28405345b48256938f43026cf53a49968d4664bd28383bd2a5334093`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd3267f636b438c0ce56695d63baf641b8f2d07526e4d89bb576ef9dc65e21a`  
		Last Modified: Thu, 05 Nov 2026 08:47:13 GMT  
		Size: 79.8 MB (79812910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68d1291d264e7ef478864762d12eff5c0014511ef3e88cd6e72778c1d1d7bcd`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:774ea3583016ffaef7090e98e1896d3a059bb6d8ac53217c521e832cda70e4a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2276882598d12242411a0febdfe8b0eb82ace02d2e2fa1848990e40d9d045a`

```dockerfile
```

-	Layers:
	-	`sha256:8361932fbb8d5a5af5b3bce1b6ac0026b8848427311c071a03713ea77f731f8f`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 6.7 MB (6690056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:518d09eb8bd035d7f5aa07f03e6567dc9cd008dcaf9c44f6162d8e83fb08976c`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 14.9 KB (14890 bytes)  
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
$ docker pull telegraf@sha256:2958e3cbdc22d702ebd4a1e2db004c564f52a866551a65817eea26011407ea66
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
$ docker pull telegraf@sha256:7d2078bf1c75a0b3e5f1a88345067bb164a46437ba3d013c0a9b4f793788cc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181082014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c01c6118d8b4b1d1470457ce872f1fdabb4df40435763622b5843d766d3472e7`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 08:47:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:47:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:47:33 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:47:33 GMT
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
	-	`sha256:cc81d701129db2257202ea8ba3603e2a29d85d550ac58e86a009caf05dfdc92d`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 19.3 MB (19290785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ad69db49825ee84cc3b3acc4f776d0aae382d96f57148c96ecd10468acd5ac`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d42154070d48fd3b258bf9f31ff302402d3f145f6801beba8d9d316b85e7bf`  
		Last Modified: Thu, 05 Nov 2026 08:47:54 GMT  
		Size: 89.4 MB (89385832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b352006ce4efc62e0ecc94f1f71936b51f2860c7984c3b6a603ea681964fd4`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:7bf9158a314c782c176a8bd3ed2c24aa9f69515d86e46d227cb12ba398bde09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554ba993cbd58c24fce814083c3519fe2c46dfc3b9d1ad8722fd69a4b1e8bae9`

```dockerfile
```

-	Layers:
	-	`sha256:a83b2d3683241a9f920312d5bb6c2d6960ef973f45a8c1170110a87a498eaf6a`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 6.7 MB (6689368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d144a66a6b9b80e97877648af3bbe567cafb229574cbd2543d7e9daad538735`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:e19e537d1f2406a7086555ca79d0eaca4bb1ceb77072846112cd26de96cba53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167067340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e621cff1a37f8e02b1bf4fe469b45e2ea2514e776b9daf55fbedd85c72ca681`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 09:41:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 09:41:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 09:41:56 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 09:41:56 GMT
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
	-	`sha256:aeaf6c5623e0ee3e43f53388a6a5730bdd8ad52c8c82fb55d3e75306734e1589`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 18.0 MB (17961380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784560d87321d3f3e034f0938c988b38e68e36dc99828c772119f59eef0fcafe`  
		Last Modified: Thu, 05 Nov 2026 09:42:13 GMT  
		Size: 5.1 KB (5057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6b0d2ac860c4dcb599502d220634fd89df1c5b08069b67d30b78d1825294a3`  
		Last Modified: Thu, 05 Nov 2026 09:42:16 GMT  
		Size: 83.1 MB (83107173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba60dcb75f54249463431f88ec2677776aee63fed729ebb490aa5d63d28c73ea`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:b5492b1cdaa2de6f5eb0a4b31a1113d8344ca53c975c10d9d2056a0e7d2a6f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8519e084a1f0d6c154cd64402f9dd4d31037cbbf212109d1ef5cf4c2ea0017`

```dockerfile
```

-	Layers:
	-	`sha256:4dd7d8173a5e472df6e7395a8f2c4d0c274edc27021a21495776317d2af05c39`  
		Last Modified: Thu, 05 Nov 2026 09:42:14 GMT  
		Size: 6.7 MB (6684778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bb4eccf952e55f883d27cd32a3c8bd83866db990e9f64050e4e695363806cce`  
		Last Modified: Thu, 05 Nov 2026 09:42:13 GMT  
		Size: 14.9 KB (14867 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:1b195e1a917d88f905dc8d21e62c619bc3a0663b93a8405640a545da8b773630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170865953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34645e97ee0ec0eaa1a28c138878ad9f0c541bdd3a97b77ea389276a0f669cbf`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:46:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 08:46:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 08:46:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:46:53 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:53 GMT
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
	-	`sha256:6550ea3c670d157d85174bf6950fad1db9cb2359e2ad1ec6bee185aba7bbe79e`  
		Last Modified: Thu, 05 Nov 2026 08:47:12 GMT  
		Size: 19.2 MB (19194230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601e9b8a28405345b48256938f43026cf53a49968d4664bd28383bd2a5334093`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd3267f636b438c0ce56695d63baf641b8f2d07526e4d89bb576ef9dc65e21a`  
		Last Modified: Thu, 05 Nov 2026 08:47:13 GMT  
		Size: 79.8 MB (79812910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68d1291d264e7ef478864762d12eff5c0014511ef3e88cd6e72778c1d1d7bcd`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:774ea3583016ffaef7090e98e1896d3a059bb6d8ac53217c521e832cda70e4a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2276882598d12242411a0febdfe8b0eb82ace02d2e2fa1848990e40d9d045a`

```dockerfile
```

-	Layers:
	-	`sha256:8361932fbb8d5a5af5b3bce1b6ac0026b8848427311c071a03713ea77f731f8f`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 6.7 MB (6690056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:518d09eb8bd035d7f5aa07f03e6567dc9cd008dcaf9c44f6162d8e83fb08976c`  
		Last Modified: Thu, 05 Nov 2026 08:47:11 GMT  
		Size: 14.9 KB (14890 bytes)  
		MIME: application/vnd.in-toto+json
