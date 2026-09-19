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
-	[`telegraf:1.40.0`](#telegraf1400)
-	[`telegraf:1.40.0-alpine`](#telegraf1400-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.38`

```console
$ docker pull telegraf@sha256:6a1ed0a5898a27b1e91346fd86bf8c0435e2231c61a28aca9ca33fe14f88476b
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
$ docker pull telegraf@sha256:e8a1e19274b54cb23c682c3decf8b51ba72cfa4f485f1b601d71345eeffdbb34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175020758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9da4e19563a0131836e6d62b982989cc2551945035ed3ddf38a1bd30eb77fe8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:38:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:38:45 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:38:49 GMT
ENV TELEGRAF_VERSION=1.38.4
# Sat, 19 Sep 2026 01:38:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:38:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:38:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:38:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:38:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a49192814d05aab08a12130ba460d1318e7bb66785cfe0948af5dd34314bfb`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 18.9 MB (18944516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0fd6910063e997c5e67073b288c9d0c488e1ebfe4f515dfd35366e08065df8`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c9867a5962d2bea1c8fdc78e05b951251f8f5d5688b53b822e61f38d02b1f6`  
		Last Modified: Sat, 19 Sep 2026 01:39:11 GMT  
		Size: 83.5 MB (83511027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c680ac499064e8643b52e2ecd526dd7ad61c3d3156b131b37138bbd57e9cb1`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:68eea67c1ab2fb040b6ea66b031bb84060aac1b5ae9da1d102d69020281aa301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6693226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb06da1e2d6ca01f92c59b199fcc55eb653fb064b241bee3c3907b854bb01d6b`

```dockerfile
```

-	Layers:
	-	`sha256:adc21f1e3b6c566af56cbaef7548b0bd73af2bb58be41143995241cf1a64341b`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 6.7 MB (6678799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:277afc3c4e465df6ffee88add9fa00fc0be5043ecf881cbdee4d882c04978d4c`  
		Last Modified: Sat, 19 Sep 2026 01:39:08 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:f94aa946ccb8a972dfde0b6bbb31ffbd8f803475276ab1011e039d6e5217a550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161294572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71efd8fe175005b489788ccf77df3fbcd5f11e271efec063c698a246755cd6e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 02:41:15 GMT
ENV TELEGRAF_VERSION=1.38.4
# Sat, 19 Sep 2026 02:41:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 02:41:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 02:41:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:41:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:41:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ec8652898cd143db79a343cf5195d7a7068a0cb6326c8cd429c4e95fd3822e`  
		Last Modified: Sat, 19 Sep 2026 02:41:33 GMT  
		Size: 17.7 MB (17699714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822dd1a02082db3346dff8a12530823f325fb1ae09a4dd169c1a5b9cd3a071c6`  
		Last Modified: Sat, 19 Sep 2026 02:41:32 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4967bd101b02e6f16111d998dd849ce7b6ae0141ab63c3f287f8faac1302a9`  
		Last Modified: Sat, 19 Sep 2026 02:41:34 GMT  
		Size: 77.4 MB (77427899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9bfdca356327e228b57a244f7ffea59da9b898b16ffb62bc0619900abec3620`  
		Last Modified: Sat, 19 Sep 2026 02:41:32 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:3aa1182ab8561ed1427278f011b90b54decb086aba454317d58124b4d83bc98e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6687913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a967b327b9b7773cab77be614cdacb704ea2d08b0e1815f5874dee37f4c332e6`

```dockerfile
```

-	Layers:
	-	`sha256:273408c4f93b685286871a18a3a3495de101b768ff0a96b5739980602b81cf7a`  
		Last Modified: Sat, 19 Sep 2026 02:41:33 GMT  
		Size: 6.7 MB (6673396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:985e3970b26a521840ae11e78419ed98cd837a3533831b0d9bda134892645fe0`  
		Last Modified: Sat, 19 Sep 2026 02:41:32 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:7ad4f05b4e6b9f79feb01c17d06ce18b7e345fb2a08786f7ccce4ff0318b34f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165386132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fbd5322337ccdb226af6450a1a9dee2f6ba5cc9b157db37a47060869645247`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:45:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:45:49 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:45:53 GMT
ENV TELEGRAF_VERSION=1.38.4
# Sat, 19 Sep 2026 01:45:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:45:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:45:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:45:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:45:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8c70d9fb0c120a7c4c2e0283b0ebe15418bff49150d4c322fedd6c64cae61`  
		Last Modified: Sat, 19 Sep 2026 01:46:12 GMT  
		Size: 18.9 MB (18886001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6cb6b7092029332e6703086a5d125b3f55cec0ec3891020945d87935835abd`  
		Last Modified: Sat, 19 Sep 2026 01:46:11 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bb783487932ed1cb20adb07b78227b279ec9d9e6b3871a02a06ad64a68719b`  
		Last Modified: Sat, 19 Sep 2026 01:46:13 GMT  
		Size: 74.5 MB (74476788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37faf0d53e2adf8a3e21870cf2699999b91601017effbb32ccf3f920f379261d`  
		Last Modified: Sat, 19 Sep 2026 01:46:11 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38` - unknown; unknown

```console
$ docker pull telegraf@sha256:cf24cbef3f3e6e46f278b298a944da0857f4f8b6278b9179ca099e71ff260659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bec858350071773c1ab4f09a954acb09ec93427cedf5d2fc3bd64fb5a3e768b`

```dockerfile
```

-	Layers:
	-	`sha256:68a5fc0ffd82499d4f477e13e95774e2fe725f48e9e9647973855eddb8469967`  
		Last Modified: Sat, 19 Sep 2026 01:46:11 GMT  
		Size: 6.7 MB (6679475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb961031721626e00a007db4399a2514935b4dfd31c0be40b098c734dfea8f93`  
		Last Modified: Sat, 19 Sep 2026 01:46:11 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38-alpine`

```console
$ docker pull telegraf@sha256:0c49f0d4523b488b3eeb1f41f35e98b2a26017d8a5ea9e9dc2a5684c2819e9da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:02047de9d4c354c91cba7748978f2ed36ef00fb959e29c77e13417c37dbfc02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c079819d2b13d0f3a6a69cb5a8f817fece16d84b323738b3efd7f552487e6f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:06 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 17 Sep 2026 21:58:12 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37062f3d7f4494d0f1fb4c84fd15083e0653e8665f30a0717655ab4dba860ba9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503078cc287f740e8e108c22804d142ecfdd1fe44ce92f419ca543812d8b9a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 2.6 MB (2575216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f058f951d704e806e710a831f0d324fb923c8f199463c883aa8eee1fe0959099`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 86.2 MB (86209033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b31287f8530496c7fa0988a35e8bc3b0a5f990b1744549a81c00b494a2b80c8`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:463b34443d943b9304051a25cc047b740abe96528028c6ebffbc11fd1ccc6335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1158973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ad80c9f84b87adbc880826d98e6e82d8893620e14f6873a7be9145d83d92cf`

```dockerfile
```

-	Layers:
	-	`sha256:cb669b233389d979b3f54200f5ee6c329f2faa134d6d8a5f5c6028adf3ac33ca`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 1.1 MB (1143524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27164b8edcff966282b8929e220dbd553e1050772093dba4e49a37db502ebd42`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4383971539dd172a076faa2e3b807653b9f456e790dc9eeada055f58f3bf108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83975970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016aba70052b9c7320f93d75619b311c8883df6e989baffe406786bcce224b6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 17 Sep 2026 22:16:15 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb5d6680e146417887650d67af43b5203667227ce40ab4168d949835ea5bfe6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679b3990ac25e94994c746a5bb75845d66e26a0c433ea6856c8cf043c791d0f6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 2.6 MB (2621794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eea738a53d379261f2ce1e0d2678c9982c1615a584fff4040d4282f2ce2be79`  
		Last Modified: Thu, 17 Sep 2026 22:16:31 GMT  
		Size: 77.2 MB (77167205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f941911e1c54b6138a2dc7e35c62ec8f84af42eb15f0b825da74f24ab84865`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:350754f44be034b24b49b5eaaf5da0b94814db82cdf3e67f9db769425f5dd0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1154060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ea681a96928f08d425954d27e2af0d4a9e8a7e59863201e529fbb7aea709fb`

```dockerfile
```

-	Layers:
	-	`sha256:a96b0d65902b2a4e66cd58f579da4213e3ed44dfcffd825b7c4cc3349ce5e9be`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 1.1 MB (1138501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d33abab6a9fcbfd6fb47953b40c9ae2e0ec150d780d71553b95e2990e6017748`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4`

```console
$ docker pull telegraf@sha256:6a1ed0a5898a27b1e91346fd86bf8c0435e2231c61a28aca9ca33fe14f88476b
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
$ docker pull telegraf@sha256:e8a1e19274b54cb23c682c3decf8b51ba72cfa4f485f1b601d71345eeffdbb34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175020758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9da4e19563a0131836e6d62b982989cc2551945035ed3ddf38a1bd30eb77fe8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:38:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:38:45 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:38:49 GMT
ENV TELEGRAF_VERSION=1.38.4
# Sat, 19 Sep 2026 01:38:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:38:49 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:38:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:38:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:38:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a49192814d05aab08a12130ba460d1318e7bb66785cfe0948af5dd34314bfb`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 18.9 MB (18944516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0fd6910063e997c5e67073b288c9d0c488e1ebfe4f515dfd35366e08065df8`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c9867a5962d2bea1c8fdc78e05b951251f8f5d5688b53b822e61f38d02b1f6`  
		Last Modified: Sat, 19 Sep 2026 01:39:11 GMT  
		Size: 83.5 MB (83511027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c680ac499064e8643b52e2ecd526dd7ad61c3d3156b131b37138bbd57e9cb1`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:68eea67c1ab2fb040b6ea66b031bb84060aac1b5ae9da1d102d69020281aa301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6693226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb06da1e2d6ca01f92c59b199fcc55eb653fb064b241bee3c3907b854bb01d6b`

```dockerfile
```

-	Layers:
	-	`sha256:adc21f1e3b6c566af56cbaef7548b0bd73af2bb58be41143995241cf1a64341b`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 6.7 MB (6678799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:277afc3c4e465df6ffee88add9fa00fc0be5043ecf881cbdee4d882c04978d4c`  
		Last Modified: Sat, 19 Sep 2026 01:39:08 GMT  
		Size: 14.4 KB (14427 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:f94aa946ccb8a972dfde0b6bbb31ffbd8f803475276ab1011e039d6e5217a550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161294572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71efd8fe175005b489788ccf77df3fbcd5f11e271efec063c698a246755cd6e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 02:41:15 GMT
ENV TELEGRAF_VERSION=1.38.4
# Sat, 19 Sep 2026 02:41:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 02:41:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 02:41:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:41:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:41:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ec8652898cd143db79a343cf5195d7a7068a0cb6326c8cd429c4e95fd3822e`  
		Last Modified: Sat, 19 Sep 2026 02:41:33 GMT  
		Size: 17.7 MB (17699714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822dd1a02082db3346dff8a12530823f325fb1ae09a4dd169c1a5b9cd3a071c6`  
		Last Modified: Sat, 19 Sep 2026 02:41:32 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4967bd101b02e6f16111d998dd849ce7b6ae0141ab63c3f287f8faac1302a9`  
		Last Modified: Sat, 19 Sep 2026 02:41:34 GMT  
		Size: 77.4 MB (77427899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9bfdca356327e228b57a244f7ffea59da9b898b16ffb62bc0619900abec3620`  
		Last Modified: Sat, 19 Sep 2026 02:41:32 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:3aa1182ab8561ed1427278f011b90b54decb086aba454317d58124b4d83bc98e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6687913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a967b327b9b7773cab77be614cdacb704ea2d08b0e1815f5874dee37f4c332e6`

```dockerfile
```

-	Layers:
	-	`sha256:273408c4f93b685286871a18a3a3495de101b768ff0a96b5739980602b81cf7a`  
		Last Modified: Sat, 19 Sep 2026 02:41:33 GMT  
		Size: 6.7 MB (6673396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:985e3970b26a521840ae11e78419ed98cd837a3533831b0d9bda134892645fe0`  
		Last Modified: Sat, 19 Sep 2026 02:41:32 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:7ad4f05b4e6b9f79feb01c17d06ce18b7e345fb2a08786f7ccce4ff0318b34f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165386132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fbd5322337ccdb226af6450a1a9dee2f6ba5cc9b157db37a47060869645247`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:45:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:45:49 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:45:53 GMT
ENV TELEGRAF_VERSION=1.38.4
# Sat, 19 Sep 2026 01:45:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:45:53 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:45:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:45:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:45:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8c70d9fb0c120a7c4c2e0283b0ebe15418bff49150d4c322fedd6c64cae61`  
		Last Modified: Sat, 19 Sep 2026 01:46:12 GMT  
		Size: 18.9 MB (18886001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6cb6b7092029332e6703086a5d125b3f55cec0ec3891020945d87935835abd`  
		Last Modified: Sat, 19 Sep 2026 01:46:11 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bb783487932ed1cb20adb07b78227b279ec9d9e6b3871a02a06ad64a68719b`  
		Last Modified: Sat, 19 Sep 2026 01:46:13 GMT  
		Size: 74.5 MB (74476788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37faf0d53e2adf8a3e21870cf2699999b91601017effbb32ccf3f920f379261d`  
		Last Modified: Sat, 19 Sep 2026 01:46:11 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4` - unknown; unknown

```console
$ docker pull telegraf@sha256:cf24cbef3f3e6e46f278b298a944da0857f4f8b6278b9179ca099e71ff260659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bec858350071773c1ab4f09a954acb09ec93427cedf5d2fc3bd64fb5a3e768b`

```dockerfile
```

-	Layers:
	-	`sha256:68a5fc0ffd82499d4f477e13e95774e2fe725f48e9e9647973855eddb8469967`  
		Last Modified: Sat, 19 Sep 2026 01:46:11 GMT  
		Size: 6.7 MB (6679475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb961031721626e00a007db4399a2514935b4dfd31c0be40b098c734dfea8f93`  
		Last Modified: Sat, 19 Sep 2026 01:46:11 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.38.4-alpine`

```console
$ docker pull telegraf@sha256:0c49f0d4523b488b3eeb1f41f35e98b2a26017d8a5ea9e9dc2a5684c2819e9da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.38.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:02047de9d4c354c91cba7748978f2ed36ef00fb959e29c77e13417c37dbfc02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92633670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c079819d2b13d0f3a6a69cb5a8f817fece16d84b323738b3efd7f552487e6f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:06 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 17 Sep 2026 21:58:12 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37062f3d7f4494d0f1fb4c84fd15083e0653e8665f30a0717655ab4dba860ba9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503078cc287f740e8e108c22804d142ecfdd1fe44ce92f419ca543812d8b9a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 2.6 MB (2575216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f058f951d704e806e710a831f0d324fb923c8f199463c883aa8eee1fe0959099`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 86.2 MB (86209033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b31287f8530496c7fa0988a35e8bc3b0a5f990b1744549a81c00b494a2b80c8`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:463b34443d943b9304051a25cc047b740abe96528028c6ebffbc11fd1ccc6335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1158973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ad80c9f84b87adbc880826d98e6e82d8893620e14f6873a7be9145d83d92cf`

```dockerfile
```

-	Layers:
	-	`sha256:cb669b233389d979b3f54200f5ee6c329f2faa134d6d8a5f5c6028adf3ac33ca`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 1.1 MB (1143524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27164b8edcff966282b8929e220dbd553e1050772093dba4e49a37db502ebd42`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.38.4-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d4383971539dd172a076faa2e3b807653b9f456e790dc9eeada055f58f3bf108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83975970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016aba70052b9c7320f93d75619b311c8883df6e989baffe406786bcce224b6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
ENV TELEGRAF_VERSION=1.38.4
# Thu, 17 Sep 2026 22:16:15 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb5d6680e146417887650d67af43b5203667227ce40ab4168d949835ea5bfe6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679b3990ac25e94994c746a5bb75845d66e26a0c433ea6856c8cf043c791d0f6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 2.6 MB (2621794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eea738a53d379261f2ce1e0d2678c9982c1615a584fff4040d4282f2ce2be79`  
		Last Modified: Thu, 17 Sep 2026 22:16:31 GMT  
		Size: 77.2 MB (77167205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f941911e1c54b6138a2dc7e35c62ec8f84af42eb15f0b825da74f24ab84865`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.38.4-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:350754f44be034b24b49b5eaaf5da0b94814db82cdf3e67f9db769425f5dd0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1154060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ea681a96928f08d425954d27e2af0d4a9e8a7e59863201e529fbb7aea709fb`

```dockerfile
```

-	Layers:
	-	`sha256:a96b0d65902b2a4e66cd58f579da4213e3ed44dfcffd825b7c4cc3349ce5e9be`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 1.1 MB (1138501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d33abab6a9fcbfd6fb47953b40c9ae2e0ec150d780d71553b95e2990e6017748`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 15.6 KB (15559 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39`

```console
$ docker pull telegraf@sha256:66f1e8afc5ffef1dc415e7b67490a4a1659a9990958e0d78d916f6f2e5880a24
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
$ docker pull telegraf@sha256:b4975c18a34613c00ce7eca38fccdb4b8e43c3f38e88d9da0b52792c8b5e043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177765031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb04ee2b1cbb206b5e079e935fff59becab6911165affd59c824101a5e5b0b19`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:38:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:38:46 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:38:50 GMT
ENV TELEGRAF_VERSION=1.39.3
# Sat, 19 Sep 2026 01:38:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:38:50 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:38:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:38:50 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:38:50 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339e51ee672c54a56ae0cbabf62e7c16a16255d204469033285f81413839ed6c`  
		Last Modified: Sat, 19 Sep 2026 01:39:12 GMT  
		Size: 19.3 MB (19284597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fb7af0cbddb5fc7eddaabbec9fc4cacc76f46c6405a0614aa77caee1de606f`  
		Last Modified: Sat, 19 Sep 2026 01:39:10 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f442c0304ad1cacf02d231ead7c9eca2930f3f74b0f31b206af032d9dc8ac7`  
		Last Modified: Sat, 19 Sep 2026 01:39:13 GMT  
		Size: 85.9 MB (85915204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c680ac499064e8643b52e2ecd526dd7ad61c3d3156b131b37138bbd57e9cb1`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:b5168a913af295ab20a2cc0b3cdcfe0ee7b6e587fa10894e39a73fde890ddd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6703150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69bea60f49d57bb035593d2617febdd5cc8466abb33e75cac4a4d279cbbf1700`

```dockerfile
```

-	Layers:
	-	`sha256:ad6cfd6aa0269e7f88dc49334111119c3db70689de6700fe9f4e2b33d725509e`  
		Last Modified: Sat, 19 Sep 2026 01:39:11 GMT  
		Size: 6.7 MB (6688682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:439b2d5dc3c5d8119bc01492dfd883753a6d65a55034aa269b05c00cb62ea5b2`  
		Last Modified: Sat, 19 Sep 2026 01:39:10 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:0f32eb12141702be28a4b7a06aa151fe6f9a513f806b0c13a427f0de215b9629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163979689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf77d8c2e0ad2178d02881a2f7cd0bb03276f7991a7d9d9b42bcdc9732222c5`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 02:41:25 GMT
ENV TELEGRAF_VERSION=1.39.3
# Sat, 19 Sep 2026 02:41:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 02:41:25 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 02:41:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:41:25 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 02:41:25 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aead5a7873c6e5a6a7fe4c25d1faa0f3a6ecefa6c18cf73702269da890541029`  
		Last Modified: Sat, 19 Sep 2026 02:41:43 GMT  
		Size: 17.9 MB (17949911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00038caac1ebe588a9b88a75663afce83ba31764a3e7e30f6efb514433e286d1`  
		Last Modified: Sat, 19 Sep 2026 02:41:42 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d782c874261620b89b09700fa282b2f3cd86332465b840788e00fca1e9da95c2`  
		Last Modified: Sat, 19 Sep 2026 02:41:45 GMT  
		Size: 79.9 MB (79862800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbe1689dbf295f05d049224dbe0a7075422656e651487987899792d81e59a1c`  
		Last Modified: Sat, 19 Sep 2026 02:41:43 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:23eb0190311c88ab7e340c5f5a83969a3b87b1f67988c92f8477f00c47bb0038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a305ddf68eced948ca3cbe25668ccf6dbdd6edd575bb14cbe4ffedcb6891121`

```dockerfile
```

-	Layers:
	-	`sha256:14fdecd830b277ac608d4d11d751da8c0576d268f54dcdc4aabc2f8eb7d95de9`  
		Last Modified: Sat, 19 Sep 2026 02:41:43 GMT  
		Size: 6.7 MB (6684084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fb38e4d561dceefec57ae01dda00f31574337531c8602beb7fb81d431a94639`  
		Last Modified: Sat, 19 Sep 2026 02:41:42 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:cd798d23f81f7711b4cea68842be6f9d3ffd1a089c35a4dc118291b56f335d57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167971880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0cad6c0f45912948034fdbcb1ccdca9328491157ccc21808a8505813cc3fc4c`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:45:53 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:45:54 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:45:58 GMT
ENV TELEGRAF_VERSION=1.39.3
# Sat, 19 Sep 2026 01:45:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:45:58 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:45:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:45:58 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:45:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1021319155c80c1f078818f6ae30cbef9dcf915fadbe0cac02c988c0650bfe9`  
		Last Modified: Sat, 19 Sep 2026 01:46:19 GMT  
		Size: 19.2 MB (19194877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fba879834480b337ca42c54f1ea8e1b14f60ad045cd5c2893fb31aff181d6d`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cedefe1d63f3bedb5ea9934e7616b8a63d3b9b0edbc1e9158899b4c0f32e201`  
		Last Modified: Sat, 19 Sep 2026 01:46:21 GMT  
		Size: 76.8 MB (76753674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6747ab5f2eb65e7cc776477158855e700403dae99dfbbe3691c2847041c5f405`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39` - unknown; unknown

```console
$ docker pull telegraf@sha256:53c85760877e917f9f61ea97a1b072076a9d8923324f0332e76005aa90a4183c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6703936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5953683ffd70de292c9ae0f463d020b18e6c06fcc91de23a5d1c1e5f32364264`

```dockerfile
```

-	Layers:
	-	`sha256:a89047ccca4c4794f031f112dc3682b0936cce5991b313560e57cbf0c626ef90`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 6.7 MB (6689358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3140ac7dbf3522ba30dd264730a6dae2329ea4dae68928876ceab07d45784e5`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 14.6 KB (14578 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39-alpine`

```console
$ docker pull telegraf@sha256:f11f13d46f6a778ae1fc733b059fc1a3e63a4e7b471f66df125090564e92fb60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:fb699cc64d65165d123ba154586d2830eeb51584be9779ca6833e92a65527be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c7f20890af10fcc126bb9abe9f080a5128f31a4717eb1a13c290a0222d0c87`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 17 Sep 2026 21:58:16 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d472d16438d99f15408700eeaef23e1f795649e518e79dfe676676923f0d0aa`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9bed35a66fa4fa87118c41f37f6328994bb9f6008fa11ebaeb140bedf76a11`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 2.6 MB (2581362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba386ff1343c61d2710ade335242b642e9cf6eea0e27ac71588acb1d43022ca5`  
		Last Modified: Thu, 17 Sep 2026 21:58:32 GMT  
		Size: 88.6 MB (88605368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59347b4e7efd3f78e865c5b4fed4766fb83625b4bbcec35e6a92f9354b167ea3`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:3c31a06866df835636171081c45c85d48247fbb21cde64355a593991990b19da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93741ab06395437a6083a07a01d8e7bba11700be99ed7e3b4408a8c538b57efb`

```dockerfile
```

-	Layers:
	-	`sha256:ed5b7a799481ec6eafeb6039e44cc32184df74963fc2a0587118c5a97856b92f`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 1.1 MB (1149048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d45bb771e083a3224dcdeacedc3193c00560c47ce136d3054ce6057937af18`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8c20042f0506449f05d829c27a4c977034c6099f2a5d60bce39efd9f1f7f41b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86257775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea31c2429c959cbaa8dd81a393d7484d519daa9441e33551f35227359d3d8d3e`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:37 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 17 Sep 2026 22:16:44 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf758dfc87f7eb3c41a2b9f20f89c957f7bde5c4a247d25b241a6171697543b`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7029b3a99c4c124292618966f7855976645b3fcfb410641cb68b9359dde64698`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 2.6 MB (2633285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4917cd7c778879499932421191785a40cedf780fe923385a5cd960e0051ed6a3`  
		Last Modified: Thu, 17 Sep 2026 22:17:00 GMT  
		Size: 79.4 MB (79437519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5a4f0323af06191941f3690de85a84b4870c842482733abe8bf4a3955d2b31`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:bcbd94e74cbc656d40724f07cb5b84a8d680006fde563a804055f9025a61dfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1159621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c7798c48155e3da76990b10889ac73f85f44637a2eaaba6700fa20d840379d`

```dockerfile
```

-	Layers:
	-	`sha256:e0ce145e2f7eaaaebdc61e57c74f48bfbf542d66dae582c3407ac4fa3aca97ee`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 1.1 MB (1144025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffdb57330391c0d5382894e216c0d21e4a963f5b2ce213581a48f9874e6c82f2`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3`

```console
$ docker pull telegraf@sha256:66f1e8afc5ffef1dc415e7b67490a4a1659a9990958e0d78d916f6f2e5880a24
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
$ docker pull telegraf@sha256:b4975c18a34613c00ce7eca38fccdb4b8e43c3f38e88d9da0b52792c8b5e043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177765031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb04ee2b1cbb206b5e079e935fff59becab6911165affd59c824101a5e5b0b19`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:38:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:38:46 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:38:50 GMT
ENV TELEGRAF_VERSION=1.39.3
# Sat, 19 Sep 2026 01:38:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:38:50 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:38:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:38:50 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:38:50 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339e51ee672c54a56ae0cbabf62e7c16a16255d204469033285f81413839ed6c`  
		Last Modified: Sat, 19 Sep 2026 01:39:12 GMT  
		Size: 19.3 MB (19284597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fb7af0cbddb5fc7eddaabbec9fc4cacc76f46c6405a0614aa77caee1de606f`  
		Last Modified: Sat, 19 Sep 2026 01:39:10 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f442c0304ad1cacf02d231ead7c9eca2930f3f74b0f31b206af032d9dc8ac7`  
		Last Modified: Sat, 19 Sep 2026 01:39:13 GMT  
		Size: 85.9 MB (85915204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c680ac499064e8643b52e2ecd526dd7ad61c3d3156b131b37138bbd57e9cb1`  
		Last Modified: Sat, 19 Sep 2026 01:39:09 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:b5168a913af295ab20a2cc0b3cdcfe0ee7b6e587fa10894e39a73fde890ddd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6703150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69bea60f49d57bb035593d2617febdd5cc8466abb33e75cac4a4d279cbbf1700`

```dockerfile
```

-	Layers:
	-	`sha256:ad6cfd6aa0269e7f88dc49334111119c3db70689de6700fe9f4e2b33d725509e`  
		Last Modified: Sat, 19 Sep 2026 01:39:11 GMT  
		Size: 6.7 MB (6688682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:439b2d5dc3c5d8119bc01492dfd883753a6d65a55034aa269b05c00cb62ea5b2`  
		Last Modified: Sat, 19 Sep 2026 01:39:10 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:0f32eb12141702be28a4b7a06aa151fe6f9a513f806b0c13a427f0de215b9629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163979689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf77d8c2e0ad2178d02881a2f7cd0bb03276f7991a7d9d9b42bcdc9732222c5`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 02:41:25 GMT
ENV TELEGRAF_VERSION=1.39.3
# Sat, 19 Sep 2026 02:41:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 02:41:25 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 02:41:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:41:25 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 02:41:25 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aead5a7873c6e5a6a7fe4c25d1faa0f3a6ecefa6c18cf73702269da890541029`  
		Last Modified: Sat, 19 Sep 2026 02:41:43 GMT  
		Size: 17.9 MB (17949911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00038caac1ebe588a9b88a75663afce83ba31764a3e7e30f6efb514433e286d1`  
		Last Modified: Sat, 19 Sep 2026 02:41:42 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d782c874261620b89b09700fa282b2f3cd86332465b840788e00fca1e9da95c2`  
		Last Modified: Sat, 19 Sep 2026 02:41:45 GMT  
		Size: 79.9 MB (79862800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbe1689dbf295f05d049224dbe0a7075422656e651487987899792d81e59a1c`  
		Last Modified: Sat, 19 Sep 2026 02:41:43 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:23eb0190311c88ab7e340c5f5a83969a3b87b1f67988c92f8477f00c47bb0038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a305ddf68eced948ca3cbe25668ccf6dbdd6edd575bb14cbe4ffedcb6891121`

```dockerfile
```

-	Layers:
	-	`sha256:14fdecd830b277ac608d4d11d751da8c0576d268f54dcdc4aabc2f8eb7d95de9`  
		Last Modified: Sat, 19 Sep 2026 02:41:43 GMT  
		Size: 6.7 MB (6684084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fb38e4d561dceefec57ae01dda00f31574337531c8602beb7fb81d431a94639`  
		Last Modified: Sat, 19 Sep 2026 02:41:42 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:cd798d23f81f7711b4cea68842be6f9d3ffd1a089c35a4dc118291b56f335d57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167971880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0cad6c0f45912948034fdbcb1ccdca9328491157ccc21808a8505813cc3fc4c`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:45:53 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:45:54 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:45:58 GMT
ENV TELEGRAF_VERSION=1.39.3
# Sat, 19 Sep 2026 01:45:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:45:58 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:45:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:45:58 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:45:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1021319155c80c1f078818f6ae30cbef9dcf915fadbe0cac02c988c0650bfe9`  
		Last Modified: Sat, 19 Sep 2026 01:46:19 GMT  
		Size: 19.2 MB (19194877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fba879834480b337ca42c54f1ea8e1b14f60ad045cd5c2893fb31aff181d6d`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cedefe1d63f3bedb5ea9934e7616b8a63d3b9b0edbc1e9158899b4c0f32e201`  
		Last Modified: Sat, 19 Sep 2026 01:46:21 GMT  
		Size: 76.8 MB (76753674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6747ab5f2eb65e7cc776477158855e700403dae99dfbbe3691c2847041c5f405`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3` - unknown; unknown

```console
$ docker pull telegraf@sha256:53c85760877e917f9f61ea97a1b072076a9d8923324f0332e76005aa90a4183c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6703936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5953683ffd70de292c9ae0f463d020b18e6c06fcc91de23a5d1c1e5f32364264`

```dockerfile
```

-	Layers:
	-	`sha256:a89047ccca4c4794f031f112dc3682b0936cce5991b313560e57cbf0c626ef90`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 6.7 MB (6689358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3140ac7dbf3522ba30dd264730a6dae2329ea4dae68928876ceab07d45784e5`  
		Last Modified: Sat, 19 Sep 2026 01:46:18 GMT  
		Size: 14.6 KB (14578 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.39.3-alpine`

```console
$ docker pull telegraf@sha256:f11f13d46f6a778ae1fc733b059fc1a3e63a4e7b471f66df125090564e92fb60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.39.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:fb699cc64d65165d123ba154586d2830eeb51584be9779ca6833e92a65527be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95036152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c7f20890af10fcc126bb9abe9f080a5128f31a4717eb1a13c290a0222d0c87`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 17 Sep 2026 21:58:16 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d472d16438d99f15408700eeaef23e1f795649e518e79dfe676676923f0d0aa`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9bed35a66fa4fa87118c41f37f6328994bb9f6008fa11ebaeb140bedf76a11`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 2.6 MB (2581362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba386ff1343c61d2710ade335242b642e9cf6eea0e27ac71588acb1d43022ca5`  
		Last Modified: Thu, 17 Sep 2026 21:58:32 GMT  
		Size: 88.6 MB (88605368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59347b4e7efd3f78e865c5b4fed4766fb83625b4bbcec35e6a92f9354b167ea3`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:3c31a06866df835636171081c45c85d48247fbb21cde64355a593991990b19da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93741ab06395437a6083a07a01d8e7bba11700be99ed7e3b4408a8c538b57efb`

```dockerfile
```

-	Layers:
	-	`sha256:ed5b7a799481ec6eafeb6039e44cc32184df74963fc2a0587118c5a97856b92f`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 1.1 MB (1149048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d45bb771e083a3224dcdeacedc3193c00560c47ce136d3054ce6057937af18`  
		Last Modified: Thu, 17 Sep 2026 21:58:30 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.39.3-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:8c20042f0506449f05d829c27a4c977034c6099f2a5d60bce39efd9f1f7f41b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86257775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea31c2429c959cbaa8dd81a393d7484d519daa9441e33551f35227359d3d8d3e`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:37 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENV TELEGRAF_VERSION=1.39.3
# Thu, 17 Sep 2026 22:16:44 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf758dfc87f7eb3c41a2b9f20f89c957f7bde5c4a247d25b241a6171697543b`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7029b3a99c4c124292618966f7855976645b3fcfb410641cb68b9359dde64698`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 2.6 MB (2633285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4917cd7c778879499932421191785a40cedf780fe923385a5cd960e0051ed6a3`  
		Last Modified: Thu, 17 Sep 2026 22:17:00 GMT  
		Size: 79.4 MB (79437519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5a4f0323af06191941f3690de85a84b4870c842482733abe8bf4a3955d2b31`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.39.3-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:bcbd94e74cbc656d40724f07cb5b84a8d680006fde563a804055f9025a61dfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1159621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c7798c48155e3da76990b10889ac73f85f44637a2eaaba6700fa20d840379d`

```dockerfile
```

-	Layers:
	-	`sha256:e0ce145e2f7eaaaebdc61e57c74f48bfbf542d66dae582c3407ac4fa3aca97ee`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 1.1 MB (1144025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffdb57330391c0d5382894e216c0d21e4a963f5b2ce213581a48f9874e6c82f2`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40`

```console
$ docker pull telegraf@sha256:777cdbf333253be39085bf54c4c305d8360b26c6c882e252f42e74c5035ec2bb
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
$ docker pull telegraf@sha256:6b26557e1fe524c1f9637372505f164a34851e5e85069891b8f63ada5ceab8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.2 MB (180199564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cf9a9dfe096cdcb27ea42655c03cfd6c763149f50c9ff7171d1e3c1a2a18182`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:39:02 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:39:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 01:39:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:39:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:39:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510899227e777f8bafffa28ddaafeaeba0613d393804cbb69434c98764e9e77e`  
		Last Modified: Sat, 19 Sep 2026 01:39:29 GMT  
		Size: 19.3 MB (19284624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528b54dddf0549657df1ae312b776eddb0af93236ff4a8ed373787fd55d750b7`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d5f682e30246782a90df6050a34809d7748f111ffb666bfb33aff5e668b2d4`  
		Last Modified: Sat, 19 Sep 2026 01:39:30 GMT  
		Size: 88.3 MB (88349709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bb441a558dab1ec8c9b9e495e1740c7cbc1641e00ad12de847298fb325b439`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:659129a5d720df92d984875e6d9e364d62ab66206633b533df1460935b7f89eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394940608178910d96f807d4766a3fd64286c9c21c0264e5e348e34b60b9f22`

```dockerfile
```

-	Layers:
	-	`sha256:b36604d8cbb6860e8f0317e12500e17a52825ce672dc7073706e95d15da68d2d`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 6.7 MB (6691369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4757b75e53f656ef17bb0cf0b29b1342922043e1ccc2f2a9e3840989dee31087`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:03c062d9d71c93ed20b58d957146c23e165e012401c80f00870c1f53d030b361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166215972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5894441ecb192cd8d6be0dfbafa87f9491dca37686ada21d7ae631b2aba4bfa5`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 02:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 02:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 02:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857421596a5d759ae9b09b5e83a2022543db7eda0f0ae218cf1179b946c02ae1`  
		Last Modified: Sat, 19 Sep 2026 02:42:10 GMT  
		Size: 17.9 MB (17949765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc31935a54532d9ef1ac4fe9d2413bcdd5398877d5fa49bd2a16e408a689e8f`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a958c71287878401a9aa31a4fb73cba1f1936651861c61ec86fe2e992b276b`  
		Last Modified: Sat, 19 Sep 2026 02:42:12 GMT  
		Size: 82.1 MB (82099233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a861e17a06f3f208b9bc4d2476498c98b5032d0e98ac9b0c8f35e608e2bbcc5d`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:d5323720442281d96ea1bb211a8ab2797a39de4b5810771cab9437f30bab2e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f3ba50ac87365818959818f583c03e8968b59fe2b00383a14b7e994d22984d`

```dockerfile
```

-	Layers:
	-	`sha256:397bf957e0f45348a48df863964ea9e53b1e5ea8872a4477027b7ea45ec6cad6`  
		Last Modified: Sat, 19 Sep 2026 02:42:10 GMT  
		Size: 6.7 MB (6686779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01311f67eec9d7c786a69d705f94d95cb13a277361ffb8be0cada7bce78fc8ae`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a2727d175908969bfc7e287cc03742f08403cb8885bf7ea97825201bfc7d0de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170067813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab36d571f25556434bed1dd050fdaf2c78576cdfb3b954f8d9cbffe0f8c0b238`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:24 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:24 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 01:46:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:46:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:46:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa0207fa227c1826779ef2569da287b0d2c0eb0b6174df1f1b9d8a7ddc3cb6d`  
		Last Modified: Sat, 19 Sep 2026 01:46:47 GMT  
		Size: 19.2 MB (19194946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64bbc961ddfbbf5b096b9073757151d42eaabd8489c543a2a0a7229066557ee`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3475529e405a682be1862ed2d12dd901abd36e50d3c2cab1cb4fdea7efb1126f`  
		Last Modified: Sat, 19 Sep 2026 01:46:48 GMT  
		Size: 78.8 MB (78849540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bd877d7b4cf57a124bbde1c5d5418ec5d2d489e10c9fd26b111a65e3927aae`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:783481309d2220024a5b3313bb4372efa4fff7d1d33d681aca8a5044d25e377d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621b4c917289d9af0f8db6f73b441172ee3c98b28a70eaa402f031e6a227dc8`

```dockerfile
```

-	Layers:
	-	`sha256:626dc2ac7086ceb70874894af39a9561cda608606e0686b8979735ed480d4e13`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 6.7 MB (6692057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0c39423122f396a77623c387a7f3c4c294798dde16ac7362cc37726032f2212`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:de158bd5b050cbb763fdc921bd01c8faf85408317176ccbcca2ca514debbaa1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:121adee15febe51fee31d95c6b780b9483f4964e80bf756a7b7109bdf8e6eacf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97474323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a53b6d9bded474cfd049f5024611088ace04f37483ffebae2afbb8a24f355b`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:09 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENV TELEGRAF_VERSION=1.40.0
# Thu, 17 Sep 2026 21:58:16 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:17 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f17413fd88f86c108ae3e5a1712a9d7c406f1f66ad44bbe22da01bcda309438`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aec8ac4b0f6cffdf348dc2d10473fa15aacb50d50747df4ee8996e954394156`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 2.6 MB (2581422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0ac25b4a6ff65673c944c805a79112118140d91ba46e49c8b289d004641629`  
		Last Modified: Thu, 17 Sep 2026 21:58:35 GMT  
		Size: 91.0 MB (91043479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346ed615a0e2cf70194039adcdc83dcbfb022517df8f0a528edfc643d88a2297`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:fb79b8518bc656ddec5e513535c0a482c1077d3da8b59a948476a853ab07c841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96bf1ec9e82540aff4ad48420c46715cea913b992c5d4b5b11db31f88570465`

```dockerfile
```

-	Layers:
	-	`sha256:6220cea72dd53c8767081b358fb229053c46d75c110836d42400a22a6cac3b55`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 1.2 MB (1151735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76747d17070aa9857eaeb556ca37b84bcb2b3b14327bd155279990765c3cef4c`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:60b85b465f270375088b26cc5fe9810e7f4eb7ed9e677a8ee3050fca47882ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88349267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b031c02a1788de98c8affe442ddbd2d2140610c09652d00db21f2fe28c611fd`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENV TELEGRAF_VERSION=1.40.0
# Thu, 17 Sep 2026 22:16:44 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb5d6680e146417887650d67af43b5203667227ce40ab4168d949835ea5bfe6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ffc21891128e0784c7c6f92e5cc6b1a1eaaea8c57a08a7d6fcc6031871fc7b4`  
		Last Modified: Thu, 17 Sep 2026 22:16:59 GMT  
		Size: 2.6 MB (2633282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cadb69fe172a5a01bcfd362ccd8726b599c4dcbc101592b64d13a819273be2`  
		Last Modified: Thu, 17 Sep 2026 22:17:01 GMT  
		Size: 81.5 MB (81529014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2705c9d707ac4f1acd5ffd0f3e0eab382ac92cc7f807e2a93e1b29798e95a7`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:bf29532a246ecd2167c13baa54c3f44f2c66ca3c6c2269bd1315894dc5ee9862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627013f4a38e27d32ce35c5ec20a65cd109ec2a7a660cde368ddd622adc46287`

```dockerfile
```

-	Layers:
	-	`sha256:177f38cf4271263048d4db67ebc0eaf1ad930856d04433af76a94bbdd9e21d4c`  
		Last Modified: Thu, 17 Sep 2026 22:16:59 GMT  
		Size: 1.1 MB (1146724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e641b239e06476d366ba16a68cafc948374b8bb93a1da54fd3bfcac6985fd3a3`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.0`

```console
$ docker pull telegraf@sha256:777cdbf333253be39085bf54c4c305d8360b26c6c882e252f42e74c5035ec2bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.0` - linux; amd64

```console
$ docker pull telegraf@sha256:6b26557e1fe524c1f9637372505f164a34851e5e85069891b8f63ada5ceab8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.2 MB (180199564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cf9a9dfe096cdcb27ea42655c03cfd6c763149f50c9ff7171d1e3c1a2a18182`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:39:02 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:39:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 01:39:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:39:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:39:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510899227e777f8bafffa28ddaafeaeba0613d393804cbb69434c98764e9e77e`  
		Last Modified: Sat, 19 Sep 2026 01:39:29 GMT  
		Size: 19.3 MB (19284624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528b54dddf0549657df1ae312b776eddb0af93236ff4a8ed373787fd55d750b7`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d5f682e30246782a90df6050a34809d7748f111ffb666bfb33aff5e668b2d4`  
		Last Modified: Sat, 19 Sep 2026 01:39:30 GMT  
		Size: 88.3 MB (88349709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bb441a558dab1ec8c9b9e495e1740c7cbc1641e00ad12de847298fb325b439`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0` - unknown; unknown

```console
$ docker pull telegraf@sha256:659129a5d720df92d984875e6d9e364d62ab66206633b533df1460935b7f89eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394940608178910d96f807d4766a3fd64286c9c21c0264e5e348e34b60b9f22`

```dockerfile
```

-	Layers:
	-	`sha256:b36604d8cbb6860e8f0317e12500e17a52825ce672dc7073706e95d15da68d2d`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 6.7 MB (6691369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4757b75e53f656ef17bb0cf0b29b1342922043e1ccc2f2a9e3840989dee31087`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.0` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:03c062d9d71c93ed20b58d957146c23e165e012401c80f00870c1f53d030b361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166215972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5894441ecb192cd8d6be0dfbafa87f9491dca37686ada21d7ae631b2aba4bfa5`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 02:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 02:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 02:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857421596a5d759ae9b09b5e83a2022543db7eda0f0ae218cf1179b946c02ae1`  
		Last Modified: Sat, 19 Sep 2026 02:42:10 GMT  
		Size: 17.9 MB (17949765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc31935a54532d9ef1ac4fe9d2413bcdd5398877d5fa49bd2a16e408a689e8f`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a958c71287878401a9aa31a4fb73cba1f1936651861c61ec86fe2e992b276b`  
		Last Modified: Sat, 19 Sep 2026 02:42:12 GMT  
		Size: 82.1 MB (82099233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a861e17a06f3f208b9bc4d2476498c98b5032d0e98ac9b0c8f35e608e2bbcc5d`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0` - unknown; unknown

```console
$ docker pull telegraf@sha256:d5323720442281d96ea1bb211a8ab2797a39de4b5810771cab9437f30bab2e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f3ba50ac87365818959818f583c03e8968b59fe2b00383a14b7e994d22984d`

```dockerfile
```

-	Layers:
	-	`sha256:397bf957e0f45348a48df863964ea9e53b1e5ea8872a4477027b7ea45ec6cad6`  
		Last Modified: Sat, 19 Sep 2026 02:42:10 GMT  
		Size: 6.7 MB (6686779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01311f67eec9d7c786a69d705f94d95cb13a277361ffb8be0cada7bce78fc8ae`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.0` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a2727d175908969bfc7e287cc03742f08403cb8885bf7ea97825201bfc7d0de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170067813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab36d571f25556434bed1dd050fdaf2c78576cdfb3b954f8d9cbffe0f8c0b238`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:24 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:24 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 01:46:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:46:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:46:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa0207fa227c1826779ef2569da287b0d2c0eb0b6174df1f1b9d8a7ddc3cb6d`  
		Last Modified: Sat, 19 Sep 2026 01:46:47 GMT  
		Size: 19.2 MB (19194946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64bbc961ddfbbf5b096b9073757151d42eaabd8489c543a2a0a7229066557ee`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3475529e405a682be1862ed2d12dd901abd36e50d3c2cab1cb4fdea7efb1126f`  
		Last Modified: Sat, 19 Sep 2026 01:46:48 GMT  
		Size: 78.8 MB (78849540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bd877d7b4cf57a124bbde1c5d5418ec5d2d489e10c9fd26b111a65e3927aae`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0` - unknown; unknown

```console
$ docker pull telegraf@sha256:783481309d2220024a5b3313bb4372efa4fff7d1d33d681aca8a5044d25e377d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621b4c917289d9af0f8db6f73b441172ee3c98b28a70eaa402f031e6a227dc8`

```dockerfile
```

-	Layers:
	-	`sha256:626dc2ac7086ceb70874894af39a9561cda608606e0686b8979735ed480d4e13`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 6.7 MB (6692057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0c39423122f396a77623c387a7f3c4c294798dde16ac7362cc37726032f2212`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.0-alpine`

```console
$ docker pull telegraf@sha256:de158bd5b050cbb763fdc921bd01c8faf85408317176ccbcca2ca514debbaa1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.0-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:121adee15febe51fee31d95c6b780b9483f4964e80bf756a7b7109bdf8e6eacf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97474323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a53b6d9bded474cfd049f5024611088ace04f37483ffebae2afbb8a24f355b`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:09 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENV TELEGRAF_VERSION=1.40.0
# Thu, 17 Sep 2026 21:58:16 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:17 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f17413fd88f86c108ae3e5a1712a9d7c406f1f66ad44bbe22da01bcda309438`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aec8ac4b0f6cffdf348dc2d10473fa15aacb50d50747df4ee8996e954394156`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 2.6 MB (2581422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0ac25b4a6ff65673c944c805a79112118140d91ba46e49c8b289d004641629`  
		Last Modified: Thu, 17 Sep 2026 21:58:35 GMT  
		Size: 91.0 MB (91043479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346ed615a0e2cf70194039adcdc83dcbfb022517df8f0a528edfc643d88a2297`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:fb79b8518bc656ddec5e513535c0a482c1077d3da8b59a948476a853ab07c841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96bf1ec9e82540aff4ad48420c46715cea913b992c5d4b5b11db31f88570465`

```dockerfile
```

-	Layers:
	-	`sha256:6220cea72dd53c8767081b358fb229053c46d75c110836d42400a22a6cac3b55`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 1.2 MB (1151735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76747d17070aa9857eaeb556ca37b84bcb2b3b14327bd155279990765c3cef4c`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.0-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:60b85b465f270375088b26cc5fe9810e7f4eb7ed9e677a8ee3050fca47882ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88349267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b031c02a1788de98c8affe442ddbd2d2140610c09652d00db21f2fe28c611fd`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENV TELEGRAF_VERSION=1.40.0
# Thu, 17 Sep 2026 22:16:44 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb5d6680e146417887650d67af43b5203667227ce40ab4168d949835ea5bfe6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ffc21891128e0784c7c6f92e5cc6b1a1eaaea8c57a08a7d6fcc6031871fc7b4`  
		Last Modified: Thu, 17 Sep 2026 22:16:59 GMT  
		Size: 2.6 MB (2633282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cadb69fe172a5a01bcfd362ccd8726b599c4dcbc101592b64d13a819273be2`  
		Last Modified: Thu, 17 Sep 2026 22:17:01 GMT  
		Size: 81.5 MB (81529014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2705c9d707ac4f1acd5ffd0f3e0eab382ac92cc7f807e2a93e1b29798e95a7`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.0-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:bf29532a246ecd2167c13baa54c3f44f2c66ca3c6c2269bd1315894dc5ee9862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627013f4a38e27d32ce35c5ec20a65cd109ec2a7a660cde368ddd622adc46287`

```dockerfile
```

-	Layers:
	-	`sha256:177f38cf4271263048d4db67ebc0eaf1ad930856d04433af76a94bbdd9e21d4c`  
		Last Modified: Thu, 17 Sep 2026 22:16:59 GMT  
		Size: 1.1 MB (1146724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e641b239e06476d366ba16a68cafc948374b8bb93a1da54fd3bfcac6985fd3a3`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:de158bd5b050cbb763fdc921bd01c8faf85408317176ccbcca2ca514debbaa1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:121adee15febe51fee31d95c6b780b9483f4964e80bf756a7b7109bdf8e6eacf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97474323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a53b6d9bded474cfd049f5024611088ace04f37483ffebae2afbb8a24f355b`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:09 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:58:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
ENV TELEGRAF_VERSION=1.40.0
# Thu, 17 Sep 2026 21:58:16 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 21:58:16 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 21:58:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:58:17 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 21:58:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f17413fd88f86c108ae3e5a1712a9d7c406f1f66ad44bbe22da01bcda309438`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aec8ac4b0f6cffdf348dc2d10473fa15aacb50d50747df4ee8996e954394156`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 2.6 MB (2581422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0ac25b4a6ff65673c944c805a79112118140d91ba46e49c8b289d004641629`  
		Last Modified: Thu, 17 Sep 2026 21:58:35 GMT  
		Size: 91.0 MB (91043479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346ed615a0e2cf70194039adcdc83dcbfb022517df8f0a528edfc643d88a2297`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:fb79b8518bc656ddec5e513535c0a482c1077d3da8b59a948476a853ab07c841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96bf1ec9e82540aff4ad48420c46715cea913b992c5d4b5b11db31f88570465`

```dockerfile
```

-	Layers:
	-	`sha256:6220cea72dd53c8767081b358fb229053c46d75c110836d42400a22a6cac3b55`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 1.2 MB (1151735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76747d17070aa9857eaeb556ca37b84bcb2b3b14327bd155279990765c3cef4c`  
		Last Modified: Thu, 17 Sep 2026 21:58:33 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:60b85b465f270375088b26cc5fe9810e7f4eb7ed9e677a8ee3050fca47882ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88349267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b031c02a1788de98c8affe442ddbd2d2140610c09652d00db21f2fe28c611fd`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:08 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 22:16:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENV TELEGRAF_VERSION=1.40.0
# Thu, 17 Sep 2026 22:16:44 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 17 Sep 2026 22:16:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:16:44 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 17 Sep 2026 22:16:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb5d6680e146417887650d67af43b5203667227ce40ab4168d949835ea5bfe6`  
		Last Modified: Thu, 17 Sep 2026 22:16:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ffc21891128e0784c7c6f92e5cc6b1a1eaaea8c57a08a7d6fcc6031871fc7b4`  
		Last Modified: Thu, 17 Sep 2026 22:16:59 GMT  
		Size: 2.6 MB (2633282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cadb69fe172a5a01bcfd362ccd8726b599c4dcbc101592b64d13a819273be2`  
		Last Modified: Thu, 17 Sep 2026 22:17:01 GMT  
		Size: 81.5 MB (81529014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2705c9d707ac4f1acd5ffd0f3e0eab382ac92cc7f807e2a93e1b29798e95a7`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:bf29532a246ecd2167c13baa54c3f44f2c66ca3c6c2269bd1315894dc5ee9862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627013f4a38e27d32ce35c5ec20a65cd109ec2a7a660cde368ddd622adc46287`

```dockerfile
```

-	Layers:
	-	`sha256:177f38cf4271263048d4db67ebc0eaf1ad930856d04433af76a94bbdd9e21d4c`  
		Last Modified: Thu, 17 Sep 2026 22:16:59 GMT  
		Size: 1.1 MB (1146724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e641b239e06476d366ba16a68cafc948374b8bb93a1da54fd3bfcac6985fd3a3`  
		Last Modified: Thu, 17 Sep 2026 22:16:58 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:777cdbf333253be39085bf54c4c305d8360b26c6c882e252f42e74c5035ec2bb
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
$ docker pull telegraf@sha256:6b26557e1fe524c1f9637372505f164a34851e5e85069891b8f63ada5ceab8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.2 MB (180199564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cf9a9dfe096cdcb27ea42655c03cfd6c763149f50c9ff7171d1e3c1a2a18182`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:39:02 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:39:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 01:39:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:39:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:39:07 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:39:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510899227e777f8bafffa28ddaafeaeba0613d393804cbb69434c98764e9e77e`  
		Last Modified: Sat, 19 Sep 2026 01:39:29 GMT  
		Size: 19.3 MB (19284624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528b54dddf0549657df1ae312b776eddb0af93236ff4a8ed373787fd55d750b7`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 5.1 KB (5072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d5f682e30246782a90df6050a34809d7748f111ffb666bfb33aff5e668b2d4`  
		Last Modified: Sat, 19 Sep 2026 01:39:30 GMT  
		Size: 88.3 MB (88349709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bb441a558dab1ec8c9b9e495e1740c7cbc1641e00ad12de847298fb325b439`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:659129a5d720df92d984875e6d9e364d62ab66206633b533df1460935b7f89eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394940608178910d96f807d4766a3fd64286c9c21c0264e5e348e34b60b9f22`

```dockerfile
```

-	Layers:
	-	`sha256:b36604d8cbb6860e8f0317e12500e17a52825ce672dc7073706e95d15da68d2d`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 6.7 MB (6691369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4757b75e53f656ef17bb0cf0b29b1342922043e1ccc2f2a9e3840989dee31087`  
		Last Modified: Sat, 19 Sep 2026 01:39:28 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:03c062d9d71c93ed20b58d957146c23e165e012401c80f00870c1f53d030b361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166215972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5894441ecb192cd8d6be0dfbafa87f9491dca37686ada21d7ae631b2aba4bfa5`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 02:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 02:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 02:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857421596a5d759ae9b09b5e83a2022543db7eda0f0ae218cf1179b946c02ae1`  
		Last Modified: Sat, 19 Sep 2026 02:42:10 GMT  
		Size: 17.9 MB (17949765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc31935a54532d9ef1ac4fe9d2413bcdd5398877d5fa49bd2a16e408a689e8f`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a958c71287878401a9aa31a4fb73cba1f1936651861c61ec86fe2e992b276b`  
		Last Modified: Sat, 19 Sep 2026 02:42:12 GMT  
		Size: 82.1 MB (82099233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a861e17a06f3f208b9bc4d2476498c98b5032d0e98ac9b0c8f35e608e2bbcc5d`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:d5323720442281d96ea1bb211a8ab2797a39de4b5810771cab9437f30bab2e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f3ba50ac87365818959818f583c03e8968b59fe2b00383a14b7e994d22984d`

```dockerfile
```

-	Layers:
	-	`sha256:397bf957e0f45348a48df863964ea9e53b1e5ea8872a4477027b7ea45ec6cad6`  
		Last Modified: Sat, 19 Sep 2026 02:42:10 GMT  
		Size: 6.7 MB (6686779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01311f67eec9d7c786a69d705f94d95cb13a277361ffb8be0cada7bce78fc8ae`  
		Last Modified: Sat, 19 Sep 2026 02:42:09 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:a2727d175908969bfc7e287cc03742f08403cb8885bf7ea97825201bfc7d0de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170067813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab36d571f25556434bed1dd050fdaf2c78576cdfb3b954f8d9cbffe0f8c0b238`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:24 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:24 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
ENV TELEGRAF_VERSION=1.40.0
# Sat, 19 Sep 2026 01:46:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Sat, 19 Sep 2026 01:46:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:46:28 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Sat, 19 Sep 2026 01:46:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa0207fa227c1826779ef2569da287b0d2c0eb0b6174df1f1b9d8a7ddc3cb6d`  
		Last Modified: Sat, 19 Sep 2026 01:46:47 GMT  
		Size: 19.2 MB (19194946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64bbc961ddfbbf5b096b9073757151d42eaabd8489c543a2a0a7229066557ee`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3475529e405a682be1862ed2d12dd901abd36e50d3c2cab1cb4fdea7efb1126f`  
		Last Modified: Sat, 19 Sep 2026 01:46:48 GMT  
		Size: 78.8 MB (78849540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bd877d7b4cf57a124bbde1c5d5418ec5d2d489e10c9fd26b111a65e3927aae`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:783481309d2220024a5b3313bb4372efa4fff7d1d33d681aca8a5044d25e377d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621b4c917289d9af0f8db6f73b441172ee3c98b28a70eaa402f031e6a227dc8`

```dockerfile
```

-	Layers:
	-	`sha256:626dc2ac7086ceb70874894af39a9561cda608606e0686b8979735ed480d4e13`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 6.7 MB (6692057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0c39423122f396a77623c387a7f3c4c294798dde16ac7362cc37726032f2212`  
		Last Modified: Sat, 19 Sep 2026 01:46:46 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
