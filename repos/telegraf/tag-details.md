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

### `telegraf:1.40` - linux; amd64

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

### `telegraf:1.40` - unknown; unknown

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

### `telegraf:1.40` - linux; arm variant v7

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

### `telegraf:1.40` - unknown; unknown

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

### `telegraf:1.40` - linux; arm64 variant v8

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

### `telegraf:1.40` - unknown; unknown

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

### `telegraf:1.40.3` - linux; amd64

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

### `telegraf:1.40.3` - unknown; unknown

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

### `telegraf:1.40.3` - linux; arm variant v7

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

### `telegraf:1.40.3` - unknown; unknown

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

### `telegraf:1.40.3` - linux; arm64 variant v8

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

### `telegraf:1.40.3` - unknown; unknown

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
