## `golang:tip`

```console
$ docker pull golang@sha256:6fd8d21bafe03d54bcc626bf1c6ad38606e1794bfbfc0b300feffced64f90034
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip` - linux; amd64

```console
$ docker pull golang@sha256:96084bb9365f7f620af7dea070edabeb0a84a50c77cfc77cdb7c8dbb985b7cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.7 MB (349720725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea80c959d17abb3f0bdda15a615928a7d05fc0fe97275d2a30db894efdf6554`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 00:55:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:57:04 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:04 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:04 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccb29d6fa826230d54dc66f04f922364d6ae630e697814e4924c6c18fcaae28`  
		Last Modified: Tue, 03 Nov 2026 00:57:35 GMT  
		Size: 102.5 MB (102469854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd35beab66f9320765c5f7a2a506372f5a6410782483671acaa1e1af5f461ae7`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 104.4 MB (104389658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9e7f2716b6aae3333b2190fbca14f21f2170e8376879512bf3455589aa1427e`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:c2896f0a0374e3f89e25ebdaac517b395f71eb7adc7bbe75ac4ce031da527476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9eee3955fd0ad022b7c391114425be0b29dcb1528e3197965429274308a2b1`

```dockerfile
```

-	Layers:
	-	`sha256:3f78f16496296aac60171f07703d88b8c53be48bc7a80484f7444b1b80cade23`  
		Last Modified: Tue, 03 Nov 2026 00:57:33 GMT  
		Size: 10.8 MB (10795463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeb78321230e9b347ab3e46b3465bd55038c315f2bcd96fa4ac5cb2457fa967a`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm variant v7

```console
$ docker pull golang@sha256:74defb5bdf2261d76e61b7c704064b47e1d1c335b0d1ae2ac73423a2c28d030a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.7 MB (305697504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d199e27ba5a6bc053fcbf00cddcb5818d7b4e089627ad99e0b114cc9b811c024`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 00:55:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:57:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:28 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:28 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1c0c7b220c9feb691744bd05f84ba55525499337ec4765cb6cddb293d793f`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 23.6 MB (23636373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0126d5d4fff102f74230092157c786fe380675192253be404b15787941f55b`  
		Last Modified: Wed, 28 Oct 2026 03:47:33 GMT  
		Size: 62.8 MB (62760118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d37f8ffb1a8815569da9c5cd98588321da71d3171f8683647733cfdad79a3e`  
		Last Modified: Tue, 03 Nov 2026 00:57:57 GMT  
		Size: 73.1 MB (73115289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7321bc2c634c84fcec56f141b2c3d8e988dc683cfc89c801cc80bc7a7da0`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 100.4 MB (100356186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acc24b0566873590aa06a51848a820a9d32492f3e4c136f22dd4eaed0705997`  
		Last Modified: Tue, 03 Nov 2026 00:57:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:d4cc67558911528bd3b277190a7c0357c8a9be3b6336c476ed5f0de3265e03fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c28b55c298fa902feeb64a8c10f954925b1485fb88e4c386fb2dd2f00de5a8c`

```dockerfile
```

-	Layers:
	-	`sha256:4a5b1527582b70c83555687edf59770efbb2c50a46feeaf67b2ea91675e42183`  
		Last Modified: Tue, 03 Nov 2026 00:57:55 GMT  
		Size: 10.6 MB (10591351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:922d50797278004e8a79663eb08aa60bf7581384dcc530d50627977764411eec`  
		Last Modified: Tue, 03 Nov 2026 00:57:55 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:51127cca19961c5afe25bf23b63504c3dc93296891d0792559f2ff90bb853a20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.9 MB (339936436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3395abec078875a2cbda6aed3799712afebfa5d134ee7369add50bcafd7e20`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 00:55:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:56:50 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:56:50 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:56:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:56:50 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:56:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:56:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2728fdba074fe80cd0a2033f157ce21c0bb2e04325dfd6710519d3640133426`  
		Last Modified: Tue, 03 Nov 2026 00:57:20 GMT  
		Size: 98.6 MB (98617987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02be16c5cc8cd90f80fa09f773930298fc4772e6eecff5f27de48d2f357cf4`  
		Last Modified: Tue, 03 Nov 2026 00:57:12 GMT  
		Size: 98.9 MB (98870589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fcaf1007fb3f08a601762f8987329817aab667ad59fffc03892dd22c0a7ea9`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:0371d18baf456dea74f97d91b42536d76926f4e1e57c25f8947767ed641da7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10944118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e574eafca93fb399a0e8bf4ace12af66bd2435f10c441b73c6c15b94ca620251`

```dockerfile
```

-	Layers:
	-	`sha256:90b1eb57884cc577a44e01f71b9fa9d18aec09f47f3c4d384cfad8ac327378cc`  
		Last Modified: Tue, 03 Nov 2026 00:57:18 GMT  
		Size: 10.9 MB (10915282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b645d983c0b5587fa9cdb04c02369baee1213035eb3a0d0290d0064871908ea`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; 386

```console
$ docker pull golang@sha256:21aeef282bb7897e882371186d3968bb0d0fbe9dca2c8f92f9b97447dc147dbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350720095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e01dc6c77725b191658d06389c53a668995e0750e1ff1ddabb6d6448a44870`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 00:56:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:57:22 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:22 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:22 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62933a21b583195e4f59a0ffcfb66f567701192ffacb0e69c5e6b700655a5147`  
		Last Modified: Wed, 28 Oct 2026 01:43:19 GMT  
		Size: 26.8 MB (26799499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4462378acf938c7c0307009b8bfe3cf23a2b4953f37ac5df637e8266f3ac56`  
		Last Modified: Wed, 28 Oct 2026 02:28:54 GMT  
		Size: 69.9 MB (69857152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4daf825d2004740af5f2e97c97e3fd2489b1c852b719b77612b68a54f441b7f`  
		Last Modified: Tue, 03 Nov 2026 00:57:50 GMT  
		Size: 100.9 MB (100915780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd75b5188259c9b268ed753f81ba2e38b1d9d992be8e9e3b374fc45933b99770`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 102.2 MB (102225938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91baabbd7774b301920558eeb85d22408fa493239350a051eacbd14319afb6ce`  
		Last Modified: Tue, 03 Nov 2026 00:57:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:22d925827b6bc8eb1a76d716317e6f3d7976255c31cd4e96fe8bc3ac98c60bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10795367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4238af01663f36010daa23bd16c2bac31b53d3c0817e13bf5989109b9381624c`

```dockerfile
```

-	Layers:
	-	`sha256:0785ed57a7e8614f23f2544fbe27894165fbc3495f824cb3eb77fc81b68d3169`  
		Last Modified: Tue, 03 Nov 2026 00:57:48 GMT  
		Size: 10.8 MB (10766725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb71ea37522703dfbb7259c810ad15439e24aa2f538a5f97b8a3e7ac22dff440`  
		Last Modified: Tue, 03 Nov 2026 00:57:48 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; ppc64le

```console
$ docker pull golang@sha256:7af21c86c791d92772ceaa1c79a8c3dc16fe707b236f34b3c4a4d92a2597a919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.3 MB (348300617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3b1cec06d6725122cd1d66d736b86fe8f9391b469560473013087056db20e2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:08:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 20:27:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 20:27:25 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 17:26:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 17:26:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029f022c1e8c3f1f07de7966f8065467f470e5d402044125c40d71809d55ea27`  
		Last Modified: Wed, 28 Oct 2026 15:09:54 GMT  
		Size: 93.1 MB (93148401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8ca9ca011184d58c037e97d28044484ea497a6cca757182d4969f97cb5945d`  
		Last Modified: Tue, 27 Oct 2026 20:29:29 GMT  
		Size: 101.8 MB (101813407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4170de99125e06e768df13b35d657e3499780a5ffa896f9d7bd7b7a5a499675`  
		Last Modified: Wed, 28 Oct 2026 17:26:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:e26a1f99995099972bc009529f5b6b1ad7e6bdcee5a21a95d084b2b7f8ee36c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820b7361e3d330e9803b0fe9888b9dd23b5adb11fd2142cab44baff916b25935`

```dockerfile
```

-	Layers:
	-	`sha256:c47f87eb8ffb1144af338e8f815d28b2a418ee43cdd67cc29914e2f009ae50be`  
		Last Modified: Wed, 28 Oct 2026 17:26:54 GMT  
		Size: 10.8 MB (10791252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6d17c5358c9ca49d1c5cdd2388a4e344ac64b82e7a1e735e538046f99846246`  
		Last Modified: Wed, 28 Oct 2026 17:26:54 GMT  
		Size: 28.7 KB (28737 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; riscv64

```console
$ docker pull golang@sha256:291d2343ced3718275e82e2797d0e05e3988366a2e32fc3d773a05b6b3bd3ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.6 MB (373578543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ff6f43b0bd953382687c14745ff8e85e6202ffb000637d226188bb4dc84311`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 07:44:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:33:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:33:03 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:33:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:33:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cd477161cdd2b30ec371c89dc566cb5623e15556c206ab4af7a6ab7a2f9b06`  
		Last Modified: Sat, 10 Oct 2026 08:07:54 GMT  
		Size: 131.9 MB (131885721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8abfccbebb6990984afc48a50bcd0c4168b9e37a31b0d6473e7418e677a2de`  
		Last Modified: Mon, 19 Oct 2026 18:40:49 GMT  
		Size: 102.1 MB (102138235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b06b8b9cbfab93478323434c945a4446f577027e6b2b51040488dc14e871a6`  
		Last Modified: Mon, 19 Oct 2026 18:40:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:42335941ae0a724e75e2e642dd635d549518ba0e9a0c3918ff0626eb70d750dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec32eea37ba8a716e98876f44be84b690b0c2ed8119d84eb5355101bc678c08`

```dockerfile
```

-	Layers:
	-	`sha256:c022b8c9aa1d5803066886d7e355c9618528c0846c7da683e42240b245962234`  
		Last Modified: Tue, 20 Oct 2026 03:56:43 GMT  
		Size: 10.9 MB (10867136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe072a0dd737f695db882a5e452419109a8b01779f7ca9776972444ad154fed`  
		Last Modified: Tue, 20 Oct 2026 03:56:42 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; s390x

```console
$ docker pull golang@sha256:f6c442830d46359326b03a36531b29118e95b3331d277d60fd45bee341fea43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.3 MB (324282131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc8f735be1d14278ce6cf4a2ba6fdb7014f9420157903df86dbe2f64883bb4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 01:01:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 01:03:27 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:03:27 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:03:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:03:27 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 01:03:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 01:03:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2250e610e1393c26b6c89de550932ab3d31129c6532b4cf00f5c62c0d6bda7d2`  
		Last Modified: Wed, 28 Oct 2026 00:10:37 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ee5e1f1d6256810cb42c0392efc9c686df4046ca11a10101e09b70baca67e9`  
		Last Modified: Wed, 28 Oct 2026 02:43:16 GMT  
		Size: 26.8 MB (26811804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdbcc8858cde6193263947c31b5152380d626a1b64ea15511915cf0be7d9cec`  
		Last Modified: Wed, 28 Oct 2026 04:12:36 GMT  
		Size: 68.7 MB (68663295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a9720b399f53fcb17ef20506e068759bf0030b428ce646a37f424ed4ecd0fd`  
		Last Modified: Tue, 03 Nov 2026 01:04:11 GMT  
		Size: 76.3 MB (76282172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ce80c322577cbabbedd50927ea6355481abc36458b7d6b30272314b5201096`  
		Last Modified: Tue, 03 Nov 2026 01:04:12 GMT  
		Size: 103.0 MB (103048871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90d844274cc6b3f036d00d49fb9858fd571d8818c5cc49fb05fbbee4b29884d`  
		Last Modified: Tue, 03 Nov 2026 01:04:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:70ca4f39d12e2f2d9a4a62d44dced8a970a4fc7d0328a3b5e1b609346d7fad76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10634542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfec50f93824928ec94bd3753ea285b8d4b6bb08ff97338bd8a6dd89a5c4475a`

```dockerfile
```

-	Layers:
	-	`sha256:cbde4cc7602f9b3e904a45ad5044e4bdf1aab1fbc080f42d13410fd51f45af81`  
		Last Modified: Tue, 03 Nov 2026 01:04:09 GMT  
		Size: 10.6 MB (10605862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:881d875758d7010f8070f1b3fa159835984fce3cda921a68db40f611b9ade15b`  
		Last Modified: Tue, 03 Nov 2026 01:04:09 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
