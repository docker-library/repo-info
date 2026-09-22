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
-	[`telegraf:1.40.1`](#telegraf1401)
-	[`telegraf:1.40.1-alpine`](#telegraf1401-alpine)
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
$ docker pull telegraf@sha256:90da3a5b81426230ed677f00823de0d55ce198ad7b5c2e099afc417ebc744642
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
$ docker pull telegraf@sha256:c80f3a417a48b27dcfd92114707c088913a1f7e24f06d9191b474e6ee6c2f838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180572853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2711454e94b6dbc2d2c5aa9d41be8ac807481f0ad2bbd93fe7bb199313e9b00`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:31 GMT
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
	-	`sha256:c2a628b3065c4626dc1dac2ee6e9f634e29f071e81c7d63aa7a1dba589fa8163`  
		Last Modified: Mon, 21 Sep 2026 22:10:50 GMT  
		Size: 19.3 MB (19284615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050572f7246aa44556a59a92d338e847ceae28ef7c989c985f597cb2fc8e3360`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6d6592bc30dc43c452c781c0f56a91afb8403343d7f7131754d7584f8fb5f9`  
		Last Modified: Mon, 21 Sep 2026 22:10:52 GMT  
		Size: 88.7 MB (88723009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13935813bb746bf40e87aeca006564245e3bb834dce903b3f68a0bff22dc1121`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:77e52da2dd659201c1b90507ef242b99e390a2f0bdfb5d5d143af40dc5100c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6144221c7767bf224e4f6a72793a33f49b20dd62019fb60ba5327cbace5fc38`

```dockerfile
```

-	Layers:
	-	`sha256:5dee121086ec7050beeeec8e08f2c929c4a01a30a2087a4c26eed2ddf4992ee5`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 6.7 MB (6691309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b154f3fe8b4083b2b07ac7b2dbaf0a17dc104142d5400b2c60694f877218492`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:51875efa48b3c29101c64b3df141a83fba5a6be34d350eb00a2c54c29b96a409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166596135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1d1cd1779b3bcc9c4b45fbe2526f7e202aaf8ac3cf4da7f0b51419580d53f6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:02 GMT
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
	-	`sha256:39eee8cb088f20ece866f54371865dcd3ceeb8086a800fc6488dba8c70b0b948`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 17.9 MB (17949820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ea36ffaa5d5f7aa416eaf88f0dd4335c61d1150368bf6984f917ac1b9e9900`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9796f6606693943eb326f51ce128108e804447ce4b10275b7e36d537c81b2e`  
		Last Modified: Mon, 21 Sep 2026 22:11:22 GMT  
		Size: 82.5 MB (82479340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed67ef952f3a403d8c8fb66911f69e6ba523af9363da1e9c2e29de3d286c005f`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:543907c6e9bc73b5f03c67eb66775f73f8ca0ddee005761f473203a99fdd3dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfde341961c5cab7397b0572cfe07bead6758f850ddf88f47a7c5c374a1a6235`

```dockerfile
```

-	Layers:
	-	`sha256:7109de704b8cf8cc2016caff85cd8cab08b2c612712698a52d76562ffb25b980`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 6.7 MB (6686719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d56ad07f9e1adeee3fe2f5e81527793a49985686f8c789e83645a3c6e923bc5b`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 14.9 KB (14865 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:3d96cadeaeeba3b027f6a58e262e0076b42e6e3b5dfd616054e6efd1c168c08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170451200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc442660dad5dfdc2b55ccd917158d66bf01a991ad9a8a9afbccf9139494209`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:10 GMT
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
	-	`sha256:bcf208331b80aac46c2a3a543e91f22114cea815e5fd03a6f55d458ad28f480c`  
		Last Modified: Mon, 21 Sep 2026 22:10:29 GMT  
		Size: 19.2 MB (19194874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a00f1ed5f5da38c148e11cf269fdaec4bda5b9f06c8a8b0f3309cdb226d1d7d`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b440ef37a369b0a5795be5cafab5a56c58f6c41f9f11527448bae40d6c8fa5cf`  
		Last Modified: Mon, 21 Sep 2026 22:10:30 GMT  
		Size: 79.2 MB (79232997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b1e60a657189b8331ede57f41dc91ca5ce7b727af2cf6c89dc59a855a6fcec`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40` - unknown; unknown

```console
$ docker pull telegraf@sha256:be41412aaa9e6deb304f3351988c5d759d4ea773b348b427c6eb1ea2bf81421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb797f81983552bcf3462fe495620f004bb5c11abb2bba9cadce382543744025`

```dockerfile
```

-	Layers:
	-	`sha256:fd0f06a579969cc78a263ef32b87d1d6a45642b56f559c1256e89bbe1234e634`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 6.7 MB (6691997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b69ae06cd4b00e517cf20ab564eaff91ab53d85a1abdf2855dfaa7473b0f65d6`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 14.9 KB (14891 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40-alpine`

```console
$ docker pull telegraf@sha256:6606553b5019151de171984e9ce938eac859d6987aa5329c420597737bf1a9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d31c27d1a23449f8eb6a1c91e15922e4f2ab504732edfd0e40285185dc1a50f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97852500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee789146baac8629f7f091ac3a794e17f635d6ca98941f3ef868d2eca136712`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:05 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23bf1f65139176a78ebb8b12587c7f784dcf0d13c795898b44f150f681dabf3`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31047b02db8eb56bf66f90b2a6bb724279f6644e479b57d9cc5fabb0f857c672`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 2.6 MB (2581404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44a23e26818f8cea73af8bda7b9e1869bd3727ae83b8e78d03e6fcbf5d93bdb`  
		Last Modified: Mon, 21 Sep 2026 22:11:23 GMT  
		Size: 91.4 MB (91421675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a8b3142946f40b51395f1eb07a221236e7e2afc2b9314535fc967d9faf4ce3`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:df3ba53b03b6ac31f50108f6a68cf1c7b51e23660ccc415c8cfa11ae7e66219d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3b9f1c0b43c941d536b04a177e4413a712cfd3c66f5823ee3691ef745c891d`

```dockerfile
```

-	Layers:
	-	`sha256:548d839a14fe2ca7828c4bed39eff96c9da7a66d697f2d708f9edf3d66a3c010`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 1.2 MB (1151675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b899dd03eb712db1dcc67fcc86e69cd15d6fb5c61bd21fda9e5d37f8486e1e0c`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c11707fed8fc36baa257509ddee6e1f339e5dc1925e9c6ab9256e7a90859007c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88720948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33766bd902152f6589fd59ba8ac61ef50bacc255f2ed8186898c6d88819f3086`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:45 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090cebccf81accf2e95200898dcf5c31040cb8b81337e67edeaccd1cb9b6ed22`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0439ba2dd85468f4dd6d01176ea9e58be100350c0bce54e37a057c5becd0aa`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 2.6 MB (2633299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee89747a1681cd8663e9ee42fc1bf24ca2efd32d1451b3f9137e81d60f043cb`  
		Last Modified: Mon, 21 Sep 2026 22:11:02 GMT  
		Size: 81.9 MB (81900680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc992e601cbe1fd91b51bdd37b703db5bda888a0ce30e7ec81f93f114894577b`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:81bb6a5b0e69700bf6c93dcde552f5492a8a74992e2ded673ffb3cbf01750467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56124e6ac670d3a13f1834bbdd8f9836689035eaa5b1b8d174282f0366fd1697`

```dockerfile
```

-	Layers:
	-	`sha256:6749cbb1a69e974d4b0313fb6c3b38703f359b95aea0bb8f5416a3a89bc3517c`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 1.1 MB (1146664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d9f0e566f6b46059281fee8380dd076d486706df29eea7b536e4f1794e7d46d`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.1`

```console
$ docker pull telegraf@sha256:90da3a5b81426230ed677f00823de0d55ce198ad7b5c2e099afc417ebc744642
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.1` - linux; amd64

```console
$ docker pull telegraf@sha256:c80f3a417a48b27dcfd92114707c088913a1f7e24f06d9191b474e6ee6c2f838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180572853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2711454e94b6dbc2d2c5aa9d41be8ac807481f0ad2bbd93fe7bb199313e9b00`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:31 GMT
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
	-	`sha256:c2a628b3065c4626dc1dac2ee6e9f634e29f071e81c7d63aa7a1dba589fa8163`  
		Last Modified: Mon, 21 Sep 2026 22:10:50 GMT  
		Size: 19.3 MB (19284615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050572f7246aa44556a59a92d338e847ceae28ef7c989c985f597cb2fc8e3360`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6d6592bc30dc43c452c781c0f56a91afb8403343d7f7131754d7584f8fb5f9`  
		Last Modified: Mon, 21 Sep 2026 22:10:52 GMT  
		Size: 88.7 MB (88723009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13935813bb746bf40e87aeca006564245e3bb834dce903b3f68a0bff22dc1121`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1` - unknown; unknown

```console
$ docker pull telegraf@sha256:77e52da2dd659201c1b90507ef242b99e390a2f0bdfb5d5d143af40dc5100c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6144221c7767bf224e4f6a72793a33f49b20dd62019fb60ba5327cbace5fc38`

```dockerfile
```

-	Layers:
	-	`sha256:5dee121086ec7050beeeec8e08f2c929c4a01a30a2087a4c26eed2ddf4992ee5`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 6.7 MB (6691309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b154f3fe8b4083b2b07ac7b2dbaf0a17dc104142d5400b2c60694f877218492`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.1` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:51875efa48b3c29101c64b3df141a83fba5a6be34d350eb00a2c54c29b96a409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166596135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1d1cd1779b3bcc9c4b45fbe2526f7e202aaf8ac3cf4da7f0b51419580d53f6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:02 GMT
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
	-	`sha256:39eee8cb088f20ece866f54371865dcd3ceeb8086a800fc6488dba8c70b0b948`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 17.9 MB (17949820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ea36ffaa5d5f7aa416eaf88f0dd4335c61d1150368bf6984f917ac1b9e9900`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9796f6606693943eb326f51ce128108e804447ce4b10275b7e36d537c81b2e`  
		Last Modified: Mon, 21 Sep 2026 22:11:22 GMT  
		Size: 82.5 MB (82479340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed67ef952f3a403d8c8fb66911f69e6ba523af9363da1e9c2e29de3d286c005f`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1` - unknown; unknown

```console
$ docker pull telegraf@sha256:543907c6e9bc73b5f03c67eb66775f73f8ca0ddee005761f473203a99fdd3dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfde341961c5cab7397b0572cfe07bead6758f850ddf88f47a7c5c374a1a6235`

```dockerfile
```

-	Layers:
	-	`sha256:7109de704b8cf8cc2016caff85cd8cab08b2c612712698a52d76562ffb25b980`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 6.7 MB (6686719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d56ad07f9e1adeee3fe2f5e81527793a49985686f8c789e83645a3c6e923bc5b`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 14.9 KB (14865 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.1` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:3d96cadeaeeba3b027f6a58e262e0076b42e6e3b5dfd616054e6efd1c168c08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170451200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc442660dad5dfdc2b55ccd917158d66bf01a991ad9a8a9afbccf9139494209`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:10 GMT
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
	-	`sha256:bcf208331b80aac46c2a3a543e91f22114cea815e5fd03a6f55d458ad28f480c`  
		Last Modified: Mon, 21 Sep 2026 22:10:29 GMT  
		Size: 19.2 MB (19194874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a00f1ed5f5da38c148e11cf269fdaec4bda5b9f06c8a8b0f3309cdb226d1d7d`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b440ef37a369b0a5795be5cafab5a56c58f6c41f9f11527448bae40d6c8fa5cf`  
		Last Modified: Mon, 21 Sep 2026 22:10:30 GMT  
		Size: 79.2 MB (79232997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b1e60a657189b8331ede57f41dc91ca5ce7b727af2cf6c89dc59a855a6fcec`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1` - unknown; unknown

```console
$ docker pull telegraf@sha256:be41412aaa9e6deb304f3351988c5d759d4ea773b348b427c6eb1ea2bf81421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb797f81983552bcf3462fe495620f004bb5c11abb2bba9cadce382543744025`

```dockerfile
```

-	Layers:
	-	`sha256:fd0f06a579969cc78a263ef32b87d1d6a45642b56f559c1256e89bbe1234e634`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 6.7 MB (6691997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b69ae06cd4b00e517cf20ab564eaff91ab53d85a1abdf2855dfaa7473b0f65d6`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 14.9 KB (14891 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:1.40.1-alpine`

```console
$ docker pull telegraf@sha256:6606553b5019151de171984e9ce938eac859d6987aa5329c420597737bf1a9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:1.40.1-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d31c27d1a23449f8eb6a1c91e15922e4f2ab504732edfd0e40285185dc1a50f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97852500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee789146baac8629f7f091ac3a794e17f635d6ca98941f3ef868d2eca136712`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:05 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23bf1f65139176a78ebb8b12587c7f784dcf0d13c795898b44f150f681dabf3`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31047b02db8eb56bf66f90b2a6bb724279f6644e479b57d9cc5fabb0f857c672`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 2.6 MB (2581404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44a23e26818f8cea73af8bda7b9e1869bd3727ae83b8e78d03e6fcbf5d93bdb`  
		Last Modified: Mon, 21 Sep 2026 22:11:23 GMT  
		Size: 91.4 MB (91421675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a8b3142946f40b51395f1eb07a221236e7e2afc2b9314535fc967d9faf4ce3`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:df3ba53b03b6ac31f50108f6a68cf1c7b51e23660ccc415c8cfa11ae7e66219d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3b9f1c0b43c941d536b04a177e4413a712cfd3c66f5823ee3691ef745c891d`

```dockerfile
```

-	Layers:
	-	`sha256:548d839a14fe2ca7828c4bed39eff96c9da7a66d697f2d708f9edf3d66a3c010`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 1.2 MB (1151675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b899dd03eb712db1dcc67fcc86e69cd15d6fb5c61bd21fda9e5d37f8486e1e0c`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:1.40.1-alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c11707fed8fc36baa257509ddee6e1f339e5dc1925e9c6ab9256e7a90859007c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88720948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33766bd902152f6589fd59ba8ac61ef50bacc255f2ed8186898c6d88819f3086`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:45 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090cebccf81accf2e95200898dcf5c31040cb8b81337e67edeaccd1cb9b6ed22`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0439ba2dd85468f4dd6d01176ea9e58be100350c0bce54e37a057c5becd0aa`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 2.6 MB (2633299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee89747a1681cd8663e9ee42fc1bf24ca2efd32d1451b3f9137e81d60f043cb`  
		Last Modified: Mon, 21 Sep 2026 22:11:02 GMT  
		Size: 81.9 MB (81900680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc992e601cbe1fd91b51bdd37b703db5bda888a0ce30e7ec81f93f114894577b`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:1.40.1-alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:81bb6a5b0e69700bf6c93dcde552f5492a8a74992e2ded673ffb3cbf01750467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56124e6ac670d3a13f1834bbdd8f9836689035eaa5b1b8d174282f0366fd1697`

```dockerfile
```

-	Layers:
	-	`sha256:6749cbb1a69e974d4b0313fb6c3b38703f359b95aea0bb8f5416a3a89bc3517c`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 1.1 MB (1146664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d9f0e566f6b46059281fee8380dd076d486706df29eea7b536e4f1794e7d46d`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:6606553b5019151de171984e9ce938eac859d6987aa5329c420597737bf1a9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d31c27d1a23449f8eb6a1c91e15922e4f2ab504732edfd0e40285185dc1a50f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97852500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee789146baac8629f7f091ac3a794e17f635d6ca98941f3ef868d2eca136712`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:59 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:05 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:05 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23bf1f65139176a78ebb8b12587c7f784dcf0d13c795898b44f150f681dabf3`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31047b02db8eb56bf66f90b2a6bb724279f6644e479b57d9cc5fabb0f857c672`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 2.6 MB (2581404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44a23e26818f8cea73af8bda7b9e1869bd3727ae83b8e78d03e6fcbf5d93bdb`  
		Last Modified: Mon, 21 Sep 2026 22:11:23 GMT  
		Size: 91.4 MB (91421675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a8b3142946f40b51395f1eb07a221236e7e2afc2b9314535fc967d9faf4ce3`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:df3ba53b03b6ac31f50108f6a68cf1c7b51e23660ccc415c8cfa11ae7e66219d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1167463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3b9f1c0b43c941d536b04a177e4413a712cfd3c66f5823ee3691ef745c891d`

```dockerfile
```

-	Layers:
	-	`sha256:548d839a14fe2ca7828c4bed39eff96c9da7a66d697f2d708f9edf3d66a3c010`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 1.2 MB (1151675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b899dd03eb712db1dcc67fcc86e69cd15d6fb5c61bd21fda9e5d37f8486e1e0c`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c11707fed8fc36baa257509ddee6e1f339e5dc1925e9c6ab9256e7a90859007c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88720948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33766bd902152f6589fd59ba8ac61ef50bacc255f2ed8186898c6d88819f3086`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 22:10:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 21 Sep 2026 22:10:38 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:45 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:45 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:45 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090cebccf81accf2e95200898dcf5c31040cb8b81337e67edeaccd1cb9b6ed22`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0439ba2dd85468f4dd6d01176ea9e58be100350c0bce54e37a057c5becd0aa`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 2.6 MB (2633299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee89747a1681cd8663e9ee42fc1bf24ca2efd32d1451b3f9137e81d60f043cb`  
		Last Modified: Mon, 21 Sep 2026 22:11:02 GMT  
		Size: 81.9 MB (81900680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc992e601cbe1fd91b51bdd37b703db5bda888a0ce30e7ec81f93f114894577b`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:81bb6a5b0e69700bf6c93dcde552f5492a8a74992e2ded673ffb3cbf01750467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1162574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56124e6ac670d3a13f1834bbdd8f9836689035eaa5b1b8d174282f0366fd1697`

```dockerfile
```

-	Layers:
	-	`sha256:6749cbb1a69e974d4b0313fb6c3b38703f359b95aea0bb8f5416a3a89bc3517c`  
		Last Modified: Mon, 21 Sep 2026 22:11:00 GMT  
		Size: 1.1 MB (1146664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d9f0e566f6b46059281fee8380dd076d486706df29eea7b536e4f1794e7d46d`  
		Last Modified: Mon, 21 Sep 2026 22:10:59 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:90da3a5b81426230ed677f00823de0d55ce198ad7b5c2e099afc417ebc744642
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
$ docker pull telegraf@sha256:c80f3a417a48b27dcfd92114707c088913a1f7e24f06d9191b474e6ee6c2f838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180572853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2711454e94b6dbc2d2c5aa9d41be8ac807481f0ad2bbd93fe7bb199313e9b00`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:31 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:31 GMT
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
	-	`sha256:c2a628b3065c4626dc1dac2ee6e9f634e29f071e81c7d63aa7a1dba589fa8163`  
		Last Modified: Mon, 21 Sep 2026 22:10:50 GMT  
		Size: 19.3 MB (19284615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050572f7246aa44556a59a92d338e847ceae28ef7c989c985f597cb2fc8e3360`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6d6592bc30dc43c452c781c0f56a91afb8403343d7f7131754d7584f8fb5f9`  
		Last Modified: Mon, 21 Sep 2026 22:10:52 GMT  
		Size: 88.7 MB (88723009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13935813bb746bf40e87aeca006564245e3bb834dce903b3f68a0bff22dc1121`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:77e52da2dd659201c1b90507ef242b99e390a2f0bdfb5d5d143af40dc5100c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6144221c7767bf224e4f6a72793a33f49b20dd62019fb60ba5327cbace5fc38`

```dockerfile
```

-	Layers:
	-	`sha256:5dee121086ec7050beeeec8e08f2c929c4a01a30a2087a4c26eed2ddf4992ee5`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 6.7 MB (6691309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b154f3fe8b4083b2b07ac7b2dbaf0a17dc104142d5400b2c60694f877218492`  
		Last Modified: Mon, 21 Sep 2026 22:10:49 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:51875efa48b3c29101c64b3df141a83fba5a6be34d350eb00a2c54c29b96a409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166596135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1d1cd1779b3bcc9c4b45fbe2526f7e202aaf8ac3cf4da7f0b51419580d53f6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:11:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:11:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:11:02 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:11:02 GMT
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
	-	`sha256:39eee8cb088f20ece866f54371865dcd3ceeb8086a800fc6488dba8c70b0b948`  
		Last Modified: Mon, 21 Sep 2026 22:11:21 GMT  
		Size: 17.9 MB (17949820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ea36ffaa5d5f7aa416eaf88f0dd4335c61d1150368bf6984f917ac1b9e9900`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9796f6606693943eb326f51ce128108e804447ce4b10275b7e36d537c81b2e`  
		Last Modified: Mon, 21 Sep 2026 22:11:22 GMT  
		Size: 82.5 MB (82479340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed67ef952f3a403d8c8fb66911f69e6ba523af9363da1e9c2e29de3d286c005f`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:543907c6e9bc73b5f03c67eb66775f73f8ca0ddee005761f473203a99fdd3dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfde341961c5cab7397b0572cfe07bead6758f850ddf88f47a7c5c374a1a6235`

```dockerfile
```

-	Layers:
	-	`sha256:7109de704b8cf8cc2016caff85cd8cab08b2c612712698a52d76562ffb25b980`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 6.7 MB (6686719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d56ad07f9e1adeee3fe2f5e81527793a49985686f8c789e83645a3c6e923bc5b`  
		Last Modified: Mon, 21 Sep 2026 22:11:20 GMT  
		Size: 14.9 KB (14865 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:3d96cadeaeeba3b027f6a58e262e0076b42e6e3b5dfd616054e6efd1c168c08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170451200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc442660dad5dfdc2b55ccd917158d66bf01a991ad9a8a9afbccf9139494209`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:06 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 22:10:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
ENV TELEGRAF_VERSION=1.40.1
# Mon, 21 Sep 2026 22:10:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 21 Sep 2026 22:10:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 21 Sep 2026 22:10:10 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 21 Sep 2026 22:10:10 GMT
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
	-	`sha256:bcf208331b80aac46c2a3a543e91f22114cea815e5fd03a6f55d458ad28f480c`  
		Last Modified: Mon, 21 Sep 2026 22:10:29 GMT  
		Size: 19.2 MB (19194874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a00f1ed5f5da38c148e11cf269fdaec4bda5b9f06c8a8b0f3309cdb226d1d7d`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b440ef37a369b0a5795be5cafab5a56c58f6c41f9f11527448bae40d6c8fa5cf`  
		Last Modified: Mon, 21 Sep 2026 22:10:30 GMT  
		Size: 79.2 MB (79232997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b1e60a657189b8331ede57f41dc91ca5ce7b727af2cf6c89dc59a855a6fcec`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 640.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:be41412aaa9e6deb304f3351988c5d759d4ea773b348b427c6eb1ea2bf81421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb797f81983552bcf3462fe495620f004bb5c11abb2bba9cadce382543744025`

```dockerfile
```

-	Layers:
	-	`sha256:fd0f06a579969cc78a263ef32b87d1d6a45642b56f559c1256e89bbe1234e634`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 6.7 MB (6691997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b69ae06cd4b00e517cf20ab564eaff91ab53d85a1abdf2855dfaa7473b0f65d6`  
		Last Modified: Mon, 21 Sep 2026 22:10:28 GMT  
		Size: 14.9 KB (14891 bytes)  
		MIME: application/vnd.in-toto+json
