## `golang:1-trixie`

```console
$ docker pull golang@sha256:b75d466dd608587fd66cca705a307ba65b889827d06ad61d6a75f0482b51b7c7
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

### `golang:1-trixie` - linux; amd64

```console
$ docker pull golang@sha256:23fdfd3a6abc97c81e32a724cdd1cf541c06c416eb04d717815f4ed7c75623d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312379552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5292399bf6a38fc193b48db61ae1e5672e504d784e1faedb8d2869d99e372e96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 19:34:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:34:04 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:34:04 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:34:04 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:34:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:04 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:34:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:34:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2704c1c1ebccac0f7752e05445879d1b098e66577acb33e485c4f6173bdb44`  
		Last Modified: Thu, 13 Aug 2026 19:34:38 GMT  
		Size: 102.3 MB (102321973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa55d8c7975bdc26e118c1a6e8ee122aea1e654a365c1d6f7b48658c58be2e18`  
		Last Modified: Thu, 13 Aug 2026 19:34:24 GMT  
		Size: 67.3 MB (67308470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf265a321f31d8032e3b21ea032da3829f60e895453d911645033edcec66ca4`  
		Last Modified: Thu, 13 Aug 2026 19:34:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:55880afc349778d217a630e4769b81f6c35bd4692acc8d47dc3da6c802b3913f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10815865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670ffbf227fb53b94bfd8248f478e774889d5a1927bc002e2e80eac244b0f339`

```dockerfile
```

-	Layers:
	-	`sha256:1e47f934288ac173c876af83077c43dc4b4edbb56bea87c2e2d2c6fd0b0325ae`  
		Last Modified: Thu, 13 Aug 2026 19:34:37 GMT  
		Size: 10.8 MB (10787487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88a5da2864b57597ac45f5cedfc60ed9559ae0297512edf86f8d68a09be24238`  
		Last Modified: Thu, 13 Aug 2026 19:34:36 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:dfdb5409ade09583ca83b964efe7112cc623062ea6be1e2fa4d72118a2864f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270947722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2575987af9d02349ac5d9a514a4295dc96527e701c0acfcb4df984203c535e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 19:57:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:56:59 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:56:59 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:56:59 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:56:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:56:59 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:57:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:57:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0dd361d89842d87704123c0af11b4564310574a6d57fefd0e2be36925c3d8d`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 23.6 MB (23636453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb135e1760d1271aea3209c73b2b3ca0ea7f9cfde6d547d3d7e708701db7379`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 62.8 MB (62757963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb4a02f7b2f951146f686b355bfcaa4549f2c261ffefe2e79a911eeb0493fc1`  
		Last Modified: Thu, 13 Aug 2026 19:57:30 GMT  
		Size: 73.0 MB (72965883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d33eb168b57114b4010647a3b9fa78f09a5c12dfda7910e365550d281e862ef`  
		Last Modified: Thu, 13 Aug 2026 19:57:19 GMT  
		Size: 65.8 MB (65843890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645548daa41dfccef894dcd8d2e8279d29321ae25d7699c16bb924086681d3aa`  
		Last Modified: Thu, 13 Aug 2026 19:57:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:000af0f8ad2b50cea5a20cfbbc333da786ee0bb7e40aa3f24fa8b1d7572c7fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10611918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b039d9402de18c29050de7afcfe35af10347f00910715fb5ae5812a9329f34`

```dockerfile
```

-	Layers:
	-	`sha256:db9381dfe8f663189c20bd8a74eb5c838af18f2950fa7d5bdf65e83064caefb2`  
		Last Modified: Thu, 13 Aug 2026 19:57:28 GMT  
		Size: 10.6 MB (10583406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d81962fc08b31b96baeabd0ec7e7c8a48e72026d404e0e1d6412ef785e226dd`  
		Last Modified: Thu, 13 Aug 2026 19:57:28 GMT  
		Size: 28.5 KB (28512 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a0c0dd6888e2a1df54a00fcafe855e3035dcf9b5733cdf803d6ccf70a56df809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (304988623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2800d2462133330700c1a6a4689aa17c4bf642d91767aea655d62b1e6abc1833`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 19:34:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:34:04 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:34:04 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:34:04 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:34:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:04 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:34:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:34:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1dc9c1004cc2498b397dc3cdd326816194b2cdf1122f4ffbe3f11001a0f4a8`  
		Last Modified: Thu, 13 Aug 2026 19:34:39 GMT  
		Size: 98.5 MB (98466734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22db0ab2cdc67a637151bb7560ea06e6cc39a231b4459d38ff34fc6471ea35b1`  
		Last Modified: Thu, 13 Aug 2026 19:34:27 GMT  
		Size: 64.2 MB (64220829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a447557a0de675452b1943d80bd8c2580fc1b30e09c6a7458678f9c2e021788`  
		Last Modified: Thu, 13 Aug 2026 19:34:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:fb92e33995e367d220b55778c5719dc6cca97413dd4d0b9fe1326a1ed7d0d06d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10935908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad513b85ee4fbea05747a6b41a1f160b2a152d48c6acfbbf287aaac97a7d678`

```dockerfile
```

-	Layers:
	-	`sha256:de8f21990a209e48c29cde30025a264de8b8d1b7e66be26c5ad706b9fc07123d`  
		Last Modified: Thu, 13 Aug 2026 19:34:37 GMT  
		Size: 10.9 MB (10907353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56bc443fb7e364b9b3e27dd392572042b7158c0b4a6190b1b909e8cd362a7268`  
		Last Modified: Thu, 13 Aug 2026 19:34:36 GMT  
		Size: 28.6 KB (28555 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; 386

```console
$ docker pull golang@sha256:8a1f258bf9be9461ec2fdf9f5887dde307db7988ffba91468b2f5859ce613985
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313881327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b5f2c4ab6abe51657991826dd51d2b7803fb7218de081c080e1c906273fe1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 19:33:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:33:33 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:33:33 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:33:33 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:33:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:33:33 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:33:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:33:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f34fbe13383f04539c7849f0cc79bc728d4e964e24cda9b947d4784426bd636`  
		Last Modified: Wed, 05 Aug 2026 00:47:13 GMT  
		Size: 26.8 MB (26800384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a3ec548455cf061e33066b297b3d6422e0f3a9b061c1f92a46c05e3687aee2`  
		Last Modified: Wed, 05 Aug 2026 01:41:30 GMT  
		Size: 69.8 MB (69839732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd158ba955b48e5354be1aa32a6d2f49c9e57f7bfe4890206e299f02125e2a6a`  
		Last Modified: Thu, 13 Aug 2026 19:34:07 GMT  
		Size: 100.8 MB (100764665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009a0fff13fa32a5f6ee42bf65e9cb7a991649e1034836cd8bc0389d8248d5a8`  
		Last Modified: Thu, 13 Aug 2026 19:33:52 GMT  
		Size: 65.6 MB (65645219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16734d4e5a9b684191471bf54588b2d6f44b157d5edaad6a1954f6cdae9eb6b`  
		Last Modified: Thu, 13 Aug 2026 19:34:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:211bcb5be67984b18f8d246b72bfd9331d5ff48cf39dffa5c584f7f78d886bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10787052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e126d989e0d38d8559aeb8980cba16616f73247793c4f0ba4dd2cf7436392298`

```dockerfile
```

-	Layers:
	-	`sha256:f11a3f5294fe34d9aee56e9675b3eeb64fe42fe36ee6cc62935be52e90ecac5c`  
		Last Modified: Thu, 13 Aug 2026 19:34:04 GMT  
		Size: 10.8 MB (10758730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b3a99b8407f2b4fd92c5bf9d714899e1abad6401ca147f621a40ce0151599c8`  
		Last Modified: Thu, 13 Aug 2026 19:34:04 GMT  
		Size: 28.3 KB (28322 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:55db9011c3abad6078309223371ca2eef4e5148c0b89bc1a37d117283f98cee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.1 MB (311141586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4caecaae6396bf937273472aeaf1b3daccee23dcd64d58dfb81bd36f1cc23b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:58:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 11:42:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:58:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:58:17 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:58:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:58:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3e6efa722094ba9a2c33899d007294d906fe7730bc19901e78bf43c969f32`  
		Last Modified: Wed, 05 Aug 2026 05:26:21 GMT  
		Size: 27.0 MB (27021100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c136ff5d1eed42b29e608b2fa6073b2ec631c910e2ba490e022e4d31f4ae2f`  
		Last Modified: Wed, 05 Aug 2026 08:58:54 GMT  
		Size: 73.1 MB (73074780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3f0f5b402dece7615c4ffda3cb1eef1790a5091c1011cb7ca95d9143ba521a`  
		Last Modified: Wed, 05 Aug 2026 11:43:23 GMT  
		Size: 93.0 MB (93012725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93dea1b66b9ab0862f63f7f6e84e84e54260cb687dc6a97b51c0c6a11c8af6d3`  
		Last Modified: Thu, 13 Aug 2026 19:59:12 GMT  
		Size: 64.9 MB (64899217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910f92d31a35f9440c74a4e0d109dc1bdb30ffab62cd95115841bd4349a73b60`  
		Last Modified: Thu, 13 Aug 2026 19:59:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3a515bf225afcd0d9b05eb50799334d3c793e07b7ac2ba6bce21e0c2bff519ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10811745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e89fd42aafca86dea20e0555030ea7ce4b34105f5a0667d01f45d90f7ba0f67`

```dockerfile
```

-	Layers:
	-	`sha256:4f8f055a8f19902f09fcadf6bc884b1bd3adb4223ae912291f7c9cbacb7d26af`  
		Last Modified: Thu, 13 Aug 2026 19:59:11 GMT  
		Size: 10.8 MB (10783299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efa9b81af891b8aa94ef3a0db1adb93758c5be20b7b550f4b9264e47e369d083`  
		Last Modified: Thu, 13 Aug 2026 19:59:10 GMT  
		Size: 28.4 KB (28446 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:6fbb85cfc50c2c0f23da691624aeb526178e7a3b04771fdebeef010bf7a9a92b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336467104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d5949781f3a42bc49705a7ee096f1b0e79401a9aebbcf804683ec4be6be664`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:44:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 12 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 04:47:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOLANG_VERSION=1.26.6
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOTOOLCHAIN=local
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOPATH=/go
# Sun, 16 Aug 2026 13:10:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 16 Aug 2026 13:10:32 GMT
COPY /target/ / # buildkit
# Sun, 16 Aug 2026 13:10:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sun, 16 Aug 2026 13:10:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7e2cce4c4a850aec1e4a483b50128246f3126dfd2358f0bcea094e0a9777c25b`  
		Last Modified: Wed, 05 Aug 2026 00:56:00 GMT  
		Size: 47.8 MB (47797481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1945d0945ecd590a3ceb924cca41cd29af5c2598b2fddd7323957355ada24075`  
		Last Modified: Thu, 06 Aug 2026 19:46:15 GMT  
		Size: 25.0 MB (24969684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b352e09933f4b05efde7aceb0834e303817d62f09bb339866d97e70454a5d8ef`  
		Last Modified: Wed, 12 Aug 2026 00:20:31 GMT  
		Size: 66.7 MB (66693765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d13e13b96042538ec41e84b5186c55bc7c6722f6fe6fe060b1ad00de9a27909`  
		Last Modified: Thu, 13 Aug 2026 04:55:36 GMT  
		Size: 131.8 MB (131807836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fada23dcc74335031cc183991f6dad7a6e2d29631642294a03560b8c7a02131e`  
		Last Modified: Sun, 16 Aug 2026 13:17:06 GMT  
		Size: 65.2 MB (65198183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd51e7256b1b291213b9bfcedd7d3531db7578b7a5c5c3306fb3ba9b1a5be2e5`  
		Last Modified: Sun, 16 Aug 2026 13:16:55 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:c7cd2a63e54ff7e69b13ea64d680ab19b66d8c119b0d14b31cfc0fadc4f9db0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10885582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3eafd014f8d0b8c6a0e315b9038e108f0d97e062dfa53ac454d166fa1b5ebd5`

```dockerfile
```

-	Layers:
	-	`sha256:9b318930f9e11d28b9672c72cc9408db80fd515ea1808447356e168c5e7e3e79`  
		Last Modified: Sun, 16 Aug 2026 13:16:57 GMT  
		Size: 10.9 MB (10857132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc03b5b38b521b397ce32cc8e58f96e6c32d2a6bf2494311d447b8b8e32a8a85`  
		Last Modified: Sun, 16 Aug 2026 13:16:54 GMT  
		Size: 28.4 KB (28450 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; s390x

```console
$ docker pull golang@sha256:b5c1b713c9c5de63ed2fcf3766bb21427f16a299d8e6c14f0b701afa79e840c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287529480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa94d838e0ef2bce1673c5e733631ea899fe4b5e42046f34051beeefe3d6358`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:42:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:57:09 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:57:09 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:57:09 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:57:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:57:09 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:57:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:57:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b239a9d975f9d9fa57e1220f0c69c47026f4fbd5094809de5f822f2097b9c`  
		Last Modified: Wed, 05 Aug 2026 01:08:39 GMT  
		Size: 26.8 MB (26804560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e84d63eaa6137e87f6d73d15defc7c8e1c5f48351989da2ae83463f41f98de2`  
		Last Modified: Wed, 05 Aug 2026 02:03:58 GMT  
		Size: 68.6 MB (68648013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f1467200a6d0b769a7af7bb69faf55f0ddc257b1c2f12914659a3b60aae5f1`  
		Last Modified: Wed, 05 Aug 2026 02:42:53 GMT  
		Size: 76.1 MB (76118219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb1f8b0dfbbe22ef84f2cb6e17624b40a7d50245301261dd5792762e808da02`  
		Last Modified: Thu, 13 Aug 2026 19:58:50 GMT  
		Size: 66.6 MB (66577104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d289265e1fdd408475061e78d79fc68f608bceca7bebd95f4a0eecc77e5cc`  
		Last Modified: Thu, 13 Aug 2026 19:57:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:23d05f2ad58539980a07d21ff478293efb9d9796cc6dd764da2df40f85aa6b4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10626261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffa57d8455d5f019a51098d0c0d4778b46faec85eba25db7ed4d21d739e1e697`

```dockerfile
```

-	Layers:
	-	`sha256:fa6a20558690538685a8d5296ad10ddc0ff432b1c9f6a369e3a9cda1bb9c7c48`  
		Last Modified: Thu, 13 Aug 2026 19:58:47 GMT  
		Size: 10.6 MB (10597887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3497ae855288733dd841666e2e71c6e4c71c6b1834578cc050b54ad4733dd87a`  
		Last Modified: Thu, 13 Aug 2026 19:58:45 GMT  
		Size: 28.4 KB (28374 bytes)  
		MIME: application/vnd.in-toto+json
