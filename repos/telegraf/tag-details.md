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
-	[`telegraf:1.40.4`](#telegraf1404)
-	[`telegraf:1.40.4-alpine`](#telegraf1404-alpine)
-	[`telegraf:1.40.4-scratch`](#telegraf1404-scratch)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)
-	[`telegraf:scratch`](#telegrafscratch)

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:f9eea98c5f1529dae0ffde49339ab54431e0b4053364bfff9f454fa8506c0651
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
$ docker pull telegraf@sha256:b75f1943cdacd82282c3ec2933e90b5263368ced5ccd91e0a76312283b5e6329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174867024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c07a1f5cb58b0ff11db3fe085e32738010f988768a82c659c9c8ca73cdff5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:35:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:35:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:35:57 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 24 Nov 2026 05:35:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:35:57 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:35:58 GMT
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
	-	`sha256:1a98f9c43745b4326ede4738a1ca808d813310ad629ef6b9e15523df39707263`  
		Last Modified: Tue, 24 Nov 2026 05:36:17 GMT  
		Size: 19.0 MB (18950629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959dd649d4e4398a44132a2b084ed1dd891ac4b4dfd258a47c6f27ac84038377`  
		Last Modified: Tue, 24 Nov 2026 05:36:16 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2096a11e3eff326bcc5df7369d608951d5b257ab5cbc7cfd5fb2a3135b6fc9`  
		Last Modified: Tue, 24 Nov 2026 05:36:18 GMT  
		Size: 83.5 MB (83511053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce006a20dc267d1628b09d8807fd0d170281cc2ba5302d24e6a57b483de73b9`  
		Last Modified: Tue, 24 Nov 2026 05:36:16 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:3e479b376225447079d27d631c00a77ea60d3cf0ea6ee11cff29051938f5aab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2692b1737e2c3b91f7bf7852b2db564105946b5c56fe8e240e26ba4735522412`

```dockerfile
```

-	Layers:
	-	`sha256:93340d7147e9fa39a62a2899ca1ec9a2e2c4edadda37b25098cc48771b598e5c`  
		Last Modified: Tue, 24 Nov 2026 05:36:16 GMT  
		Size: 6.7 MB (6676782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca9d6b40e255aecf713b0bf771949f704fd4de46b39e57e126241c798e79102f`  
		Last Modified: Tue, 24 Nov 2026 05:36:16 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a09a2dcb2a2ae8aa6afbcc4229e6f8a94e8a5814822b01e7cc7ef3f44e928ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161129932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f991761521787581535a923f1bec58550c747c0521f1467286d67a5db0c48de0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:02 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 06:42:09 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 24 Nov 2026 06:42:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 06:42:09 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 06:42:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 06:42:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:42:09 GMT
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
	-	`sha256:171ac713c4a49df4017dd55c28225912a164220d924655266eb1e2de678e16ec`  
		Last Modified: Tue, 24 Nov 2026 06:42:27 GMT  
		Size: 17.7 MB (17703684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a73344fba80ea558b806f44d91a4a558e4a04686bde12c293eece98b155c5`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2faeca132afc40b31fbff69909ea984a6ec6008a585dff5eb0e5f1c1902d9f11`  
		Last Modified: Tue, 24 Nov 2026 06:42:29 GMT  
		Size: 77.4 MB (77427889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b683e1e10be2387d669944be036aded8f13aa6d5da23fc2a207562cfb3b96bd`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:bba8a80ee3cfab8718ba7432662527ed299db0ae0fa28542ab9c1a81bbe59f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6685896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21c4e45992c98ea6becdbdbd9ca313b004c02b32fe993d961cffb7d90aa774a`

```dockerfile
```

-	Layers:
	-	`sha256:ed3a1dc0abff2bef7fad54cc36daa660c536650e8cebbe17157300d3c1a914ce`  
		Last Modified: Tue, 24 Nov 2026 06:42:27 GMT  
		Size: 6.7 MB (6671379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61e68e6fe59700cb891389e0549817195f1db161501263239f1243001a50bc03`  
		Last Modified: Tue, 24 Nov 2026 06:42:27 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:58be4b4ca5915cc7218bdf736644c9bd5b0001817d77476eda99b76391ac54bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165225689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e9bb6555292417f8179e2f6e2a8802563ee1d49891710ac3b392e1c374c857`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:47:53 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:47:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:47:59 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 24 Nov 2026 05:47:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:47:59 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:47:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:47:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:47:59 GMT
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
	-	`sha256:919ce3e1c16c53a157f6c215ec6c6f93187947b0997724db6489eae67f64bc93`  
		Last Modified: Tue, 24 Nov 2026 05:48:18 GMT  
		Size: 18.9 MB (18890566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d8cd3388df36e118d53cda72a4bfe6f6ae2da974adc779ac78e2496963f505`  
		Last Modified: Tue, 24 Nov 2026 05:48:17 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce64a6c544bf0c264d183072b424fa0c071d377058a07cacbaff1b148122b0c5`  
		Last Modified: Tue, 24 Nov 2026 05:48:20 GMT  
		Size: 74.5 MB (74476787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dcca22af2e891096eb220a11708efbc4ca52cbcbc22e611935a7be9f310391`  
		Last Modified: Tue, 24 Nov 2026 05:48:17 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:bf00b0bda761297d40f63ec43b525774faf9542ec507bda710555b5a694277c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89e8dd50b9fcfbdfffea00bbfda896ff0052a1353ed0556ee6b91b7fd59ba63`

```dockerfile
```

-	Layers:
	-	`sha256:b762d8925833b2976c2c5a5d975c365581e32e8658c84eb660cdd0e6ef70ef23`  
		Last Modified: Tue, 24 Nov 2026 05:48:18 GMT  
		Size: 6.7 MB (6677458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b88f9b8611825bf87696af44d9a5dbd8df1acbb170bf15a5a33213314ba91cad`  
		Last Modified: Tue, 24 Nov 2026 05:48:17 GMT  
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
$ docker pull telegraf@sha256:f9eea98c5f1529dae0ffde49339ab54431e0b4053364bfff9f454fa8506c0651
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
$ docker pull telegraf@sha256:b75f1943cdacd82282c3ec2933e90b5263368ced5ccd91e0a76312283b5e6329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174867024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c07a1f5cb58b0ff11db3fe085e32738010f988768a82c659c9c8ca73cdff5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:35:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:35:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:35:57 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 24 Nov 2026 05:35:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:35:57 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:35:58 GMT
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
	-	`sha256:1a98f9c43745b4326ede4738a1ca808d813310ad629ef6b9e15523df39707263`  
		Last Modified: Tue, 24 Nov 2026 05:36:17 GMT  
		Size: 19.0 MB (18950629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959dd649d4e4398a44132a2b084ed1dd891ac4b4dfd258a47c6f27ac84038377`  
		Last Modified: Tue, 24 Nov 2026 05:36:16 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2096a11e3eff326bcc5df7369d608951d5b257ab5cbc7cfd5fb2a3135b6fc9`  
		Last Modified: Tue, 24 Nov 2026 05:36:18 GMT  
		Size: 83.5 MB (83511053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce006a20dc267d1628b09d8807fd0d170281cc2ba5302d24e6a57b483de73b9`  
		Last Modified: Tue, 24 Nov 2026 05:36:16 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:3e479b376225447079d27d631c00a77ea60d3cf0ea6ee11cff29051938f5aab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2692b1737e2c3b91f7bf7852b2db564105946b5c56fe8e240e26ba4735522412`

```dockerfile
```

-	Layers:
	-	`sha256:93340d7147e9fa39a62a2899ca1ec9a2e2c4edadda37b25098cc48771b598e5c`  
		Last Modified: Tue, 24 Nov 2026 05:36:16 GMT  
		Size: 6.7 MB (6676782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca9d6b40e255aecf713b0bf771949f704fd4de46b39e57e126241c798e79102f`  
		Last Modified: Tue, 24 Nov 2026 05:36:16 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a09a2dcb2a2ae8aa6afbcc4229e6f8a94e8a5814822b01e7cc7ef3f44e928ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161129932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f991761521787581535a923f1bec58550c747c0521f1467286d67a5db0c48de0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:02 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 06:42:09 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 24 Nov 2026 06:42:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 06:42:09 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 06:42:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 06:42:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:42:09 GMT
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
	-	`sha256:171ac713c4a49df4017dd55c28225912a164220d924655266eb1e2de678e16ec`  
		Last Modified: Tue, 24 Nov 2026 06:42:27 GMT  
		Size: 17.7 MB (17703684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a73344fba80ea558b806f44d91a4a558e4a04686bde12c293eece98b155c5`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2faeca132afc40b31fbff69909ea984a6ec6008a585dff5eb0e5f1c1902d9f11`  
		Last Modified: Tue, 24 Nov 2026 06:42:29 GMT  
		Size: 77.4 MB (77427889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b683e1e10be2387d669944be036aded8f13aa6d5da23fc2a207562cfb3b96bd`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:bba8a80ee3cfab8718ba7432662527ed299db0ae0fa28542ab9c1a81bbe59f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6685896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21c4e45992c98ea6becdbdbd9ca313b004c02b32fe993d961cffb7d90aa774a`

```dockerfile
```

-	Layers:
	-	`sha256:ed3a1dc0abff2bef7fad54cc36daa660c536650e8cebbe17157300d3c1a914ce`  
		Last Modified: Tue, 24 Nov 2026 06:42:27 GMT  
		Size: 6.7 MB (6671379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61e68e6fe59700cb891389e0549817195f1db161501263239f1243001a50bc03`  
		Last Modified: Tue, 24 Nov 2026 06:42:27 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:58be4b4ca5915cc7218bdf736644c9bd5b0001817d77476eda99b76391ac54bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165225689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e9bb6555292417f8179e2f6e2a8802563ee1d49891710ac3b392e1c374c857`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:47:53 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:47:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:47:59 GMT
ENV TELEGRAF_VERSION=1.38.4
# Tue, 24 Nov 2026 05:47:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:47:59 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:47:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:47:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:47:59 GMT
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
	-	`sha256:919ce3e1c16c53a157f6c215ec6c6f93187947b0997724db6489eae67f64bc93`  
		Last Modified: Tue, 24 Nov 2026 05:48:18 GMT  
		Size: 18.9 MB (18890566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d8cd3388df36e118d53cda72a4bfe6f6ae2da974adc779ac78e2496963f505`  
		Last Modified: Tue, 24 Nov 2026 05:48:17 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce64a6c544bf0c264d183072b424fa0c071d377058a07cacbaff1b148122b0c5`  
		Last Modified: Tue, 24 Nov 2026 05:48:20 GMT  
		Size: 74.5 MB (74476787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dcca22af2e891096eb220a11708efbc4ca52cbcbc22e611935a7be9f310391`  
		Last Modified: Tue, 24 Nov 2026 05:48:17 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:bf00b0bda761297d40f63ec43b525774faf9542ec507bda710555b5a694277c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89e8dd50b9fcfbdfffea00bbfda896ff0052a1353ed0556ee6b91b7fd59ba63`

```dockerfile
```

-	Layers:
	-	`sha256:b762d8925833b2976c2c5a5d975c365581e32e8658c84eb660cdd0e6ef70ef23`  
		Last Modified: Tue, 24 Nov 2026 05:48:18 GMT  
		Size: 6.7 MB (6677458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b88f9b8611825bf87696af44d9a5dbd8df1acbb170bf15a5a33213314ba91cad`  
		Last Modified: Tue, 24 Nov 2026 05:48:17 GMT  
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
$ docker pull telegraf@sha256:1b1deb2d16c789d516fd0ec6dd65540026e5b6a7a893061ffd03b80875e64134
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
$ docker pull telegraf@sha256:49b6372c00b9ae01d0edc8a139cfa80e03e8f3006f88b80074f3373e6bed6360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177611144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9b74aa2ce6598038229c819e89e22b40762e9e433ad1692a5c7994dbea8a03`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:36:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:36:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:36:27 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 24 Nov 2026 05:36:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:36:27 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:36:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:36:27 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 05:36:27 GMT
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
	-	`sha256:8b8ff560314809c222485857203586ff35cb9d9c5f8ac1d9e367554f1c0a7e6f`  
		Last Modified: Tue, 24 Nov 2026 05:36:46 GMT  
		Size: 19.3 MB (19290607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91f69982e67f92343dde80f90e638633f62405c476ccf7edb9e1a2eae7ca07e`  
		Last Modified: Tue, 24 Nov 2026 05:36:45 GMT  
		Size: 5.1 KB (5068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960035894a0626682ae7b8ea06a2d767aac9c45c741dc6b68c7db5981176b5`  
		Last Modified: Tue, 24 Nov 2026 05:36:47 GMT  
		Size: 85.9 MB (85915196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1286bf15195b910f75747ec178de473f921f8870189dc9a8fcc280f75b300158`  
		Last Modified: Tue, 24 Nov 2026 05:36:45 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:acf489294e24c1e97df0354c3cba7da0bca36998f2d73fa8acd57462470ef74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6083f04cfe0d6437ac344017de7ab2951749c7551de252ec0d3def1cd063ab0`

```dockerfile
```

-	Layers:
	-	`sha256:c04b2e671000ce4286629161968b7adfe61d63ee407bee79d66cbaf4c5574131`  
		Last Modified: Tue, 24 Nov 2026 05:36:45 GMT  
		Size: 6.7 MB (6686665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23d1b9447fbe38d109c079f5bf305cde9f393ea7e03fa8a87f83caf22e02f322`  
		Last Modified: Tue, 24 Nov 2026 05:36:45 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:91a5f790d1cca98f5eb9aafb7271a381d18fd1e7c4b58a6723df9da20d6ec426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163822497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ef419146afc7b46b035b2fa089982960dcf44adb2fc41d23661838d0ab3b9a`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 06:42:08 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 24 Nov 2026 06:42:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 06:42:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 06:42:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 06:42:08 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 06:42:08 GMT
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
	-	`sha256:7246f1e192d90c8b687edb592f839ca06a4dcf7701eaed11404d01f4fe3e399d`  
		Last Modified: Tue, 24 Nov 2026 06:42:29 GMT  
		Size: 18.0 MB (17961295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b52051ed1788c214e39af3856ff773a0974e344231f45f2bba250b8e60b2d8`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb789f90ed37e3fa60e36988255d7c751c4080b25d640a6d9e9212da145dd5ad`  
		Last Modified: Tue, 24 Nov 2026 06:42:31 GMT  
		Size: 79.9 MB (79862844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294af9f978f1fcf7053e6e51af8b557e5323d16b744e5f615bffdc36d752e290`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:e666dad079f730f048894012fcc9829c744c580f866464bd3378ed3571adb5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1657a8640277c98d376cdd554d0e96c798cc6573a7698a2bdce6cf24b3ccebc`

```dockerfile
```

-	Layers:
	-	`sha256:8e1b2e8fd708d331487ac2ac8fbd362c62ce27af75799a321c331bc6a328046c`  
		Last Modified: Tue, 24 Nov 2026 06:42:29 GMT  
		Size: 6.7 MB (6682067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c59c3a92efc418edba444730202397e5d66dcecf26438f708d0a7957a5bc442`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a08862fdedb68feaeb18562338a5292f60d51a2332a4f53362d8d75f46464266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167806515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db3d3c8604ee37986b06e023643ada865eb29da9c7992f36dd7dcf20b73db7d`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:48:31 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:48:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:48:38 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 24 Nov 2026 05:48:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:48:38 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:48:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:48:38 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 05:48:38 GMT
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
	-	`sha256:3ab71020429332244214b424458c0ae5ab57063127781ce3a0c1624ab4f47649`  
		Last Modified: Tue, 24 Nov 2026 05:48:58 GMT  
		Size: 19.2 MB (19194516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897847d69053daecc5f468dcc455ca237b88f15e5d94dcbf1e9b62f3100aa8b5`  
		Last Modified: Tue, 24 Nov 2026 05:48:57 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f4f3224c6d08d3bbcea30f5b2458add0265a5e6c89845403e94e02e764d0e`  
		Last Modified: Tue, 24 Nov 2026 05:48:59 GMT  
		Size: 76.8 MB (76753663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb2253e753559d914ba3bef2992b4ac7cf8e63b69948da6e546d427071e9328`  
		Last Modified: Tue, 24 Nov 2026 05:48:57 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:bc2e7ed26cdf934005d86769fb476e712877a49f19f544a7c56a1cf1a5e361ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3f179a74f5f91ae587f69f95ef8ea27dc224c1a1a09c2c791b217f5107bf04`

```dockerfile
```

-	Layers:
	-	`sha256:257f4f5556c962db85e45519a66c0d981c5d59340c3346d29fd98a293dac6fec`  
		Last Modified: Tue, 24 Nov 2026 05:48:57 GMT  
		Size: 6.7 MB (6687341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18462f899eab4aa485fc5fc11c3aaa5d73eb9c01e7054953399139db26650c73`  
		Last Modified: Tue, 24 Nov 2026 05:48:57 GMT  
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
$ docker pull telegraf@sha256:1b1deb2d16c789d516fd0ec6dd65540026e5b6a7a893061ffd03b80875e64134
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
$ docker pull telegraf@sha256:49b6372c00b9ae01d0edc8a139cfa80e03e8f3006f88b80074f3373e6bed6360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177611144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9b74aa2ce6598038229c819e89e22b40762e9e433ad1692a5c7994dbea8a03`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:36:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:36:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:36:27 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 24 Nov 2026 05:36:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:36:27 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:36:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:36:27 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 05:36:27 GMT
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
	-	`sha256:8b8ff560314809c222485857203586ff35cb9d9c5f8ac1d9e367554f1c0a7e6f`  
		Last Modified: Tue, 24 Nov 2026 05:36:46 GMT  
		Size: 19.3 MB (19290607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91f69982e67f92343dde80f90e638633f62405c476ccf7edb9e1a2eae7ca07e`  
		Last Modified: Tue, 24 Nov 2026 05:36:45 GMT  
		Size: 5.1 KB (5068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960035894a0626682ae7b8ea06a2d767aac9c45c741dc6b68c7db5981176b5`  
		Last Modified: Tue, 24 Nov 2026 05:36:47 GMT  
		Size: 85.9 MB (85915196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1286bf15195b910f75747ec178de473f921f8870189dc9a8fcc280f75b300158`  
		Last Modified: Tue, 24 Nov 2026 05:36:45 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:acf489294e24c1e97df0354c3cba7da0bca36998f2d73fa8acd57462470ef74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6083f04cfe0d6437ac344017de7ab2951749c7551de252ec0d3def1cd063ab0`

```dockerfile
```

-	Layers:
	-	`sha256:c04b2e671000ce4286629161968b7adfe61d63ee407bee79d66cbaf4c5574131`  
		Last Modified: Tue, 24 Nov 2026 05:36:45 GMT  
		Size: 6.7 MB (6686665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23d1b9447fbe38d109c079f5bf305cde9f393ea7e03fa8a87f83caf22e02f322`  
		Last Modified: Tue, 24 Nov 2026 05:36:45 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:91a5f790d1cca98f5eb9aafb7271a381d18fd1e7c4b58a6723df9da20d6ec426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163822497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ef419146afc7b46b035b2fa089982960dcf44adb2fc41d23661838d0ab3b9a`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:42:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 06:42:08 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 24 Nov 2026 06:42:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 06:42:08 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 06:42:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 06:42:08 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 06:42:08 GMT
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
	-	`sha256:7246f1e192d90c8b687edb592f839ca06a4dcf7701eaed11404d01f4fe3e399d`  
		Last Modified: Tue, 24 Nov 2026 06:42:29 GMT  
		Size: 18.0 MB (17961295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b52051ed1788c214e39af3856ff773a0974e344231f45f2bba250b8e60b2d8`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb789f90ed37e3fa60e36988255d7c751c4080b25d640a6d9e9212da145dd5ad`  
		Last Modified: Tue, 24 Nov 2026 06:42:31 GMT  
		Size: 79.9 MB (79862844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294af9f978f1fcf7053e6e51af8b557e5323d16b744e5f615bffdc36d752e290`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:e666dad079f730f048894012fcc9829c744c580f866464bd3378ed3571adb5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1657a8640277c98d376cdd554d0e96c798cc6573a7698a2bdce6cf24b3ccebc`

```dockerfile
```

-	Layers:
	-	`sha256:8e1b2e8fd708d331487ac2ac8fbd362c62ce27af75799a321c331bc6a328046c`  
		Last Modified: Tue, 24 Nov 2026 06:42:29 GMT  
		Size: 6.7 MB (6682067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c59c3a92efc418edba444730202397e5d66dcecf26438f708d0a7957a5bc442`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 14.6 KB (14558 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a08862fdedb68feaeb18562338a5292f60d51a2332a4f53362d8d75f46464266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167806515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db3d3c8604ee37986b06e023643ada865eb29da9c7992f36dd7dcf20b73db7d`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:48:31 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:48:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:48:38 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 24 Nov 2026 05:48:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 24 Nov 2026 05:48:38 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 24 Nov 2026 05:48:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:48:38 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 05:48:38 GMT
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
	-	`sha256:3ab71020429332244214b424458c0ae5ab57063127781ce3a0c1624ab4f47649`  
		Last Modified: Tue, 24 Nov 2026 05:48:58 GMT  
		Size: 19.2 MB (19194516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897847d69053daecc5f468dcc455ca237b88f15e5d94dcbf1e9b62f3100aa8b5`  
		Last Modified: Tue, 24 Nov 2026 05:48:57 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f4f3224c6d08d3bbcea30f5b2458add0265a5e6c89845403e94e02e764d0e`  
		Last Modified: Tue, 24 Nov 2026 05:48:59 GMT  
		Size: 76.8 MB (76753663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb2253e753559d914ba3bef2992b4ac7cf8e63b69948da6e546d427071e9328`  
		Last Modified: Tue, 24 Nov 2026 05:48:57 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:bc2e7ed26cdf934005d86769fb476e712877a49f19f544a7c56a1cf1a5e361ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3f179a74f5f91ae587f69f95ef8ea27dc224c1a1a09c2c791b217f5107bf04`

```dockerfile
```

-	Layers:
	-	`sha256:257f4f5556c962db85e45519a66c0d981c5d59340c3346d29fd98a293dac6fec`  
		Last Modified: Tue, 24 Nov 2026 05:48:57 GMT  
		Size: 6.7 MB (6687341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18462f899eab4aa485fc5fc11c3aaa5d73eb9c01e7054953399139db26650c73`  
		Last Modified: Tue, 24 Nov 2026 05:48:57 GMT  
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
$ docker pull telegraf@sha256:ed12bf60e0d634c48d403ed02ae8b67fb3f885cbd939c4d4ba7ea05c05a4741a
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
$ docker pull telegraf@sha256:deb468edbd62e73eff3953115d5896d4edaa80df12b0ca5637b0c776886ebac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182807319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecda0cc97c8037ce19b7de226e9553494ec4ba628f7c6c9f96ac8b7a5155ea6e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:17:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:17:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:22 GMT
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
	-	`sha256:0e85b411edc6f7c73a4839c04234d328dce2f9bb437dd3c66008fc7d6c4d0e7e`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 19.3 MB (19290671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a608d8bb9411a5b136b16aaec0857471c009c41146f107a3ee7f8f20830c8870`  
		Last Modified: Thu, 26 Nov 2026 01:17:41 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cef56481de0690add5b18fc14e601c49a37d6a1d66971052fb798711ea36403`  
		Last Modified: Thu, 26 Nov 2026 01:17:44 GMT  
		Size: 91.1 MB (91111319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142f5187fbe50df7b24d4cd0606e38f91e6d772c591031c6bcfb2478fa815872`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:8cd85c95815cdcd7a62af0d62eeef59d6ee8482104e57dc6622d83c60c4847dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e737313120c13f467bfacc16f94a8b7fe50349aa54e0414181d87aca0e4b8b6c`

```dockerfile
```

-	Layers:
	-	`sha256:7a9d7c25aa49593c171609f6259e5765bf0aa9fa7951273a1863f72dfd5f8e8e`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 6.7 MB (6691761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fd27ece096e90ad05cc0ce2116908b2f223649e205b9ce730e66aec5d9b2d2c`  
		Last Modified: Thu, 26 Nov 2026 01:17:41 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:58bd27270aa6e04f5a3a4e39a4bedcb9f90e135cd1875bcd5f039ccf9dbc001e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168658873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ac5837eca26e2a45d29969b05ff35bf8ebc8ca1d7aa67784c9aff2b24617c0`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:42 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:16:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:16:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:16:48 GMT
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
	-	`sha256:e7f6fe5571a5ce487d851c3d23dd6dcf3d5a6143f9093018e5476f59f5777aac`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 18.0 MB (17961281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a981299e2b9e48f3d8a5239f952bc1d0b6d6735ef2d6e278868eab3fae7d4b5`  
		Last Modified: Thu, 26 Nov 2026 01:17:05 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78b325565c13db87047177465053b6db0fed529c2e1a32727a9606741cf2c8c`  
		Last Modified: Thu, 26 Nov 2026 01:17:08 GMT  
		Size: 84.7 MB (84699233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e706d4ac5af8bb353fe7ba731b503810730195d95c90100fb51814e0d6a0377`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:217cda5c576efeb7f43deb74a7ae93f5c6dd3b99a71a6a3705b15fe4be084c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58edb0efaf43e96e7958cff155cf56d8ccaa1b34a1e8e103a03adb610fade22a`

```dockerfile
```

-	Layers:
	-	`sha256:7ed802181e61e9178b6d6f21228af620cf2fabd99d80f4921d57aa0cd751d782`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 6.7 MB (6687171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3ea08824cff3ab60681643108cb12c3bd36f69ccf79c70acfb8f6d933388e35`  
		Last Modified: Thu, 26 Nov 2026 01:17:05 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4eb8338299171ed65ef10ecdf8302eff725ff944c60dc304113f65e49cee380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172344900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad080e7dc38a8758f9083dbae03624d6f4ffdad009d8ffb846261cf85a836d72`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:16:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:16:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:16:34 GMT
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
	-	`sha256:0dba79b5d25f1db2e1537a95e88715aec93094ae4c3da5f69b1c270955834b7e`  
		Last Modified: Thu, 26 Nov 2026 01:16:53 GMT  
		Size: 19.2 MB (19194142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168074cf7691204b7c88216107978b876ac8db6c71e79fe56d3773848f540e86`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f0280c64319f141b81d2d67b4e38b9922246fdd7eafee9ab26a959fe7883d3`  
		Last Modified: Thu, 26 Nov 2026 01:16:54 GMT  
		Size: 81.3 MB (81292421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde538fb5a30684bdba30894f3a300a416b78578822a7ee8df86137aeb9f6f7f`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:52ce28074fa38d2be01af9c49c644710e4abbfe5057deac11363b0ff8de2bd99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6707341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f49756f5d7fd2bf54ce610adebfeee593a8944bb8cdc9aaa62a194876bbb157`

```dockerfile
```

-	Layers:
	-	`sha256:3528d003a73ec04473d88d7d96f044d6482ae99ba684147de4f04829aa5e930a`  
		Last Modified: Thu, 26 Nov 2026 01:16:53 GMT  
		Size: 6.7 MB (6692449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47c8f93029f7f9925f9aa274cc8309ba840bc76d5431cff0969871216ab5139b`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:cf86d98a43dc341ef551f0ed9e7d0e77363ef8be1de2fb6de4fb4103fb415da1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:163962394c005d474173ac3743a117464024177d4be4778c0b99dd3cb6568f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100236490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d91f0915e75697cc4d972f947a7edae7c80bcd59b5c0b88983b4508ad671f1`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:17:52 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:17:53 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:59 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:59 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea71ecc28e2246479d51d85df260d06d5a7be86898a2f3b6314f859a4bee18fd`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7177a24e99dd7e633dca610f2e13db444c9a88bc6fc0721f495e65cbf98931`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 2.6 MB (2578267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253faddaaa5199e7e712ac3db162b7088b1ab47ef3872f7c02cf322cb9c73164`  
		Last Modified: Thu, 26 Nov 2026 01:18:18 GMT  
		Size: 93.8 MB (93804722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c913c9d8fbbd66982d2c218605c26728eec7c64f2f16747ad5e19bdb402e16d3`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:79b7699dc8a25309b0837452e36c5d4d66f564161abc318f6f1eac7498483ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c827ef29551d66ba75cf3644e473927ff50442149d01ac6856f73eb168566024`

```dockerfile
```

-	Layers:
	-	`sha256:52aae5db9f64b7c5d55b4f5d4be823060a9780fcffc62ac18024ffeabb19d299`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 1.2 MB (1152207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca1df27dccb6070b0c688b66251788996accb8f282366bc5413e37299af1a9f`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 15.8 KB (15787 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:5d9b524df2d3092ef4b6739d7a109ba86bf52d904f4ae1a744218d27260cd6e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90786558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb66234022102dd47910d6be2b14aa15b74008f9c2276a8d10cfd9732d496a6`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:17:01 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:17:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:09 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:09 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f667698a437cc48e67f6c6d6f3370356f4a050c967245c170640fecfe23c80d`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474b5674178f8b7688b4acdf6c148f76896b5bde78800e0c13f36aeefef75752`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 2.6 MB (2628532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16496fb1e3acd948f8e6eba94920c62f9af1cbc5f18c02be7bbbd7d74e216b5c`  
		Last Modified: Thu, 26 Nov 2026 01:17:26 GMT  
		Size: 84.0 MB (83966891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad9743b21ebbda7c27052d8e22f2686e83ffd59d943b181a4b5d50411cf4810`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:2712211b599a31299347db9e38e663e724072ed558bea16ab5a274d868e3e1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1163106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98183e5c7a246d9eea19a52832ebf3d9ca63433683f068b90b0c917725d7e59`

```dockerfile
```

-	Layers:
	-	`sha256:8639b611a0aa7af03f058bd9c7324131c5fdeaaacc133cd07ebaa18ae300b39c`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 1.1 MB (1147196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ba1752fe0a02b7ec6616a51f521558ff2f28fbc4c457e258667942d8c53c092`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-scratch`

```console
$ docker pull telegraf@sha256:997349df727e56fb66f569d5947191e1a1a3fa637d94eae589cdb3b0cd68c5df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-scratch` - linux; amd64

```console
$ docker pull telegraf@sha256:416ae3cbff02a98e1932f83c2f38fff76149668cd94c435f9a75f0b8d8dce27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91128567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1dbfc2fecd0fb214efbdfb8f73baa3c491e2ce8eef0189d65fc65e7c3048b4f`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Thu, 26 Nov 2026 01:32:42 GMT
COPY /rootfs/ / # buildkit
# Thu, 26 Nov 2026 01:32:42 GMT
ENV HOME=/home/telegraf
# Thu, 26 Nov 2026 01:32:42 GMT
USER 65532:65532
# Thu, 26 Nov 2026 01:32:42 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Thu, 26 Nov 2026 01:32:42 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:a14197fc6ee1f086c0066089ecfb3fafd76b44798a60568e7c1108f5b7dd8bd8`  
		Last Modified: Thu, 26 Nov 2026 01:33:02 GMT  
		Size: 91.1 MB (91128567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:f07ce057a94fcf84ef313a2b58e901be5def0e302660ced3d88b3dcd5709e1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.3 KB (466264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0b86f75140bcf2b00af6e3fe55445c245701a8303ef6aaa2792577d92fe0b4`

```dockerfile
```

-	Layers:
	-	`sha256:bac4edae9733e3c34fea2d8b856922409aa53af54c8bd979cf4101c2d1a98192`  
		Last Modified: Thu, 26 Nov 2026 01:33:00 GMT  
		Size: 451.4 KB (451421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d291b1a803f1682b1ee17cf36e5cabfe0e8f5eac6352a4304382d2864a5c30f`  
		Last Modified: Thu, 26 Nov 2026 01:33:00 GMT  
		Size: 14.8 KB (14843 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-scratch` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f1d1874543a344bc0cfb6f0c4df26c8f63dfb8844867b563e59e485dd77f05c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81301223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a8d3e63288399a4dc160af4439caafc05d26a6e4214f077e1c5acf6e1622eb`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Thu, 26 Nov 2026 01:18:47 GMT
COPY /rootfs/ / # buildkit
# Thu, 26 Nov 2026 01:18:47 GMT
ENV HOME=/home/telegraf
# Thu, 26 Nov 2026 01:18:47 GMT
USER 65532:65532
# Thu, 26 Nov 2026 01:18:47 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Thu, 26 Nov 2026 01:18:47 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:fe3b6683687e8899d3038efd5fbec4d2db352294c89c27254ad53cb6dff536b5`  
		Last Modified: Thu, 26 Nov 2026 01:19:04 GMT  
		Size: 81.3 MB (81301223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:ad2b328cee4955648b78dd86bfa5a9b12a2c0b328838e56e8e4dff76156344ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 KB (463196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287a9d36177370944fb75234b23aad1d45c6d7e6e8d3190bb038d6c38669f72`

```dockerfile
```

-	Layers:
	-	`sha256:cca888cdab24abd91b5284f2c1ef1e41924c5b4a5313215dc9eac9a699fd8854`  
		Last Modified: Thu, 26 Nov 2026 01:19:03 GMT  
		Size: 448.3 KB (448262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ded75948c39fbc42910961c548df14d6e47a0e40e4b7067215925bfa8dc96c3`  
		Last Modified: Thu, 26 Nov 2026 01:19:03 GMT  
		Size: 14.9 KB (14934 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.4`

```console
$ docker pull telegraf@sha256:ed12bf60e0d634c48d403ed02ae8b67fb3f885cbd939c4d4ba7ea05c05a4741a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.4` - linux; amd64

```console
$ docker pull telegraf@sha256:deb468edbd62e73eff3953115d5896d4edaa80df12b0ca5637b0c776886ebac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182807319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecda0cc97c8037ce19b7de226e9553494ec4ba628f7c6c9f96ac8b7a5155ea6e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:17:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:17:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:22 GMT
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
	-	`sha256:0e85b411edc6f7c73a4839c04234d328dce2f9bb437dd3c66008fc7d6c4d0e7e`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 19.3 MB (19290671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a608d8bb9411a5b136b16aaec0857471c009c41146f107a3ee7f8f20830c8870`  
		Last Modified: Thu, 26 Nov 2026 01:17:41 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cef56481de0690add5b18fc14e601c49a37d6a1d66971052fb798711ea36403`  
		Last Modified: Thu, 26 Nov 2026 01:17:44 GMT  
		Size: 91.1 MB (91111319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142f5187fbe50df7b24d4cd0606e38f91e6d772c591031c6bcfb2478fa815872`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:8cd85c95815cdcd7a62af0d62eeef59d6ee8482104e57dc6622d83c60c4847dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e737313120c13f467bfacc16f94a8b7fe50349aa54e0414181d87aca0e4b8b6c`

```dockerfile
```

-	Layers:
	-	`sha256:7a9d7c25aa49593c171609f6259e5765bf0aa9fa7951273a1863f72dfd5f8e8e`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 6.7 MB (6691761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fd27ece096e90ad05cc0ce2116908b2f223649e205b9ce730e66aec5d9b2d2c`  
		Last Modified: Thu, 26 Nov 2026 01:17:41 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:58bd27270aa6e04f5a3a4e39a4bedcb9f90e135cd1875bcd5f039ccf9dbc001e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168658873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ac5837eca26e2a45d29969b05ff35bf8ebc8ca1d7aa67784c9aff2b24617c0`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:42 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:16:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:16:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:16:48 GMT
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
	-	`sha256:e7f6fe5571a5ce487d851c3d23dd6dcf3d5a6143f9093018e5476f59f5777aac`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 18.0 MB (17961281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a981299e2b9e48f3d8a5239f952bc1d0b6d6735ef2d6e278868eab3fae7d4b5`  
		Last Modified: Thu, 26 Nov 2026 01:17:05 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78b325565c13db87047177465053b6db0fed529c2e1a32727a9606741cf2c8c`  
		Last Modified: Thu, 26 Nov 2026 01:17:08 GMT  
		Size: 84.7 MB (84699233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e706d4ac5af8bb353fe7ba731b503810730195d95c90100fb51814e0d6a0377`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:217cda5c576efeb7f43deb74a7ae93f5c6dd3b99a71a6a3705b15fe4be084c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58edb0efaf43e96e7958cff155cf56d8ccaa1b34a1e8e103a03adb610fade22a`

```dockerfile
```

-	Layers:
	-	`sha256:7ed802181e61e9178b6d6f21228af620cf2fabd99d80f4921d57aa0cd751d782`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 6.7 MB (6687171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3ea08824cff3ab60681643108cb12c3bd36f69ccf79c70acfb8f6d933388e35`  
		Last Modified: Thu, 26 Nov 2026 01:17:05 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4eb8338299171ed65ef10ecdf8302eff725ff944c60dc304113f65e49cee380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172344900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad080e7dc38a8758f9083dbae03624d6f4ffdad009d8ffb846261cf85a836d72`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:16:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:16:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:16:34 GMT
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
	-	`sha256:0dba79b5d25f1db2e1537a95e88715aec93094ae4c3da5f69b1c270955834b7e`  
		Last Modified: Thu, 26 Nov 2026 01:16:53 GMT  
		Size: 19.2 MB (19194142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168074cf7691204b7c88216107978b876ac8db6c71e79fe56d3773848f540e86`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f0280c64319f141b81d2d67b4e38b9922246fdd7eafee9ab26a959fe7883d3`  
		Last Modified: Thu, 26 Nov 2026 01:16:54 GMT  
		Size: 81.3 MB (81292421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde538fb5a30684bdba30894f3a300a416b78578822a7ee8df86137aeb9f6f7f`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:52ce28074fa38d2be01af9c49c644710e4abbfe5057deac11363b0ff8de2bd99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6707341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f49756f5d7fd2bf54ce610adebfeee593a8944bb8cdc9aaa62a194876bbb157`

```dockerfile
```

-	Layers:
	-	`sha256:3528d003a73ec04473d88d7d96f044d6482ae99ba684147de4f04829aa5e930a`  
		Last Modified: Thu, 26 Nov 2026 01:16:53 GMT  
		Size: 6.7 MB (6692449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47c8f93029f7f9925f9aa274cc8309ba840bc76d5431cff0969871216ab5139b`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.4-alpine`

```console
$ docker pull telegraf@sha256:cf86d98a43dc341ef551f0ed9e7d0e77363ef8be1de2fb6de4fb4103fb415da1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:163962394c005d474173ac3743a117464024177d4be4778c0b99dd3cb6568f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100236490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d91f0915e75697cc4d972f947a7edae7c80bcd59b5c0b88983b4508ad671f1`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:17:52 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:17:53 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:59 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:59 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea71ecc28e2246479d51d85df260d06d5a7be86898a2f3b6314f859a4bee18fd`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7177a24e99dd7e633dca610f2e13db444c9a88bc6fc0721f495e65cbf98931`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 2.6 MB (2578267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253faddaaa5199e7e712ac3db162b7088b1ab47ef3872f7c02cf322cb9c73164`  
		Last Modified: Thu, 26 Nov 2026 01:18:18 GMT  
		Size: 93.8 MB (93804722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c913c9d8fbbd66982d2c218605c26728eec7c64f2f16747ad5e19bdb402e16d3`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:79b7699dc8a25309b0837452e36c5d4d66f564161abc318f6f1eac7498483ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c827ef29551d66ba75cf3644e473927ff50442149d01ac6856f73eb168566024`

```dockerfile
```

-	Layers:
	-	`sha256:52aae5db9f64b7c5d55b4f5d4be823060a9780fcffc62ac18024ffeabb19d299`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 1.2 MB (1152207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca1df27dccb6070b0c688b66251788996accb8f282366bc5413e37299af1a9f`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 15.8 KB (15787 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.4-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:5d9b524df2d3092ef4b6739d7a109ba86bf52d904f4ae1a744218d27260cd6e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90786558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb66234022102dd47910d6be2b14aa15b74008f9c2276a8d10cfd9732d496a6`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:17:01 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:17:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:09 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:09 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f667698a437cc48e67f6c6d6f3370356f4a050c967245c170640fecfe23c80d`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474b5674178f8b7688b4acdf6c148f76896b5bde78800e0c13f36aeefef75752`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 2.6 MB (2628532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16496fb1e3acd948f8e6eba94920c62f9af1cbc5f18c02be7bbbd7d74e216b5c`  
		Last Modified: Thu, 26 Nov 2026 01:17:26 GMT  
		Size: 84.0 MB (83966891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad9743b21ebbda7c27052d8e22f2686e83ffd59d943b181a4b5d50411cf4810`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:2712211b599a31299347db9e38e663e724072ed558bea16ab5a274d868e3e1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1163106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98183e5c7a246d9eea19a52832ebf3d9ca63433683f068b90b0c917725d7e59`

```dockerfile
```

-	Layers:
	-	`sha256:8639b611a0aa7af03f058bd9c7324131c5fdeaaacc133cd07ebaa18ae300b39c`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 1.1 MB (1147196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ba1752fe0a02b7ec6616a51f521558ff2f28fbc4c457e258667942d8c53c092`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.4-scratch`

```console
$ docker pull telegraf@sha256:997349df727e56fb66f569d5947191e1a1a3fa637d94eae589cdb3b0cd68c5df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.4-scratch` - linux; amd64

```console
$ docker pull telegraf@sha256:416ae3cbff02a98e1932f83c2f38fff76149668cd94c435f9a75f0b8d8dce27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91128567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1dbfc2fecd0fb214efbdfb8f73baa3c491e2ce8eef0189d65fc65e7c3048b4f`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Thu, 26 Nov 2026 01:32:42 GMT
COPY /rootfs/ / # buildkit
# Thu, 26 Nov 2026 01:32:42 GMT
ENV HOME=/home/telegraf
# Thu, 26 Nov 2026 01:32:42 GMT
USER 65532:65532
# Thu, 26 Nov 2026 01:32:42 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Thu, 26 Nov 2026 01:32:42 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:a14197fc6ee1f086c0066089ecfb3fafd76b44798a60568e7c1108f5b7dd8bd8`  
		Last Modified: Thu, 26 Nov 2026 01:33:02 GMT  
		Size: 91.1 MB (91128567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.4-scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:f07ce057a94fcf84ef313a2b58e901be5def0e302660ced3d88b3dcd5709e1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.3 KB (466264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0b86f75140bcf2b00af6e3fe55445c245701a8303ef6aaa2792577d92fe0b4`

```dockerfile
```

-	Layers:
	-	`sha256:bac4edae9733e3c34fea2d8b856922409aa53af54c8bd979cf4101c2d1a98192`  
		Last Modified: Thu, 26 Nov 2026 01:33:00 GMT  
		Size: 451.4 KB (451421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d291b1a803f1682b1ee17cf36e5cabfe0e8f5eac6352a4304382d2864a5c30f`  
		Last Modified: Thu, 26 Nov 2026 01:33:00 GMT  
		Size: 14.8 KB (14843 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.4-scratch` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f1d1874543a344bc0cfb6f0c4df26c8f63dfb8844867b563e59e485dd77f05c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81301223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a8d3e63288399a4dc160af4439caafc05d26a6e4214f077e1c5acf6e1622eb`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Thu, 26 Nov 2026 01:18:47 GMT
COPY /rootfs/ / # buildkit
# Thu, 26 Nov 2026 01:18:47 GMT
ENV HOME=/home/telegraf
# Thu, 26 Nov 2026 01:18:47 GMT
USER 65532:65532
# Thu, 26 Nov 2026 01:18:47 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Thu, 26 Nov 2026 01:18:47 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:fe3b6683687e8899d3038efd5fbec4d2db352294c89c27254ad53cb6dff536b5`  
		Last Modified: Thu, 26 Nov 2026 01:19:04 GMT  
		Size: 81.3 MB (81301223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.4-scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:ad2b328cee4955648b78dd86bfa5a9b12a2c0b328838e56e8e4dff76156344ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 KB (463196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287a9d36177370944fb75234b23aad1d45c6d7e6e8d3190bb038d6c38669f72`

```dockerfile
```

-	Layers:
	-	`sha256:cca888cdab24abd91b5284f2c1ef1e41924c5b4a5313215dc9eac9a699fd8854`  
		Last Modified: Thu, 26 Nov 2026 01:19:03 GMT  
		Size: 448.3 KB (448262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ded75948c39fbc42910961c548df14d6e47a0e40e4b7067215925bfa8dc96c3`  
		Last Modified: Thu, 26 Nov 2026 01:19:03 GMT  
		Size: 14.9 KB (14934 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:cf86d98a43dc341ef551f0ed9e7d0e77363ef8be1de2fb6de4fb4103fb415da1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:163962394c005d474173ac3743a117464024177d4be4778c0b99dd3cb6568f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100236490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d91f0915e75697cc4d972f947a7edae7c80bcd59b5c0b88983b4508ad671f1`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:17:52 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:17:53 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:59 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:59 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:59 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea71ecc28e2246479d51d85df260d06d5a7be86898a2f3b6314f859a4bee18fd`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7177a24e99dd7e633dca610f2e13db444c9a88bc6fc0721f495e65cbf98931`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 2.6 MB (2578267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253faddaaa5199e7e712ac3db162b7088b1ab47ef3872f7c02cf322cb9c73164`  
		Last Modified: Thu, 26 Nov 2026 01:18:18 GMT  
		Size: 93.8 MB (93804722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c913c9d8fbbd66982d2c218605c26728eec7c64f2f16747ad5e19bdb402e16d3`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:79b7699dc8a25309b0837452e36c5d4d66f564161abc318f6f1eac7498483ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c827ef29551d66ba75cf3644e473927ff50442149d01ac6856f73eb168566024`

```dockerfile
```

-	Layers:
	-	`sha256:52aae5db9f64b7c5d55b4f5d4be823060a9780fcffc62ac18024ffeabb19d299`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 1.2 MB (1152207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca1df27dccb6070b0c688b66251788996accb8f282366bc5413e37299af1a9f`  
		Last Modified: Thu, 26 Nov 2026 01:18:15 GMT  
		Size: 15.8 KB (15787 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:5d9b524df2d3092ef4b6739d7a109ba86bf52d904f4ae1a744218d27260cd6e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90786558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb66234022102dd47910d6be2b14aa15b74008f9c2276a8d10cfd9732d496a6`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:17:01 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:17:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:09 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:09 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:09 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f667698a437cc48e67f6c6d6f3370356f4a050c967245c170640fecfe23c80d`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474b5674178f8b7688b4acdf6c148f76896b5bde78800e0c13f36aeefef75752`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 2.6 MB (2628532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16496fb1e3acd948f8e6eba94920c62f9af1cbc5f18c02be7bbbd7d74e216b5c`  
		Last Modified: Thu, 26 Nov 2026 01:17:26 GMT  
		Size: 84.0 MB (83966891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad9743b21ebbda7c27052d8e22f2686e83ffd59d943b181a4b5d50411cf4810`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:2712211b599a31299347db9e38e663e724072ed558bea16ab5a274d868e3e1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1163106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98183e5c7a246d9eea19a52832ebf3d9ca63433683f068b90b0c917725d7e59`

```dockerfile
```

-	Layers:
	-	`sha256:8639b611a0aa7af03f058bd9c7324131c5fdeaaacc133cd07ebaa18ae300b39c`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 1.1 MB (1147196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ba1752fe0a02b7ec6616a51f521558ff2f28fbc4c457e258667942d8c53c092`  
		Last Modified: Thu, 26 Nov 2026 01:17:24 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:ed12bf60e0d634c48d403ed02ae8b67fb3f885cbd939c4d4ba7ea05c05a4741a
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
$ docker pull telegraf@sha256:deb468edbd62e73eff3953115d5896d4edaa80df12b0ca5637b0c776886ebac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182807319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecda0cc97c8037ce19b7de226e9553494ec4ba628f7c6c9f96ac8b7a5155ea6e`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:17:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:17:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:17:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:17:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:17:22 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:17:22 GMT
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
	-	`sha256:0e85b411edc6f7c73a4839c04234d328dce2f9bb437dd3c66008fc7d6c4d0e7e`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 19.3 MB (19290671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a608d8bb9411a5b136b16aaec0857471c009c41146f107a3ee7f8f20830c8870`  
		Last Modified: Thu, 26 Nov 2026 01:17:41 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cef56481de0690add5b18fc14e601c49a37d6a1d66971052fb798711ea36403`  
		Last Modified: Thu, 26 Nov 2026 01:17:44 GMT  
		Size: 91.1 MB (91111319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142f5187fbe50df7b24d4cd0606e38f91e6d772c591031c6bcfb2478fa815872`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:8cd85c95815cdcd7a62af0d62eeef59d6ee8482104e57dc6622d83c60c4847dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e737313120c13f467bfacc16f94a8b7fe50349aa54e0414181d87aca0e4b8b6c`

```dockerfile
```

-	Layers:
	-	`sha256:7a9d7c25aa49593c171609f6259e5765bf0aa9fa7951273a1863f72dfd5f8e8e`  
		Last Modified: Thu, 26 Nov 2026 01:17:42 GMT  
		Size: 6.7 MB (6691761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fd27ece096e90ad05cc0ce2116908b2f223649e205b9ce730e66aec5d9b2d2c`  
		Last Modified: Thu, 26 Nov 2026 01:17:41 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:58bd27270aa6e04f5a3a4e39a4bedcb9f90e135cd1875bcd5f039ccf9dbc001e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168658873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ac5837eca26e2a45d29969b05ff35bf8ebc8ca1d7aa67784c9aff2b24617c0`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:41 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:42 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:16:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:16:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:16:48 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:16:48 GMT
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
	-	`sha256:e7f6fe5571a5ce487d851c3d23dd6dcf3d5a6143f9093018e5476f59f5777aac`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 18.0 MB (17961281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a981299e2b9e48f3d8a5239f952bc1d0b6d6735ef2d6e278868eab3fae7d4b5`  
		Last Modified: Thu, 26 Nov 2026 01:17:05 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78b325565c13db87047177465053b6db0fed529c2e1a32727a9606741cf2c8c`  
		Last Modified: Thu, 26 Nov 2026 01:17:08 GMT  
		Size: 84.7 MB (84699233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e706d4ac5af8bb353fe7ba731b503810730195d95c90100fb51814e0d6a0377`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:217cda5c576efeb7f43deb74a7ae93f5c6dd3b99a71a6a3705b15fe4be084c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58edb0efaf43e96e7958cff155cf56d8ccaa1b34a1e8e103a03adb610fade22a`

```dockerfile
```

-	Layers:
	-	`sha256:7ed802181e61e9178b6d6f21228af620cf2fabd99d80f4921d57aa0cd751d782`  
		Last Modified: Thu, 26 Nov 2026 01:17:06 GMT  
		Size: 6.7 MB (6687171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3ea08824cff3ab60681643108cb12c3bd36f69ccf79c70acfb8f6d933388e35`  
		Last Modified: Thu, 26 Nov 2026 01:17:05 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4eb8338299171ed65ef10ecdf8302eff725ff944c60dc304113f65e49cee380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172344900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad080e7dc38a8758f9083dbae03624d6f4ffdad009d8ffb846261cf85a836d72`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:16:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
ENV TELEGRAF_VERSION=1.40.4
# Thu, 26 Nov 2026 01:16:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 26 Nov 2026 01:16:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:16:34 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Thu, 26 Nov 2026 01:16:34 GMT
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
	-	`sha256:0dba79b5d25f1db2e1537a95e88715aec93094ae4c3da5f69b1c270955834b7e`  
		Last Modified: Thu, 26 Nov 2026 01:16:53 GMT  
		Size: 19.2 MB (19194142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168074cf7691204b7c88216107978b876ac8db6c71e79fe56d3773848f540e86`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f0280c64319f141b81d2d67b4e38b9922246fdd7eafee9ab26a959fe7883d3`  
		Last Modified: Thu, 26 Nov 2026 01:16:54 GMT  
		Size: 81.3 MB (81292421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde538fb5a30684bdba30894f3a300a416b78578822a7ee8df86137aeb9f6f7f`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:52ce28074fa38d2be01af9c49c644710e4abbfe5057deac11363b0ff8de2bd99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6707341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f49756f5d7fd2bf54ce610adebfeee593a8944bb8cdc9aaa62a194876bbb157`

```dockerfile
```

-	Layers:
	-	`sha256:3528d003a73ec04473d88d7d96f044d6482ae99ba684147de4f04829aa5e930a`  
		Last Modified: Thu, 26 Nov 2026 01:16:53 GMT  
		Size: 6.7 MB (6692449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47c8f93029f7f9925f9aa274cc8309ba840bc76d5431cff0969871216ab5139b`  
		Last Modified: Thu, 26 Nov 2026 01:16:52 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:scratch`

```console
$ docker pull telegraf@sha256:997349df727e56fb66f569d5947191e1a1a3fa637d94eae589cdb3b0cd68c5df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:scratch` - linux; amd64

```console
$ docker pull telegraf@sha256:416ae3cbff02a98e1932f83c2f38fff76149668cd94c435f9a75f0b8d8dce27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91128567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1dbfc2fecd0fb214efbdfb8f73baa3c491e2ce8eef0189d65fc65e7c3048b4f`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Thu, 26 Nov 2026 01:32:42 GMT
COPY /rootfs/ / # buildkit
# Thu, 26 Nov 2026 01:32:42 GMT
ENV HOME=/home/telegraf
# Thu, 26 Nov 2026 01:32:42 GMT
USER 65532:65532
# Thu, 26 Nov 2026 01:32:42 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Thu, 26 Nov 2026 01:32:42 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:a14197fc6ee1f086c0066089ecfb3fafd76b44798a60568e7c1108f5b7dd8bd8`  
		Last Modified: Thu, 26 Nov 2026 01:33:02 GMT  
		Size: 91.1 MB (91128567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:f07ce057a94fcf84ef313a2b58e901be5def0e302660ced3d88b3dcd5709e1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.3 KB (466264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0b86f75140bcf2b00af6e3fe55445c245701a8303ef6aaa2792577d92fe0b4`

```dockerfile
```

-	Layers:
	-	`sha256:bac4edae9733e3c34fea2d8b856922409aa53af54c8bd979cf4101c2d1a98192`  
		Last Modified: Thu, 26 Nov 2026 01:33:00 GMT  
		Size: 451.4 KB (451421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d291b1a803f1682b1ee17cf36e5cabfe0e8f5eac6352a4304382d2864a5c30f`  
		Last Modified: Thu, 26 Nov 2026 01:33:00 GMT  
		Size: 14.8 KB (14843 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:scratch` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f1d1874543a344bc0cfb6f0c4df26c8f63dfb8844867b563e59e485dd77f05c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81301223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a8d3e63288399a4dc160af4439caafc05d26a6e4214f077e1c5acf6e1622eb`
-	Entrypoint: `["\/usr\/bin\/telegraf"]`
-	Default Command: `["--config","\/etc\/telegraf\/telegraf.conf","--config-directory","\/etc\/telegraf\/telegraf.d"]`

```dockerfile
# Thu, 26 Nov 2026 01:18:47 GMT
COPY /rootfs/ / # buildkit
# Thu, 26 Nov 2026 01:18:47 GMT
ENV HOME=/home/telegraf
# Thu, 26 Nov 2026 01:18:47 GMT
USER 65532:65532
# Thu, 26 Nov 2026 01:18:47 GMT
ENTRYPOINT ["/usr/bin/telegraf"]
# Thu, 26 Nov 2026 01:18:47 GMT
CMD ["--config" "/etc/telegraf/telegraf.conf" "--config-directory" "/etc/telegraf/telegraf.d"]
```

-	Layers:
	-	`sha256:fe3b6683687e8899d3038efd5fbec4d2db352294c89c27254ad53cb6dff536b5`  
		Last Modified: Thu, 26 Nov 2026 01:19:04 GMT  
		Size: 81.3 MB (81301223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:scratch` - unknown; unknown

```console
$ docker pull telegraf@sha256:ad2b328cee4955648b78dd86bfa5a9b12a2c0b328838e56e8e4dff76156344ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 KB (463196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287a9d36177370944fb75234b23aad1d45c6d7e6e8d3190bb038d6c38669f72`

```dockerfile
```

-	Layers:
	-	`sha256:cca888cdab24abd91b5284f2c1ef1e41924c5b4a5313215dc9eac9a699fd8854`  
		Last Modified: Thu, 26 Nov 2026 01:19:03 GMT  
		Size: 448.3 KB (448262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ded75948c39fbc42910961c548df14d6e47a0e40e4b7067215925bfa8dc96c3`  
		Last Modified: Thu, 26 Nov 2026 01:19:03 GMT  
		Size: 14.9 KB (14934 bytes)  
		MIME: application/vnd.in-toto+json
