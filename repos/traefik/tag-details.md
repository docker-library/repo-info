<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7-alpine`](#traefik17-alpine)
-	[`traefik:1.7-windowsservercore-1809`](#traefik17-windowsservercore-1809)
-	[`traefik:1.7.34`](#traefik1734)
-	[`traefik:1.7.34-alpine`](#traefik1734-alpine)
-	[`traefik:1.7.34-windowsservercore-1809`](#traefik1734-windowsservercore-1809)
-	[`traefik:2.9`](#traefik29)
-	[`traefik:2.9-windowsservercore-1809`](#traefik29-windowsservercore-1809)
-	[`traefik:2.9.6`](#traefik296)
-	[`traefik:2.9.6-windowsservercore-1809`](#traefik296-windowsservercore-1809)
-	[`traefik:3.0`](#traefik30)
-	[`traefik:3.0-windowsservercore-1809`](#traefik30-windowsservercore-1809)
-	[`traefik:3.0.0-beta2`](#traefik300-beta2)
-	[`traefik:3.0.0-beta2-windowsservercore-1809`](#traefik300-beta2-windowsservercore-1809)
-	[`traefik:banon`](#traefikbanon)
-	[`traefik:banon-windowsservercore-1809`](#traefikbanon-windowsservercore-1809)
-	[`traefik:beaufort`](#traefikbeaufort)
-	[`traefik:beaufort-windowsservercore-1809`](#traefikbeaufort-windowsservercore-1809)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:maroilles`](#traefikmaroilles)
-	[`traefik:maroilles-alpine`](#traefikmaroilles-alpine)
-	[`traefik:maroilles-windowsservercore-1809`](#traefikmaroilles-windowsservercore-1809)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-windowsservercore-1809`](#traefikv17-windowsservercore-1809)
-	[`traefik:v1.7.34`](#traefikv1734)
-	[`traefik:v1.7.34-alpine`](#traefikv1734-alpine)
-	[`traefik:v1.7.34-windowsservercore-1809`](#traefikv1734-windowsservercore-1809)
-	[`traefik:v2.9`](#traefikv29)
-	[`traefik:v2.9-windowsservercore-1809`](#traefikv29-windowsservercore-1809)
-	[`traefik:v2.9.6`](#traefikv296)
-	[`traefik:v2.9.6-windowsservercore-1809`](#traefikv296-windowsservercore-1809)
-	[`traefik:v3.0`](#traefikv30)
-	[`traefik:v3.0-windowsservercore-1809`](#traefikv30-windowsservercore-1809)
-	[`traefik:v3.0.0-beta2`](#traefikv300-beta2)
-	[`traefik:v3.0.0-beta2-windowsservercore-1809`](#traefikv300-beta2-windowsservercore-1809)
-	[`traefik:windowsservercore-1809`](#traefikwindowsservercore-1809)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:3a46f4e724ac467d9e3955792bba4327e17fa2e9e1fed93f13b85fd45b71816a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:9248f7f17d44a02872613d652aff91856f928ebc400d037cd3439731da4cecbb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22605595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd394242b858ec3a77eec6506ea614377091f1904f704d3412983c1be8c0cd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Oct 2022 04:21:33 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 07 Oct 2022 04:21:34 GMT
COPY dir:c3f72545af4f290c8fc0a43693ea3334451b85d0dee09c519eb983a71a5a38fa in /usr/share/ 
# Fri, 07 Oct 2022 04:21:35 GMT
COPY file:36217e5a6056bef26cfff395c8af8c1010a61dbe8d62b2c7869ca221e2a6302c in / 
# Fri, 07 Oct 2022 04:21:35 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:35 GMT
VOLUME [/tmp]
# Fri, 07 Oct 2022 04:21:35 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Oct 2022 04:21:35 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:39006e619508cd8a1ace2dcb57ecaa3a206fc01c9b72018e30b538ba58b0f45a`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 123.5 KB (123540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79c7609bd35acb6baeec95c0534de9f28c053bb3b54b53c4831b70e4a2b6e2`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 320.1 KB (320103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b58027c881a56cde12f5ad6ba79f399d338b083423a96ae8fdb32a53f55af9`  
		Last Modified: Fri, 07 Oct 2022 04:22:44 GMT  
		Size: 22.2 MB (22161952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ed51daf51f75bf5735027eed93829bc2ddc8cab5f7d2c92661e9ae240a812647
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21055568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35629440895fbdc6144fd69e6ddccee4de8aa7785af39e4804683304ac4f2df1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 28 Oct 2022 00:15:28 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:59:12 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:59:13 GMT
COPY file:5d1e7e81e8b77b4f8828eeaf0d30a0f135a949b51396f12ae22af376c36d3129 in / 
# Fri, 11 Nov 2022 11:59:14 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:14 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:59:14 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:59:14 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:93432fb5c46fdb5c83e424ff85db4e06a08e5ac2ec96ce9e11f1c60f5a86d29b`  
		Last Modified: Fri, 28 Oct 2022 00:17:20 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0efdacb2b2ba042055ea537001460b2cff92ff305869705801b66bc44dc8565`  
		Last Modified: Fri, 11 Nov 2022 12:01:04 GMT  
		Size: 308.7 KB (308749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849ebe6d2d943e776e37535f360e7b0f3745d625ee69f6ee5fe1eecee5487ce1`  
		Last Modified: Fri, 11 Nov 2022 12:01:08 GMT  
		Size: 20.6 MB (20623281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ac5b287132e97dc27bbd96791a25701e051ddce973d6ee70eda1c87138e3c299
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20563697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5da1bea8e1a3e20b83ceca6e486a1e881451b1e304a0281d936d5e51f418d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Oct 2022 23:00:59 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:00:57 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:00:58 GMT
COPY file:60330593b6644f3f519fd13ce8ee34c2c7ab9994a1420afabbc01926dd1230dd in / 
# Fri, 11 Nov 2022 11:00:58 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:58 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:00:58 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:00:58 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:384a668e636c3a58c260d7eacd140f07b0727673d5ba128334cbcedd184a99f2`  
		Last Modified: Thu, 27 Oct 2022 23:02:00 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3f6a6b590d30fda524213974a86d6ca01981b3ab4154a359b9c2e3fa3262c6`  
		Last Modified: Fri, 11 Nov 2022 11:02:04 GMT  
		Size: 308.8 KB (308813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af8a7d805d81cf74f58f3793659f76132259201bea15bbb7a0edc6191f8edfa`  
		Last Modified: Fri, 11 Nov 2022 11:02:07 GMT  
		Size: 20.1 MB (20131346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:f50efd68ddcb8b1b8ad030fcf1011fa6a2b42412e1339b6fe2731e73eb1db963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:26fa7cd56b81852ea9f61e45df0913aab21313dc3ceeab8a893916893b533054
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25662747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d7c99e10d8ab1a83a9b8ae9755e9912e39a2a9e52da6ce6de8defc71809bd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:23 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 07 Oct 2022 04:21:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Oct 2022 04:21:27 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 07 Oct 2022 04:21:27 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Oct 2022 04:21:28 GMT
CMD ["traefik"]
# Fri, 07 Oct 2022 04:21:28 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02345b26a3d377d58f815ff68ead6a7dd73b699f6c32431c8d20e8f089729c37`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 672.8 KB (672839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb3d96d801ee542c140b3c61969835a610feec705ca8958b056cca584fce66`  
		Last Modified: Fri, 07 Oct 2022 04:22:23 GMT  
		Size: 22.2 MB (22162052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4889541507d1292f1cc22ab716fe900b3cf01a14362a5fe85f91fbf67a75cee`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:0ae1b77619decee480ac73c5643f221285808044b307298c32c3d6c8bad3e184
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23925564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636cce97efeea9b6e6cae06ecc42e060b6488713c0b64e8a4754f9e7439ba766`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:55 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:59:00 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:59:01 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:59:01 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:59:01 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:59:01 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33435e7e7c652bea7ffaf83b027d129ebd3d136e11e2469998ccbc32288c98fa`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 666.3 KB (666268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38a2c13dc82440cb92fa776a94c406c832435459441a480e7bf60df1e0baed`  
		Last Modified: Fri, 11 Nov 2022 12:00:43 GMT  
		Size: 20.6 MB (20623430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed31ebc6a3ec75add73f53bf95dd91c31a2bbdadfbf38a7b44c7b57f8fb9f8a`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:64b63c53bbf8a021857ee49412ff72501a52a4e821ffd1f3a17f213562a55dcf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23517049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adbabdcf54e3ae316f53747af91e16d550dfdfc9afaa2e19f9d4f61a1ab2759`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:45 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:00:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:00:51 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:00:51 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:00:51 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:00:51 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef289adf2cbb3f8d157193bbfd586faaa288d6dd23845f0db17b7c041df2ef`  
		Last Modified: Fri, 11 Nov 2022 11:01:45 GMT  
		Size: 663.1 KB (663148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7297d487dbad0e6a3001add15c558d8305d106c11a0f1d1572e3b8cb8c221`  
		Last Modified: Fri, 11 Nov 2022 11:01:47 GMT  
		Size: 20.1 MB (20131380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238986be5500952726a82d7ee40ae56ba3acfe2c8512f680e8c1e764ba05184b`  
		Last Modified: Fri, 11 Nov 2022 11:01:44 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-windowsservercore-1809`

```console
$ docker pull traefik@sha256:f8223de1afb5c0d3c84ac73737d280550d6c118d326dda320af3d6c84a1cc42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:1.7-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:608c9a5abd6dcd8831958380ec03bf2b6d756d151ff8bef7c387ff157223a3c5
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1730802068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789e7cee983ab7e7e598355f69c9db141fd644d2e5c467b9d49f0750c561a887`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:11:17 GMT
RUN Invoke-WebRequest     -Uri "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_windows-amd64.exe"     -OutFile "/traefik.exe"
# Thu, 12 Jan 2023 08:11:18 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:11:19 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:11:20 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c4961b4b546f722e4a1e76673f9e32be91d74d2f8afbcc97fa90b491357f7`  
		Last Modified: Thu, 12 Jan 2023 08:12:40 GMT  
		Size: 22.9 MB (22852479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca8695c3b7b24056e2113dcc6735b59d46b4d0b13567be65bd3a89a4e96f052`  
		Last Modified: Thu, 12 Jan 2023 08:12:34 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507ae219d0779fe8847f8e1d50e8e35f27c0ea05e783a1d06bb67a0c1446b46e`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0a9394409e220db17e543bcb32779dbb83a4a71063bd777206ee09133c69e2`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.34`

```console
$ docker pull traefik@sha256:3a46f4e724ac467d9e3955792bba4327e17fa2e9e1fed93f13b85fd45b71816a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.34` - linux; amd64

```console
$ docker pull traefik@sha256:9248f7f17d44a02872613d652aff91856f928ebc400d037cd3439731da4cecbb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22605595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd394242b858ec3a77eec6506ea614377091f1904f704d3412983c1be8c0cd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Oct 2022 04:21:33 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 07 Oct 2022 04:21:34 GMT
COPY dir:c3f72545af4f290c8fc0a43693ea3334451b85d0dee09c519eb983a71a5a38fa in /usr/share/ 
# Fri, 07 Oct 2022 04:21:35 GMT
COPY file:36217e5a6056bef26cfff395c8af8c1010a61dbe8d62b2c7869ca221e2a6302c in / 
# Fri, 07 Oct 2022 04:21:35 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:35 GMT
VOLUME [/tmp]
# Fri, 07 Oct 2022 04:21:35 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Oct 2022 04:21:35 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:39006e619508cd8a1ace2dcb57ecaa3a206fc01c9b72018e30b538ba58b0f45a`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 123.5 KB (123540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79c7609bd35acb6baeec95c0534de9f28c053bb3b54b53c4831b70e4a2b6e2`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 320.1 KB (320103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b58027c881a56cde12f5ad6ba79f399d338b083423a96ae8fdb32a53f55af9`  
		Last Modified: Fri, 07 Oct 2022 04:22:44 GMT  
		Size: 22.2 MB (22161952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.34` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ed51daf51f75bf5735027eed93829bc2ddc8cab5f7d2c92661e9ae240a812647
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21055568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35629440895fbdc6144fd69e6ddccee4de8aa7785af39e4804683304ac4f2df1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 28 Oct 2022 00:15:28 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:59:12 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:59:13 GMT
COPY file:5d1e7e81e8b77b4f8828eeaf0d30a0f135a949b51396f12ae22af376c36d3129 in / 
# Fri, 11 Nov 2022 11:59:14 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:14 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:59:14 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:59:14 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:93432fb5c46fdb5c83e424ff85db4e06a08e5ac2ec96ce9e11f1c60f5a86d29b`  
		Last Modified: Fri, 28 Oct 2022 00:17:20 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0efdacb2b2ba042055ea537001460b2cff92ff305869705801b66bc44dc8565`  
		Last Modified: Fri, 11 Nov 2022 12:01:04 GMT  
		Size: 308.7 KB (308749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849ebe6d2d943e776e37535f360e7b0f3745d625ee69f6ee5fe1eecee5487ce1`  
		Last Modified: Fri, 11 Nov 2022 12:01:08 GMT  
		Size: 20.6 MB (20623281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.34` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ac5b287132e97dc27bbd96791a25701e051ddce973d6ee70eda1c87138e3c299
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20563697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5da1bea8e1a3e20b83ceca6e486a1e881451b1e304a0281d936d5e51f418d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Oct 2022 23:00:59 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:00:57 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:00:58 GMT
COPY file:60330593b6644f3f519fd13ce8ee34c2c7ab9994a1420afabbc01926dd1230dd in / 
# Fri, 11 Nov 2022 11:00:58 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:58 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:00:58 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:00:58 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:384a668e636c3a58c260d7eacd140f07b0727673d5ba128334cbcedd184a99f2`  
		Last Modified: Thu, 27 Oct 2022 23:02:00 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3f6a6b590d30fda524213974a86d6ca01981b3ab4154a359b9c2e3fa3262c6`  
		Last Modified: Fri, 11 Nov 2022 11:02:04 GMT  
		Size: 308.8 KB (308813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af8a7d805d81cf74f58f3793659f76132259201bea15bbb7a0edc6191f8edfa`  
		Last Modified: Fri, 11 Nov 2022 11:02:07 GMT  
		Size: 20.1 MB (20131346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.34-alpine`

```console
$ docker pull traefik@sha256:f50efd68ddcb8b1b8ad030fcf1011fa6a2b42412e1339b6fe2731e73eb1db963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.34-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:26fa7cd56b81852ea9f61e45df0913aab21313dc3ceeab8a893916893b533054
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25662747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d7c99e10d8ab1a83a9b8ae9755e9912e39a2a9e52da6ce6de8defc71809bd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:23 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 07 Oct 2022 04:21:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Oct 2022 04:21:27 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 07 Oct 2022 04:21:27 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Oct 2022 04:21:28 GMT
CMD ["traefik"]
# Fri, 07 Oct 2022 04:21:28 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02345b26a3d377d58f815ff68ead6a7dd73b699f6c32431c8d20e8f089729c37`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 672.8 KB (672839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb3d96d801ee542c140b3c61969835a610feec705ca8958b056cca584fce66`  
		Last Modified: Fri, 07 Oct 2022 04:22:23 GMT  
		Size: 22.2 MB (22162052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4889541507d1292f1cc22ab716fe900b3cf01a14362a5fe85f91fbf67a75cee`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.34-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:0ae1b77619decee480ac73c5643f221285808044b307298c32c3d6c8bad3e184
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23925564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636cce97efeea9b6e6cae06ecc42e060b6488713c0b64e8a4754f9e7439ba766`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:55 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:59:00 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:59:01 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:59:01 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:59:01 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:59:01 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33435e7e7c652bea7ffaf83b027d129ebd3d136e11e2469998ccbc32288c98fa`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 666.3 KB (666268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38a2c13dc82440cb92fa776a94c406c832435459441a480e7bf60df1e0baed`  
		Last Modified: Fri, 11 Nov 2022 12:00:43 GMT  
		Size: 20.6 MB (20623430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed31ebc6a3ec75add73f53bf95dd91c31a2bbdadfbf38a7b44c7b57f8fb9f8a`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.34-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:64b63c53bbf8a021857ee49412ff72501a52a4e821ffd1f3a17f213562a55dcf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23517049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adbabdcf54e3ae316f53747af91e16d550dfdfc9afaa2e19f9d4f61a1ab2759`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:45 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:00:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:00:51 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:00:51 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:00:51 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:00:51 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef289adf2cbb3f8d157193bbfd586faaa288d6dd23845f0db17b7c041df2ef`  
		Last Modified: Fri, 11 Nov 2022 11:01:45 GMT  
		Size: 663.1 KB (663148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7297d487dbad0e6a3001add15c558d8305d106c11a0f1d1572e3b8cb8c221`  
		Last Modified: Fri, 11 Nov 2022 11:01:47 GMT  
		Size: 20.1 MB (20131380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238986be5500952726a82d7ee40ae56ba3acfe2c8512f680e8c1e764ba05184b`  
		Last Modified: Fri, 11 Nov 2022 11:01:44 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.34-windowsservercore-1809`

```console
$ docker pull traefik@sha256:f8223de1afb5c0d3c84ac73737d280550d6c118d326dda320af3d6c84a1cc42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:1.7.34-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:608c9a5abd6dcd8831958380ec03bf2b6d756d151ff8bef7c387ff157223a3c5
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1730802068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789e7cee983ab7e7e598355f69c9db141fd644d2e5c467b9d49f0750c561a887`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:11:17 GMT
RUN Invoke-WebRequest     -Uri "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_windows-amd64.exe"     -OutFile "/traefik.exe"
# Thu, 12 Jan 2023 08:11:18 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:11:19 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:11:20 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c4961b4b546f722e4a1e76673f9e32be91d74d2f8afbcc97fa90b491357f7`  
		Last Modified: Thu, 12 Jan 2023 08:12:40 GMT  
		Size: 22.9 MB (22852479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca8695c3b7b24056e2113dcc6735b59d46b4d0b13567be65bd3a89a4e96f052`  
		Last Modified: Thu, 12 Jan 2023 08:12:34 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507ae219d0779fe8847f8e1d50e8e35f27c0ea05e783a1d06bb67a0c1446b46e`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0a9394409e220db17e543bcb32779dbb83a4a71063bd777206ee09133c69e2`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.9`

```console
$ docker pull traefik@sha256:bb7be8d50edf73d8d3a812ac8873ef354a0fe9b40d7f3880747b43a3525855d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:2.9` - linux; amd64

```console
$ docker pull traefik@sha256:0f22b9ca5a3bacd50c43ca193e1970d825fe2320ffc6222fec1e2e81b9a23393
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcfa08bac2048d7bf0b42ed7437e36642c3b5c69d50c066c8878f033888918e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:11 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba654a7668346da47a17ee986214820f08b0737459885c1978e455f2fe73ad76`  
		Last Modified: Thu, 08 Dec 2022 04:44:05 GMT  
		Size: 35.2 MB (35213478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d4785f200767d12de3543b4bde6788d8440e1e4f93d2e5f13ba6209c2623e2`  
		Last Modified: Thu, 08 Dec 2022 04:43:59 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.9` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ea9683b00db244cdfdeb7a4e44926a50012a3e4e97ba107195bb3963e43c0d39
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2842b30655cfa43420b04ab3c747e43f0aa3aba155e56f46e31197fd8b4d226e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:24 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:24 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:24 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf8c4a655165a1af16447214277c5a8df43ae1f4e88df72a4ce3af29ba0c05`  
		Last Modified: Thu, 08 Dec 2022 03:41:21 GMT  
		Size: 33.2 MB (33242644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1321f5ff5363841027b36118d398f74a2600dfb192d5659d21fae5140bd2e7aa`  
		Last Modified: Thu, 08 Dec 2022 03:41:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.9` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:34b641ad523cd22a83afc174a6b013686be7abc8684c6ebfa4618b8bcaa7e831
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35677019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6ceaacc01552d5a80a9c5464bfc6c6e59452db0368e258ce6996fc916d56f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:19 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:19 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:19 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:19 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727d73b4acef9c8a6e83c05ce5b33f3f436a1ece0f07eb8406f97b6a05848a7c`  
		Last Modified: Thu, 08 Dec 2022 03:30:14 GMT  
		Size: 32.3 MB (32295076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3b15d738b3a6a2c23262c52e870ff32cb1e33d21df336a7f78f5cd9c8246d0`  
		Last Modified: Thu, 08 Dec 2022 03:30:10 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.9` - linux; s390x

```console
$ docker pull traefik@sha256:922f92c7c0503cd4fd87a2ab7aca6802eaf7a43b323e07ecc73b842c0da3a832
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37360280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499ba1300caa8e220bfaf785fbdae898b0759a460398cf6f3f8ff20b76f51891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:29 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:29 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:29 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b1d5949447719ac32269c3da4b27b15409777a9fbb3d82720f7d591109c21`  
		Last Modified: Thu, 08 Dec 2022 01:53:22 GMT  
		Size: 34.1 MB (34076312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b344caf36febe37c46598601e9b12342fa38bb5099578d1a3ff3965616b59b4d`  
		Last Modified: Thu, 08 Dec 2022 01:53:17 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.9-windowsservercore-1809`

```console
$ docker pull traefik@sha256:2b14ba08c70fd47f61e6e7518fa6f1013798ae435fae7c1644b27945bb351612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:2.9-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:040fca3db9c4936ecdb9886cb291198efe1d09eb78845022a638cb084c9e17e1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1743664682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1457523905e2b9ae708c017365282c216ce2417276e501b7e6e7029f73488`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:10:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:10:28 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:10:29 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:10:30 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454c8a6194acc4d17a157715403fc33ff856eb4ad4874df8fd4de382652f0fc7`  
		Last Modified: Thu, 12 Jan 2023 08:12:17 GMT  
		Size: 35.7 MB (35715041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ba8ec90cb406b2d65f60f16b45509d83c04814448c04eeefd62ac9b9114b2`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d898b90e636483d425c9b0c1010e849de4625c55576ebd018383ff0d1ebb2a5e`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6be478c07d4d001922313eb48012cebedde0f85d16048e3d2910c2688bb246`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.9.6`

```console
$ docker pull traefik@sha256:bb7be8d50edf73d8d3a812ac8873ef354a0fe9b40d7f3880747b43a3525855d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:2.9.6` - linux; amd64

```console
$ docker pull traefik@sha256:0f22b9ca5a3bacd50c43ca193e1970d825fe2320ffc6222fec1e2e81b9a23393
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcfa08bac2048d7bf0b42ed7437e36642c3b5c69d50c066c8878f033888918e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:11 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba654a7668346da47a17ee986214820f08b0737459885c1978e455f2fe73ad76`  
		Last Modified: Thu, 08 Dec 2022 04:44:05 GMT  
		Size: 35.2 MB (35213478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d4785f200767d12de3543b4bde6788d8440e1e4f93d2e5f13ba6209c2623e2`  
		Last Modified: Thu, 08 Dec 2022 04:43:59 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.9.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ea9683b00db244cdfdeb7a4e44926a50012a3e4e97ba107195bb3963e43c0d39
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2842b30655cfa43420b04ab3c747e43f0aa3aba155e56f46e31197fd8b4d226e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:24 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:24 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:24 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf8c4a655165a1af16447214277c5a8df43ae1f4e88df72a4ce3af29ba0c05`  
		Last Modified: Thu, 08 Dec 2022 03:41:21 GMT  
		Size: 33.2 MB (33242644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1321f5ff5363841027b36118d398f74a2600dfb192d5659d21fae5140bd2e7aa`  
		Last Modified: Thu, 08 Dec 2022 03:41:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.9.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:34b641ad523cd22a83afc174a6b013686be7abc8684c6ebfa4618b8bcaa7e831
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35677019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6ceaacc01552d5a80a9c5464bfc6c6e59452db0368e258ce6996fc916d56f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:19 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:19 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:19 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:19 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727d73b4acef9c8a6e83c05ce5b33f3f436a1ece0f07eb8406f97b6a05848a7c`  
		Last Modified: Thu, 08 Dec 2022 03:30:14 GMT  
		Size: 32.3 MB (32295076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3b15d738b3a6a2c23262c52e870ff32cb1e33d21df336a7f78f5cd9c8246d0`  
		Last Modified: Thu, 08 Dec 2022 03:30:10 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.9.6` - linux; s390x

```console
$ docker pull traefik@sha256:922f92c7c0503cd4fd87a2ab7aca6802eaf7a43b323e07ecc73b842c0da3a832
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37360280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499ba1300caa8e220bfaf785fbdae898b0759a460398cf6f3f8ff20b76f51891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:29 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:29 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:29 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b1d5949447719ac32269c3da4b27b15409777a9fbb3d82720f7d591109c21`  
		Last Modified: Thu, 08 Dec 2022 01:53:22 GMT  
		Size: 34.1 MB (34076312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b344caf36febe37c46598601e9b12342fa38bb5099578d1a3ff3965616b59b4d`  
		Last Modified: Thu, 08 Dec 2022 01:53:17 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.9.6-windowsservercore-1809`

```console
$ docker pull traefik@sha256:2b14ba08c70fd47f61e6e7518fa6f1013798ae435fae7c1644b27945bb351612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:2.9.6-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:040fca3db9c4936ecdb9886cb291198efe1d09eb78845022a638cb084c9e17e1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1743664682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1457523905e2b9ae708c017365282c216ce2417276e501b7e6e7029f73488`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:10:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:10:28 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:10:29 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:10:30 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454c8a6194acc4d17a157715403fc33ff856eb4ad4874df8fd4de382652f0fc7`  
		Last Modified: Thu, 12 Jan 2023 08:12:17 GMT  
		Size: 35.7 MB (35715041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ba8ec90cb406b2d65f60f16b45509d83c04814448c04eeefd62ac9b9114b2`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d898b90e636483d425c9b0c1010e849de4625c55576ebd018383ff0d1ebb2a5e`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6be478c07d4d001922313eb48012cebedde0f85d16048e3d2910c2688bb246`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:3.0`

```console
$ docker pull traefik@sha256:134da1af7a45cc054b4cb8505a93910bf8dc2c41e4bbf61eb4c42c05ca6a82cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:3.0` - linux; amd64

```console
$ docker pull traefik@sha256:9de3bab7cd3224e8b6f094a04f3a0ca97163318143959969a338b45b8847c740
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40572147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db280c4d91ff710ab8465bea5fe1be9fa0b9d61284d9a8972cd0458ac880dae2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:04 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:04 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:04 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:05 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca335733a646f97814a4fc776662090ee61e8103d203105239534ccb67370c`  
		Last Modified: Thu, 08 Dec 2022 04:43:46 GMT  
		Size: 37.1 MB (37074895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf39d8be69fc3763b7ae53533e0e2d5d2455100867ef123d15f07f41d71ed87`  
		Last Modified: Thu, 08 Dec 2022 04:43:39 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:3.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e046a60f6ddfb304b1e376d74d12332dc19a8f60c7ed78d5059b0c1bfbb73a7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38287186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c3874e2c29e1570a088910552113fc2e9e05b28cf7988e21383c02bb99c7d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:06 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:06 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:06 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:07 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983fa5f100c0846f457ec75befa2ba1959e9e2826376882e1e7616edd11a5fa7`  
		Last Modified: Thu, 08 Dec 2022 03:40:51 GMT  
		Size: 35.0 MB (34989328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e8d1bc62be2ac8fe28ab7b8112853fa910073bc0f501a02041935a07837f8`  
		Last Modified: Thu, 08 Dec 2022 03:40:43 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:3.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fa3956ce74fedd00ece6395d3dca781144feed4642413bbe215ee92c8e9e7984
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37405464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f553af9730d56bd59f98b6d4939b5fd56f1585250345229672e676490a896021`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:12 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:12 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf943fd83d655ad9905ba09746fe04cd81c27b9b6c147a60586145b93906178`  
		Last Modified: Thu, 08 Dec 2022 03:29:53 GMT  
		Size: 34.0 MB (34023521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f8b93df0de1314c5f40e91f71c6fab1e42c8719eabb805011cd579d7b90773`  
		Last Modified: Thu, 08 Dec 2022 03:29:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:3.0` - linux; s390x

```console
$ docker pull traefik@sha256:02e0eefa83e13f39b1261f395fef62d911fdfc475087d02b6014cba9b628b5bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39139399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9726eb41b796b10605f65f89b5d5433efa2bd3de5fea2b8dff5dc8c72636187`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:14 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:14 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:15 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:15 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694853a91f9d506606047653961379b352db4786351ca12d253bd3d416b51977`  
		Last Modified: Thu, 08 Dec 2022 01:53:06 GMT  
		Size: 35.9 MB (35855432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d3815ef12ee18dd341cbd8c4ea68654ea7c6af7b862e2dcaff0707997bf873`  
		Last Modified: Thu, 08 Dec 2022 01:53:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:3.0-windowsservercore-1809`

```console
$ docker pull traefik@sha256:4e4873c46e1405633ba807d466905287ba16748a64f0ef5d62bb638487770888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:3.0-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:0812d9fa20ee998bd80da2264dd751babce5c77c51c578d9396860130d5c01ca
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1745532327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ae00dec5210bb28052cf25de60e9ecfc714b8e21523f5185b414e7f85eacfc`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:09:36 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:09:37 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:09:38 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:09:39 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503c8b525fe53b864daad518042ee97e12921ace8b41afc4726c356773bcd06`  
		Last Modified: Thu, 12 Jan 2023 08:11:54 GMT  
		Size: 37.6 MB (37582767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e0478827f4dbc2809903391adcc658352dc2eaf714eb55f55ca9de6054c77`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ef5b83460aa4bef81cc5f121d7aa09e66e20640e36f680ce98f7179cb6d66b`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7253d7c7c3290a1f980222ce35b9a66f0241f0eb0cb83d1cface350deb5ab`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:3.0.0-beta2`

```console
$ docker pull traefik@sha256:134da1af7a45cc054b4cb8505a93910bf8dc2c41e4bbf61eb4c42c05ca6a82cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:3.0.0-beta2` - linux; amd64

```console
$ docker pull traefik@sha256:9de3bab7cd3224e8b6f094a04f3a0ca97163318143959969a338b45b8847c740
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40572147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db280c4d91ff710ab8465bea5fe1be9fa0b9d61284d9a8972cd0458ac880dae2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:04 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:04 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:04 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:05 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca335733a646f97814a4fc776662090ee61e8103d203105239534ccb67370c`  
		Last Modified: Thu, 08 Dec 2022 04:43:46 GMT  
		Size: 37.1 MB (37074895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf39d8be69fc3763b7ae53533e0e2d5d2455100867ef123d15f07f41d71ed87`  
		Last Modified: Thu, 08 Dec 2022 04:43:39 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:3.0.0-beta2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e046a60f6ddfb304b1e376d74d12332dc19a8f60c7ed78d5059b0c1bfbb73a7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38287186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c3874e2c29e1570a088910552113fc2e9e05b28cf7988e21383c02bb99c7d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:06 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:06 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:06 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:07 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983fa5f100c0846f457ec75befa2ba1959e9e2826376882e1e7616edd11a5fa7`  
		Last Modified: Thu, 08 Dec 2022 03:40:51 GMT  
		Size: 35.0 MB (34989328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e8d1bc62be2ac8fe28ab7b8112853fa910073bc0f501a02041935a07837f8`  
		Last Modified: Thu, 08 Dec 2022 03:40:43 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:3.0.0-beta2` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fa3956ce74fedd00ece6395d3dca781144feed4642413bbe215ee92c8e9e7984
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37405464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f553af9730d56bd59f98b6d4939b5fd56f1585250345229672e676490a896021`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:12 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:12 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf943fd83d655ad9905ba09746fe04cd81c27b9b6c147a60586145b93906178`  
		Last Modified: Thu, 08 Dec 2022 03:29:53 GMT  
		Size: 34.0 MB (34023521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f8b93df0de1314c5f40e91f71c6fab1e42c8719eabb805011cd579d7b90773`  
		Last Modified: Thu, 08 Dec 2022 03:29:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:3.0.0-beta2` - linux; s390x

```console
$ docker pull traefik@sha256:02e0eefa83e13f39b1261f395fef62d911fdfc475087d02b6014cba9b628b5bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39139399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9726eb41b796b10605f65f89b5d5433efa2bd3de5fea2b8dff5dc8c72636187`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:14 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:14 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:15 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:15 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694853a91f9d506606047653961379b352db4786351ca12d253bd3d416b51977`  
		Last Modified: Thu, 08 Dec 2022 01:53:06 GMT  
		Size: 35.9 MB (35855432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d3815ef12ee18dd341cbd8c4ea68654ea7c6af7b862e2dcaff0707997bf873`  
		Last Modified: Thu, 08 Dec 2022 01:53:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:3.0.0-beta2-windowsservercore-1809`

```console
$ docker pull traefik@sha256:4e4873c46e1405633ba807d466905287ba16748a64f0ef5d62bb638487770888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:3.0.0-beta2-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:0812d9fa20ee998bd80da2264dd751babce5c77c51c578d9396860130d5c01ca
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1745532327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ae00dec5210bb28052cf25de60e9ecfc714b8e21523f5185b414e7f85eacfc`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:09:36 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:09:37 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:09:38 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:09:39 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503c8b525fe53b864daad518042ee97e12921ace8b41afc4726c356773bcd06`  
		Last Modified: Thu, 12 Jan 2023 08:11:54 GMT  
		Size: 37.6 MB (37582767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e0478827f4dbc2809903391adcc658352dc2eaf714eb55f55ca9de6054c77`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ef5b83460aa4bef81cc5f121d7aa09e66e20640e36f680ce98f7179cb6d66b`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7253d7c7c3290a1f980222ce35b9a66f0241f0eb0cb83d1cface350deb5ab`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:banon`

```console
$ docker pull traefik@sha256:bb7be8d50edf73d8d3a812ac8873ef354a0fe9b40d7f3880747b43a3525855d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:banon` - linux; amd64

```console
$ docker pull traefik@sha256:0f22b9ca5a3bacd50c43ca193e1970d825fe2320ffc6222fec1e2e81b9a23393
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcfa08bac2048d7bf0b42ed7437e36642c3b5c69d50c066c8878f033888918e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:11 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba654a7668346da47a17ee986214820f08b0737459885c1978e455f2fe73ad76`  
		Last Modified: Thu, 08 Dec 2022 04:44:05 GMT  
		Size: 35.2 MB (35213478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d4785f200767d12de3543b4bde6788d8440e1e4f93d2e5f13ba6209c2623e2`  
		Last Modified: Thu, 08 Dec 2022 04:43:59 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:banon` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ea9683b00db244cdfdeb7a4e44926a50012a3e4e97ba107195bb3963e43c0d39
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2842b30655cfa43420b04ab3c747e43f0aa3aba155e56f46e31197fd8b4d226e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:24 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:24 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:24 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf8c4a655165a1af16447214277c5a8df43ae1f4e88df72a4ce3af29ba0c05`  
		Last Modified: Thu, 08 Dec 2022 03:41:21 GMT  
		Size: 33.2 MB (33242644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1321f5ff5363841027b36118d398f74a2600dfb192d5659d21fae5140bd2e7aa`  
		Last Modified: Thu, 08 Dec 2022 03:41:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:banon` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:34b641ad523cd22a83afc174a6b013686be7abc8684c6ebfa4618b8bcaa7e831
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35677019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6ceaacc01552d5a80a9c5464bfc6c6e59452db0368e258ce6996fc916d56f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:19 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:19 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:19 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:19 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727d73b4acef9c8a6e83c05ce5b33f3f436a1ece0f07eb8406f97b6a05848a7c`  
		Last Modified: Thu, 08 Dec 2022 03:30:14 GMT  
		Size: 32.3 MB (32295076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3b15d738b3a6a2c23262c52e870ff32cb1e33d21df336a7f78f5cd9c8246d0`  
		Last Modified: Thu, 08 Dec 2022 03:30:10 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:banon` - linux; s390x

```console
$ docker pull traefik@sha256:922f92c7c0503cd4fd87a2ab7aca6802eaf7a43b323e07ecc73b842c0da3a832
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37360280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499ba1300caa8e220bfaf785fbdae898b0759a460398cf6f3f8ff20b76f51891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:29 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:29 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:29 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b1d5949447719ac32269c3da4b27b15409777a9fbb3d82720f7d591109c21`  
		Last Modified: Thu, 08 Dec 2022 01:53:22 GMT  
		Size: 34.1 MB (34076312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b344caf36febe37c46598601e9b12342fa38bb5099578d1a3ff3965616b59b4d`  
		Last Modified: Thu, 08 Dec 2022 01:53:17 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:banon-windowsservercore-1809`

```console
$ docker pull traefik@sha256:2b14ba08c70fd47f61e6e7518fa6f1013798ae435fae7c1644b27945bb351612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:banon-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:040fca3db9c4936ecdb9886cb291198efe1d09eb78845022a638cb084c9e17e1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1743664682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1457523905e2b9ae708c017365282c216ce2417276e501b7e6e7029f73488`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:10:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:10:28 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:10:29 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:10:30 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454c8a6194acc4d17a157715403fc33ff856eb4ad4874df8fd4de382652f0fc7`  
		Last Modified: Thu, 12 Jan 2023 08:12:17 GMT  
		Size: 35.7 MB (35715041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ba8ec90cb406b2d65f60f16b45509d83c04814448c04eeefd62ac9b9114b2`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d898b90e636483d425c9b0c1010e849de4625c55576ebd018383ff0d1ebb2a5e`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6be478c07d4d001922313eb48012cebedde0f85d16048e3d2910c2688bb246`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:beaufort`

```console
$ docker pull traefik@sha256:134da1af7a45cc054b4cb8505a93910bf8dc2c41e4bbf61eb4c42c05ca6a82cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:beaufort` - linux; amd64

```console
$ docker pull traefik@sha256:9de3bab7cd3224e8b6f094a04f3a0ca97163318143959969a338b45b8847c740
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40572147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db280c4d91ff710ab8465bea5fe1be9fa0b9d61284d9a8972cd0458ac880dae2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:04 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:04 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:04 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:05 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca335733a646f97814a4fc776662090ee61e8103d203105239534ccb67370c`  
		Last Modified: Thu, 08 Dec 2022 04:43:46 GMT  
		Size: 37.1 MB (37074895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf39d8be69fc3763b7ae53533e0e2d5d2455100867ef123d15f07f41d71ed87`  
		Last Modified: Thu, 08 Dec 2022 04:43:39 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:beaufort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e046a60f6ddfb304b1e376d74d12332dc19a8f60c7ed78d5059b0c1bfbb73a7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38287186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c3874e2c29e1570a088910552113fc2e9e05b28cf7988e21383c02bb99c7d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:06 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:06 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:06 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:07 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983fa5f100c0846f457ec75befa2ba1959e9e2826376882e1e7616edd11a5fa7`  
		Last Modified: Thu, 08 Dec 2022 03:40:51 GMT  
		Size: 35.0 MB (34989328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e8d1bc62be2ac8fe28ab7b8112853fa910073bc0f501a02041935a07837f8`  
		Last Modified: Thu, 08 Dec 2022 03:40:43 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:beaufort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fa3956ce74fedd00ece6395d3dca781144feed4642413bbe215ee92c8e9e7984
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37405464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f553af9730d56bd59f98b6d4939b5fd56f1585250345229672e676490a896021`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:12 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:12 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf943fd83d655ad9905ba09746fe04cd81c27b9b6c147a60586145b93906178`  
		Last Modified: Thu, 08 Dec 2022 03:29:53 GMT  
		Size: 34.0 MB (34023521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f8b93df0de1314c5f40e91f71c6fab1e42c8719eabb805011cd579d7b90773`  
		Last Modified: Thu, 08 Dec 2022 03:29:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:beaufort` - linux; s390x

```console
$ docker pull traefik@sha256:02e0eefa83e13f39b1261f395fef62d911fdfc475087d02b6014cba9b628b5bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39139399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9726eb41b796b10605f65f89b5d5433efa2bd3de5fea2b8dff5dc8c72636187`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:14 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:14 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:15 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:15 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694853a91f9d506606047653961379b352db4786351ca12d253bd3d416b51977`  
		Last Modified: Thu, 08 Dec 2022 01:53:06 GMT  
		Size: 35.9 MB (35855432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d3815ef12ee18dd341cbd8c4ea68654ea7c6af7b862e2dcaff0707997bf873`  
		Last Modified: Thu, 08 Dec 2022 01:53:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:beaufort-windowsservercore-1809`

```console
$ docker pull traefik@sha256:4e4873c46e1405633ba807d466905287ba16748a64f0ef5d62bb638487770888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:beaufort-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:0812d9fa20ee998bd80da2264dd751babce5c77c51c578d9396860130d5c01ca
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1745532327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ae00dec5210bb28052cf25de60e9ecfc714b8e21523f5185b414e7f85eacfc`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:09:36 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:09:37 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:09:38 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:09:39 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503c8b525fe53b864daad518042ee97e12921ace8b41afc4726c356773bcd06`  
		Last Modified: Thu, 12 Jan 2023 08:11:54 GMT  
		Size: 37.6 MB (37582767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e0478827f4dbc2809903391adcc658352dc2eaf714eb55f55ca9de6054c77`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ef5b83460aa4bef81cc5f121d7aa09e66e20640e36f680ce98f7179cb6d66b`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7253d7c7c3290a1f980222ce35b9a66f0241f0eb0cb83d1cface350deb5ab`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:bb7be8d50edf73d8d3a812ac8873ef354a0fe9b40d7f3880747b43a3525855d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:0f22b9ca5a3bacd50c43ca193e1970d825fe2320ffc6222fec1e2e81b9a23393
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcfa08bac2048d7bf0b42ed7437e36642c3b5c69d50c066c8878f033888918e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:11 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba654a7668346da47a17ee986214820f08b0737459885c1978e455f2fe73ad76`  
		Last Modified: Thu, 08 Dec 2022 04:44:05 GMT  
		Size: 35.2 MB (35213478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d4785f200767d12de3543b4bde6788d8440e1e4f93d2e5f13ba6209c2623e2`  
		Last Modified: Thu, 08 Dec 2022 04:43:59 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ea9683b00db244cdfdeb7a4e44926a50012a3e4e97ba107195bb3963e43c0d39
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2842b30655cfa43420b04ab3c747e43f0aa3aba155e56f46e31197fd8b4d226e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:24 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:24 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:24 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf8c4a655165a1af16447214277c5a8df43ae1f4e88df72a4ce3af29ba0c05`  
		Last Modified: Thu, 08 Dec 2022 03:41:21 GMT  
		Size: 33.2 MB (33242644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1321f5ff5363841027b36118d398f74a2600dfb192d5659d21fae5140bd2e7aa`  
		Last Modified: Thu, 08 Dec 2022 03:41:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:34b641ad523cd22a83afc174a6b013686be7abc8684c6ebfa4618b8bcaa7e831
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35677019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6ceaacc01552d5a80a9c5464bfc6c6e59452db0368e258ce6996fc916d56f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:19 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:19 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:19 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:19 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727d73b4acef9c8a6e83c05ce5b33f3f436a1ece0f07eb8406f97b6a05848a7c`  
		Last Modified: Thu, 08 Dec 2022 03:30:14 GMT  
		Size: 32.3 MB (32295076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3b15d738b3a6a2c23262c52e870ff32cb1e33d21df336a7f78f5cd9c8246d0`  
		Last Modified: Thu, 08 Dec 2022 03:30:10 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:922f92c7c0503cd4fd87a2ab7aca6802eaf7a43b323e07ecc73b842c0da3a832
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37360280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499ba1300caa8e220bfaf785fbdae898b0759a460398cf6f3f8ff20b76f51891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:29 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:29 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:29 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b1d5949447719ac32269c3da4b27b15409777a9fbb3d82720f7d591109c21`  
		Last Modified: Thu, 08 Dec 2022 01:53:22 GMT  
		Size: 34.1 MB (34076312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b344caf36febe37c46598601e9b12342fa38bb5099578d1a3ff3965616b59b4d`  
		Last Modified: Thu, 08 Dec 2022 01:53:17 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:3a46f4e724ac467d9e3955792bba4327e17fa2e9e1fed93f13b85fd45b71816a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:9248f7f17d44a02872613d652aff91856f928ebc400d037cd3439731da4cecbb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22605595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd394242b858ec3a77eec6506ea614377091f1904f704d3412983c1be8c0cd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Oct 2022 04:21:33 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 07 Oct 2022 04:21:34 GMT
COPY dir:c3f72545af4f290c8fc0a43693ea3334451b85d0dee09c519eb983a71a5a38fa in /usr/share/ 
# Fri, 07 Oct 2022 04:21:35 GMT
COPY file:36217e5a6056bef26cfff395c8af8c1010a61dbe8d62b2c7869ca221e2a6302c in / 
# Fri, 07 Oct 2022 04:21:35 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:35 GMT
VOLUME [/tmp]
# Fri, 07 Oct 2022 04:21:35 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Oct 2022 04:21:35 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:39006e619508cd8a1ace2dcb57ecaa3a206fc01c9b72018e30b538ba58b0f45a`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 123.5 KB (123540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79c7609bd35acb6baeec95c0534de9f28c053bb3b54b53c4831b70e4a2b6e2`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 320.1 KB (320103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b58027c881a56cde12f5ad6ba79f399d338b083423a96ae8fdb32a53f55af9`  
		Last Modified: Fri, 07 Oct 2022 04:22:44 GMT  
		Size: 22.2 MB (22161952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ed51daf51f75bf5735027eed93829bc2ddc8cab5f7d2c92661e9ae240a812647
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21055568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35629440895fbdc6144fd69e6ddccee4de8aa7785af39e4804683304ac4f2df1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 28 Oct 2022 00:15:28 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:59:12 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:59:13 GMT
COPY file:5d1e7e81e8b77b4f8828eeaf0d30a0f135a949b51396f12ae22af376c36d3129 in / 
# Fri, 11 Nov 2022 11:59:14 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:14 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:59:14 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:59:14 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:93432fb5c46fdb5c83e424ff85db4e06a08e5ac2ec96ce9e11f1c60f5a86d29b`  
		Last Modified: Fri, 28 Oct 2022 00:17:20 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0efdacb2b2ba042055ea537001460b2cff92ff305869705801b66bc44dc8565`  
		Last Modified: Fri, 11 Nov 2022 12:01:04 GMT  
		Size: 308.7 KB (308749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849ebe6d2d943e776e37535f360e7b0f3745d625ee69f6ee5fe1eecee5487ce1`  
		Last Modified: Fri, 11 Nov 2022 12:01:08 GMT  
		Size: 20.6 MB (20623281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ac5b287132e97dc27bbd96791a25701e051ddce973d6ee70eda1c87138e3c299
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20563697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5da1bea8e1a3e20b83ceca6e486a1e881451b1e304a0281d936d5e51f418d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Oct 2022 23:00:59 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:00:57 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:00:58 GMT
COPY file:60330593b6644f3f519fd13ce8ee34c2c7ab9994a1420afabbc01926dd1230dd in / 
# Fri, 11 Nov 2022 11:00:58 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:58 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:00:58 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:00:58 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:384a668e636c3a58c260d7eacd140f07b0727673d5ba128334cbcedd184a99f2`  
		Last Modified: Thu, 27 Oct 2022 23:02:00 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3f6a6b590d30fda524213974a86d6ca01981b3ab4154a359b9c2e3fa3262c6`  
		Last Modified: Fri, 11 Nov 2022 11:02:04 GMT  
		Size: 308.8 KB (308813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af8a7d805d81cf74f58f3793659f76132259201bea15bbb7a0edc6191f8edfa`  
		Last Modified: Fri, 11 Nov 2022 11:02:07 GMT  
		Size: 20.1 MB (20131346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:f50efd68ddcb8b1b8ad030fcf1011fa6a2b42412e1339b6fe2731e73eb1db963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:26fa7cd56b81852ea9f61e45df0913aab21313dc3ceeab8a893916893b533054
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25662747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d7c99e10d8ab1a83a9b8ae9755e9912e39a2a9e52da6ce6de8defc71809bd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:23 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 07 Oct 2022 04:21:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Oct 2022 04:21:27 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 07 Oct 2022 04:21:27 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Oct 2022 04:21:28 GMT
CMD ["traefik"]
# Fri, 07 Oct 2022 04:21:28 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02345b26a3d377d58f815ff68ead6a7dd73b699f6c32431c8d20e8f089729c37`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 672.8 KB (672839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb3d96d801ee542c140b3c61969835a610feec705ca8958b056cca584fce66`  
		Last Modified: Fri, 07 Oct 2022 04:22:23 GMT  
		Size: 22.2 MB (22162052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4889541507d1292f1cc22ab716fe900b3cf01a14362a5fe85f91fbf67a75cee`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:0ae1b77619decee480ac73c5643f221285808044b307298c32c3d6c8bad3e184
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23925564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636cce97efeea9b6e6cae06ecc42e060b6488713c0b64e8a4754f9e7439ba766`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:55 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:59:00 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:59:01 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:59:01 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:59:01 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:59:01 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33435e7e7c652bea7ffaf83b027d129ebd3d136e11e2469998ccbc32288c98fa`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 666.3 KB (666268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38a2c13dc82440cb92fa776a94c406c832435459441a480e7bf60df1e0baed`  
		Last Modified: Fri, 11 Nov 2022 12:00:43 GMT  
		Size: 20.6 MB (20623430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed31ebc6a3ec75add73f53bf95dd91c31a2bbdadfbf38a7b44c7b57f8fb9f8a`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:64b63c53bbf8a021857ee49412ff72501a52a4e821ffd1f3a17f213562a55dcf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23517049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adbabdcf54e3ae316f53747af91e16d550dfdfc9afaa2e19f9d4f61a1ab2759`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:45 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:00:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:00:51 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:00:51 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:00:51 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:00:51 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef289adf2cbb3f8d157193bbfd586faaa288d6dd23845f0db17b7c041df2ef`  
		Last Modified: Fri, 11 Nov 2022 11:01:45 GMT  
		Size: 663.1 KB (663148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7297d487dbad0e6a3001add15c558d8305d106c11a0f1d1572e3b8cb8c221`  
		Last Modified: Fri, 11 Nov 2022 11:01:47 GMT  
		Size: 20.1 MB (20131380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238986be5500952726a82d7ee40ae56ba3acfe2c8512f680e8c1e764ba05184b`  
		Last Modified: Fri, 11 Nov 2022 11:01:44 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-windowsservercore-1809`

```console
$ docker pull traefik@sha256:f8223de1afb5c0d3c84ac73737d280550d6c118d326dda320af3d6c84a1cc42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:maroilles-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:608c9a5abd6dcd8831958380ec03bf2b6d756d151ff8bef7c387ff157223a3c5
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1730802068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789e7cee983ab7e7e598355f69c9db141fd644d2e5c467b9d49f0750c561a887`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:11:17 GMT
RUN Invoke-WebRequest     -Uri "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_windows-amd64.exe"     -OutFile "/traefik.exe"
# Thu, 12 Jan 2023 08:11:18 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:11:19 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:11:20 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c4961b4b546f722e4a1e76673f9e32be91d74d2f8afbcc97fa90b491357f7`  
		Last Modified: Thu, 12 Jan 2023 08:12:40 GMT  
		Size: 22.9 MB (22852479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca8695c3b7b24056e2113dcc6735b59d46b4d0b13567be65bd3a89a4e96f052`  
		Last Modified: Thu, 12 Jan 2023 08:12:34 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507ae219d0779fe8847f8e1d50e8e35f27c0ea05e783a1d06bb67a0c1446b46e`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0a9394409e220db17e543bcb32779dbb83a4a71063bd777206ee09133c69e2`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:3a46f4e724ac467d9e3955792bba4327e17fa2e9e1fed93f13b85fd45b71816a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:9248f7f17d44a02872613d652aff91856f928ebc400d037cd3439731da4cecbb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22605595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd394242b858ec3a77eec6506ea614377091f1904f704d3412983c1be8c0cd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Oct 2022 04:21:33 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 07 Oct 2022 04:21:34 GMT
COPY dir:c3f72545af4f290c8fc0a43693ea3334451b85d0dee09c519eb983a71a5a38fa in /usr/share/ 
# Fri, 07 Oct 2022 04:21:35 GMT
COPY file:36217e5a6056bef26cfff395c8af8c1010a61dbe8d62b2c7869ca221e2a6302c in / 
# Fri, 07 Oct 2022 04:21:35 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:35 GMT
VOLUME [/tmp]
# Fri, 07 Oct 2022 04:21:35 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Oct 2022 04:21:35 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:39006e619508cd8a1ace2dcb57ecaa3a206fc01c9b72018e30b538ba58b0f45a`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 123.5 KB (123540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79c7609bd35acb6baeec95c0534de9f28c053bb3b54b53c4831b70e4a2b6e2`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 320.1 KB (320103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b58027c881a56cde12f5ad6ba79f399d338b083423a96ae8fdb32a53f55af9`  
		Last Modified: Fri, 07 Oct 2022 04:22:44 GMT  
		Size: 22.2 MB (22161952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ed51daf51f75bf5735027eed93829bc2ddc8cab5f7d2c92661e9ae240a812647
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21055568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35629440895fbdc6144fd69e6ddccee4de8aa7785af39e4804683304ac4f2df1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 28 Oct 2022 00:15:28 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:59:12 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:59:13 GMT
COPY file:5d1e7e81e8b77b4f8828eeaf0d30a0f135a949b51396f12ae22af376c36d3129 in / 
# Fri, 11 Nov 2022 11:59:14 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:14 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:59:14 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:59:14 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:93432fb5c46fdb5c83e424ff85db4e06a08e5ac2ec96ce9e11f1c60f5a86d29b`  
		Last Modified: Fri, 28 Oct 2022 00:17:20 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0efdacb2b2ba042055ea537001460b2cff92ff305869705801b66bc44dc8565`  
		Last Modified: Fri, 11 Nov 2022 12:01:04 GMT  
		Size: 308.7 KB (308749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849ebe6d2d943e776e37535f360e7b0f3745d625ee69f6ee5fe1eecee5487ce1`  
		Last Modified: Fri, 11 Nov 2022 12:01:08 GMT  
		Size: 20.6 MB (20623281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ac5b287132e97dc27bbd96791a25701e051ddce973d6ee70eda1c87138e3c299
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20563697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5da1bea8e1a3e20b83ceca6e486a1e881451b1e304a0281d936d5e51f418d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Oct 2022 23:00:59 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:00:57 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:00:58 GMT
COPY file:60330593b6644f3f519fd13ce8ee34c2c7ab9994a1420afabbc01926dd1230dd in / 
# Fri, 11 Nov 2022 11:00:58 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:58 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:00:58 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:00:58 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:384a668e636c3a58c260d7eacd140f07b0727673d5ba128334cbcedd184a99f2`  
		Last Modified: Thu, 27 Oct 2022 23:02:00 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3f6a6b590d30fda524213974a86d6ca01981b3ab4154a359b9c2e3fa3262c6`  
		Last Modified: Fri, 11 Nov 2022 11:02:04 GMT  
		Size: 308.8 KB (308813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af8a7d805d81cf74f58f3793659f76132259201bea15bbb7a0edc6191f8edfa`  
		Last Modified: Fri, 11 Nov 2022 11:02:07 GMT  
		Size: 20.1 MB (20131346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:f50efd68ddcb8b1b8ad030fcf1011fa6a2b42412e1339b6fe2731e73eb1db963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:26fa7cd56b81852ea9f61e45df0913aab21313dc3ceeab8a893916893b533054
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25662747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d7c99e10d8ab1a83a9b8ae9755e9912e39a2a9e52da6ce6de8defc71809bd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:23 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 07 Oct 2022 04:21:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Oct 2022 04:21:27 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 07 Oct 2022 04:21:27 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Oct 2022 04:21:28 GMT
CMD ["traefik"]
# Fri, 07 Oct 2022 04:21:28 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02345b26a3d377d58f815ff68ead6a7dd73b699f6c32431c8d20e8f089729c37`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 672.8 KB (672839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb3d96d801ee542c140b3c61969835a610feec705ca8958b056cca584fce66`  
		Last Modified: Fri, 07 Oct 2022 04:22:23 GMT  
		Size: 22.2 MB (22162052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4889541507d1292f1cc22ab716fe900b3cf01a14362a5fe85f91fbf67a75cee`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:0ae1b77619decee480ac73c5643f221285808044b307298c32c3d6c8bad3e184
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23925564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636cce97efeea9b6e6cae06ecc42e060b6488713c0b64e8a4754f9e7439ba766`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:55 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:59:00 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:59:01 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:59:01 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:59:01 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:59:01 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33435e7e7c652bea7ffaf83b027d129ebd3d136e11e2469998ccbc32288c98fa`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 666.3 KB (666268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38a2c13dc82440cb92fa776a94c406c832435459441a480e7bf60df1e0baed`  
		Last Modified: Fri, 11 Nov 2022 12:00:43 GMT  
		Size: 20.6 MB (20623430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed31ebc6a3ec75add73f53bf95dd91c31a2bbdadfbf38a7b44c7b57f8fb9f8a`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:64b63c53bbf8a021857ee49412ff72501a52a4e821ffd1f3a17f213562a55dcf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23517049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adbabdcf54e3ae316f53747af91e16d550dfdfc9afaa2e19f9d4f61a1ab2759`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:45 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:00:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:00:51 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:00:51 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:00:51 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:00:51 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef289adf2cbb3f8d157193bbfd586faaa288d6dd23845f0db17b7c041df2ef`  
		Last Modified: Fri, 11 Nov 2022 11:01:45 GMT  
		Size: 663.1 KB (663148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7297d487dbad0e6a3001add15c558d8305d106c11a0f1d1572e3b8cb8c221`  
		Last Modified: Fri, 11 Nov 2022 11:01:47 GMT  
		Size: 20.1 MB (20131380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238986be5500952726a82d7ee40ae56ba3acfe2c8512f680e8c1e764ba05184b`  
		Last Modified: Fri, 11 Nov 2022 11:01:44 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-windowsservercore-1809`

```console
$ docker pull traefik@sha256:f8223de1afb5c0d3c84ac73737d280550d6c118d326dda320af3d6c84a1cc42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:v1.7-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:608c9a5abd6dcd8831958380ec03bf2b6d756d151ff8bef7c387ff157223a3c5
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1730802068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789e7cee983ab7e7e598355f69c9db141fd644d2e5c467b9d49f0750c561a887`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:11:17 GMT
RUN Invoke-WebRequest     -Uri "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_windows-amd64.exe"     -OutFile "/traefik.exe"
# Thu, 12 Jan 2023 08:11:18 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:11:19 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:11:20 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c4961b4b546f722e4a1e76673f9e32be91d74d2f8afbcc97fa90b491357f7`  
		Last Modified: Thu, 12 Jan 2023 08:12:40 GMT  
		Size: 22.9 MB (22852479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca8695c3b7b24056e2113dcc6735b59d46b4d0b13567be65bd3a89a4e96f052`  
		Last Modified: Thu, 12 Jan 2023 08:12:34 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507ae219d0779fe8847f8e1d50e8e35f27c0ea05e783a1d06bb67a0c1446b46e`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0a9394409e220db17e543bcb32779dbb83a4a71063bd777206ee09133c69e2`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.34`

```console
$ docker pull traefik@sha256:3a46f4e724ac467d9e3955792bba4327e17fa2e9e1fed93f13b85fd45b71816a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.34` - linux; amd64

```console
$ docker pull traefik@sha256:9248f7f17d44a02872613d652aff91856f928ebc400d037cd3439731da4cecbb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22605595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd394242b858ec3a77eec6506ea614377091f1904f704d3412983c1be8c0cd`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Oct 2022 04:21:33 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 07 Oct 2022 04:21:34 GMT
COPY dir:c3f72545af4f290c8fc0a43693ea3334451b85d0dee09c519eb983a71a5a38fa in /usr/share/ 
# Fri, 07 Oct 2022 04:21:35 GMT
COPY file:36217e5a6056bef26cfff395c8af8c1010a61dbe8d62b2c7869ca221e2a6302c in / 
# Fri, 07 Oct 2022 04:21:35 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:35 GMT
VOLUME [/tmp]
# Fri, 07 Oct 2022 04:21:35 GMT
ENTRYPOINT ["/traefik"]
# Fri, 07 Oct 2022 04:21:35 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:39006e619508cd8a1ace2dcb57ecaa3a206fc01c9b72018e30b538ba58b0f45a`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 123.5 KB (123540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79c7609bd35acb6baeec95c0534de9f28c053bb3b54b53c4831b70e4a2b6e2`  
		Last Modified: Fri, 07 Oct 2022 04:22:39 GMT  
		Size: 320.1 KB (320103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b58027c881a56cde12f5ad6ba79f399d338b083423a96ae8fdb32a53f55af9`  
		Last Modified: Fri, 07 Oct 2022 04:22:44 GMT  
		Size: 22.2 MB (22161952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.34` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ed51daf51f75bf5735027eed93829bc2ddc8cab5f7d2c92661e9ae240a812647
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21055568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35629440895fbdc6144fd69e6ddccee4de8aa7785af39e4804683304ac4f2df1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 28 Oct 2022 00:15:28 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:59:12 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:59:13 GMT
COPY file:5d1e7e81e8b77b4f8828eeaf0d30a0f135a949b51396f12ae22af376c36d3129 in / 
# Fri, 11 Nov 2022 11:59:14 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:14 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:59:14 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:59:14 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:93432fb5c46fdb5c83e424ff85db4e06a08e5ac2ec96ce9e11f1c60f5a86d29b`  
		Last Modified: Fri, 28 Oct 2022 00:17:20 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0efdacb2b2ba042055ea537001460b2cff92ff305869705801b66bc44dc8565`  
		Last Modified: Fri, 11 Nov 2022 12:01:04 GMT  
		Size: 308.7 KB (308749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849ebe6d2d943e776e37535f360e7b0f3745d625ee69f6ee5fe1eecee5487ce1`  
		Last Modified: Fri, 11 Nov 2022 12:01:08 GMT  
		Size: 20.6 MB (20623281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.34` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:ac5b287132e97dc27bbd96791a25701e051ddce973d6ee70eda1c87138e3c299
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20563697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5da1bea8e1a3e20b83ceca6e486a1e881451b1e304a0281d936d5e51f418d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Oct 2022 23:00:59 GMT
COPY file:48964762d0c961c28f59ebd3ea194fb6486cf2bd9a9cf1780f6702d88bd7b7d9 in /etc/ssl/certs/ 
# Fri, 11 Nov 2022 11:00:57 GMT
COPY dir:3b1b1d8650d4180b42ead5fd074947c16b0405195b425df367fbf007be68841d in /usr/share/ 
# Fri, 11 Nov 2022 11:00:58 GMT
COPY file:60330593b6644f3f519fd13ce8ee34c2c7ab9994a1420afabbc01926dd1230dd in / 
# Fri, 11 Nov 2022 11:00:58 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:58 GMT
VOLUME [/tmp]
# Fri, 11 Nov 2022 11:00:58 GMT
ENTRYPOINT ["/traefik"]
# Fri, 11 Nov 2022 11:00:58 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:384a668e636c3a58c260d7eacd140f07b0727673d5ba128334cbcedd184a99f2`  
		Last Modified: Thu, 27 Oct 2022 23:02:00 GMT  
		Size: 123.5 KB (123538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3f6a6b590d30fda524213974a86d6ca01981b3ab4154a359b9c2e3fa3262c6`  
		Last Modified: Fri, 11 Nov 2022 11:02:04 GMT  
		Size: 308.8 KB (308813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af8a7d805d81cf74f58f3793659f76132259201bea15bbb7a0edc6191f8edfa`  
		Last Modified: Fri, 11 Nov 2022 11:02:07 GMT  
		Size: 20.1 MB (20131346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.34-alpine`

```console
$ docker pull traefik@sha256:f50efd68ddcb8b1b8ad030fcf1011fa6a2b42412e1339b6fe2731e73eb1db963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.34-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:26fa7cd56b81852ea9f61e45df0913aab21313dc3ceeab8a893916893b533054
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25662747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d7c99e10d8ab1a83a9b8ae9755e9912e39a2a9e52da6ce6de8defc71809bd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:23 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 07 Oct 2022 04:21:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 07 Oct 2022 04:21:27 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 07 Oct 2022 04:21:27 GMT
EXPOSE 80
# Fri, 07 Oct 2022 04:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Oct 2022 04:21:28 GMT
CMD ["traefik"]
# Fri, 07 Oct 2022 04:21:28 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02345b26a3d377d58f815ff68ead6a7dd73b699f6c32431c8d20e8f089729c37`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 672.8 KB (672839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb3d96d801ee542c140b3c61969835a610feec705ca8958b056cca584fce66`  
		Last Modified: Fri, 07 Oct 2022 04:22:23 GMT  
		Size: 22.2 MB (22162052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4889541507d1292f1cc22ab716fe900b3cf01a14362a5fe85f91fbf67a75cee`  
		Last Modified: Fri, 07 Oct 2022 04:22:19 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.34-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:0ae1b77619decee480ac73c5643f221285808044b307298c32c3d6c8bad3e184
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23925564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636cce97efeea9b6e6cae06ecc42e060b6488713c0b64e8a4754f9e7439ba766`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:55 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:59:00 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:59:01 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:59:01 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:59:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:59:01 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:59:01 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33435e7e7c652bea7ffaf83b027d129ebd3d136e11e2469998ccbc32288c98fa`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 666.3 KB (666268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38a2c13dc82440cb92fa776a94c406c832435459441a480e7bf60df1e0baed`  
		Last Modified: Fri, 11 Nov 2022 12:00:43 GMT  
		Size: 20.6 MB (20623430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed31ebc6a3ec75add73f53bf95dd91c31a2bbdadfbf38a7b44c7b57f8fb9f8a`  
		Last Modified: Fri, 11 Nov 2022 12:00:39 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.34-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:64b63c53bbf8a021857ee49412ff72501a52a4e821ffd1f3a17f213562a55dcf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23517049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adbabdcf54e3ae316f53747af91e16d550dfdfc9afaa2e19f9d4f61a1ab2759`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:45 GMT
RUN apk --no-cache add ca-certificates tzdata
# Fri, 11 Nov 2022 11:00:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 11 Nov 2022 11:00:51 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Fri, 11 Nov 2022 11:00:51 GMT
EXPOSE 80
# Fri, 11 Nov 2022 11:00:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Nov 2022 11:00:51 GMT
CMD ["traefik"]
# Fri, 11 Nov 2022 11:00:51 GMT
LABEL org.opencontainers.image.vendor=traefik org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef289adf2cbb3f8d157193bbfd586faaa288d6dd23845f0db17b7c041df2ef`  
		Last Modified: Fri, 11 Nov 2022 11:01:45 GMT  
		Size: 663.1 KB (663148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7297d487dbad0e6a3001add15c558d8305d106c11a0f1d1572e3b8cb8c221`  
		Last Modified: Fri, 11 Nov 2022 11:01:47 GMT  
		Size: 20.1 MB (20131380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238986be5500952726a82d7ee40ae56ba3acfe2c8512f680e8c1e764ba05184b`  
		Last Modified: Fri, 11 Nov 2022 11:01:44 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.34-windowsservercore-1809`

```console
$ docker pull traefik@sha256:f8223de1afb5c0d3c84ac73737d280550d6c118d326dda320af3d6c84a1cc42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:v1.7.34-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:608c9a5abd6dcd8831958380ec03bf2b6d756d151ff8bef7c387ff157223a3c5
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1730802068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789e7cee983ab7e7e598355f69c9db141fd644d2e5c467b9d49f0750c561a887`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:11:17 GMT
RUN Invoke-WebRequest     -Uri "https://github.com/traefik/traefik/releases/download/v1.7.34/traefik_windows-amd64.exe"     -OutFile "/traefik.exe"
# Thu, 12 Jan 2023 08:11:18 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:11:19 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:11:20 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.34 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c4961b4b546f722e4a1e76673f9e32be91d74d2f8afbcc97fa90b491357f7`  
		Last Modified: Thu, 12 Jan 2023 08:12:40 GMT  
		Size: 22.9 MB (22852479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca8695c3b7b24056e2113dcc6735b59d46b4d0b13567be65bd3a89a4e96f052`  
		Last Modified: Thu, 12 Jan 2023 08:12:34 GMT  
		Size: 1.4 KB (1391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507ae219d0779fe8847f8e1d50e8e35f27c0ea05e783a1d06bb67a0c1446b46e`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0a9394409e220db17e543bcb32779dbb83a4a71063bd777206ee09133c69e2`  
		Last Modified: Thu, 12 Jan 2023 08:12:33 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.9`

```console
$ docker pull traefik@sha256:bb7be8d50edf73d8d3a812ac8873ef354a0fe9b40d7f3880747b43a3525855d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:v2.9` - linux; amd64

```console
$ docker pull traefik@sha256:0f22b9ca5a3bacd50c43ca193e1970d825fe2320ffc6222fec1e2e81b9a23393
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcfa08bac2048d7bf0b42ed7437e36642c3b5c69d50c066c8878f033888918e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:11 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba654a7668346da47a17ee986214820f08b0737459885c1978e455f2fe73ad76`  
		Last Modified: Thu, 08 Dec 2022 04:44:05 GMT  
		Size: 35.2 MB (35213478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d4785f200767d12de3543b4bde6788d8440e1e4f93d2e5f13ba6209c2623e2`  
		Last Modified: Thu, 08 Dec 2022 04:43:59 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.9` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ea9683b00db244cdfdeb7a4e44926a50012a3e4e97ba107195bb3963e43c0d39
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2842b30655cfa43420b04ab3c747e43f0aa3aba155e56f46e31197fd8b4d226e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:24 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:24 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:24 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf8c4a655165a1af16447214277c5a8df43ae1f4e88df72a4ce3af29ba0c05`  
		Last Modified: Thu, 08 Dec 2022 03:41:21 GMT  
		Size: 33.2 MB (33242644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1321f5ff5363841027b36118d398f74a2600dfb192d5659d21fae5140bd2e7aa`  
		Last Modified: Thu, 08 Dec 2022 03:41:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.9` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:34b641ad523cd22a83afc174a6b013686be7abc8684c6ebfa4618b8bcaa7e831
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35677019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6ceaacc01552d5a80a9c5464bfc6c6e59452db0368e258ce6996fc916d56f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:19 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:19 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:19 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:19 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727d73b4acef9c8a6e83c05ce5b33f3f436a1ece0f07eb8406f97b6a05848a7c`  
		Last Modified: Thu, 08 Dec 2022 03:30:14 GMT  
		Size: 32.3 MB (32295076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3b15d738b3a6a2c23262c52e870ff32cb1e33d21df336a7f78f5cd9c8246d0`  
		Last Modified: Thu, 08 Dec 2022 03:30:10 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.9` - linux; s390x

```console
$ docker pull traefik@sha256:922f92c7c0503cd4fd87a2ab7aca6802eaf7a43b323e07ecc73b842c0da3a832
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37360280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499ba1300caa8e220bfaf785fbdae898b0759a460398cf6f3f8ff20b76f51891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:29 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:29 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:29 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b1d5949447719ac32269c3da4b27b15409777a9fbb3d82720f7d591109c21`  
		Last Modified: Thu, 08 Dec 2022 01:53:22 GMT  
		Size: 34.1 MB (34076312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b344caf36febe37c46598601e9b12342fa38bb5099578d1a3ff3965616b59b4d`  
		Last Modified: Thu, 08 Dec 2022 01:53:17 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.9-windowsservercore-1809`

```console
$ docker pull traefik@sha256:2b14ba08c70fd47f61e6e7518fa6f1013798ae435fae7c1644b27945bb351612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:v2.9-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:040fca3db9c4936ecdb9886cb291198efe1d09eb78845022a638cb084c9e17e1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1743664682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1457523905e2b9ae708c017365282c216ce2417276e501b7e6e7029f73488`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:10:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:10:28 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:10:29 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:10:30 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454c8a6194acc4d17a157715403fc33ff856eb4ad4874df8fd4de382652f0fc7`  
		Last Modified: Thu, 12 Jan 2023 08:12:17 GMT  
		Size: 35.7 MB (35715041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ba8ec90cb406b2d65f60f16b45509d83c04814448c04eeefd62ac9b9114b2`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d898b90e636483d425c9b0c1010e849de4625c55576ebd018383ff0d1ebb2a5e`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6be478c07d4d001922313eb48012cebedde0f85d16048e3d2910c2688bb246`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.9.6`

```console
$ docker pull traefik@sha256:bb7be8d50edf73d8d3a812ac8873ef354a0fe9b40d7f3880747b43a3525855d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:v2.9.6` - linux; amd64

```console
$ docker pull traefik@sha256:0f22b9ca5a3bacd50c43ca193e1970d825fe2320ffc6222fec1e2e81b9a23393
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcfa08bac2048d7bf0b42ed7437e36642c3b5c69d50c066c8878f033888918e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:11 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba654a7668346da47a17ee986214820f08b0737459885c1978e455f2fe73ad76`  
		Last Modified: Thu, 08 Dec 2022 04:44:05 GMT  
		Size: 35.2 MB (35213478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d4785f200767d12de3543b4bde6788d8440e1e4f93d2e5f13ba6209c2623e2`  
		Last Modified: Thu, 08 Dec 2022 04:43:59 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.9.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ea9683b00db244cdfdeb7a4e44926a50012a3e4e97ba107195bb3963e43c0d39
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2842b30655cfa43420b04ab3c747e43f0aa3aba155e56f46e31197fd8b4d226e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:24 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:24 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:24 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf8c4a655165a1af16447214277c5a8df43ae1f4e88df72a4ce3af29ba0c05`  
		Last Modified: Thu, 08 Dec 2022 03:41:21 GMT  
		Size: 33.2 MB (33242644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1321f5ff5363841027b36118d398f74a2600dfb192d5659d21fae5140bd2e7aa`  
		Last Modified: Thu, 08 Dec 2022 03:41:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.9.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:34b641ad523cd22a83afc174a6b013686be7abc8684c6ebfa4618b8bcaa7e831
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35677019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6ceaacc01552d5a80a9c5464bfc6c6e59452db0368e258ce6996fc916d56f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:19 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:19 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:19 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:19 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727d73b4acef9c8a6e83c05ce5b33f3f436a1ece0f07eb8406f97b6a05848a7c`  
		Last Modified: Thu, 08 Dec 2022 03:30:14 GMT  
		Size: 32.3 MB (32295076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3b15d738b3a6a2c23262c52e870ff32cb1e33d21df336a7f78f5cd9c8246d0`  
		Last Modified: Thu, 08 Dec 2022 03:30:10 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.9.6` - linux; s390x

```console
$ docker pull traefik@sha256:922f92c7c0503cd4fd87a2ab7aca6802eaf7a43b323e07ecc73b842c0da3a832
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37360280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499ba1300caa8e220bfaf785fbdae898b0759a460398cf6f3f8ff20b76f51891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:29 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:29 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:29 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b1d5949447719ac32269c3da4b27b15409777a9fbb3d82720f7d591109c21`  
		Last Modified: Thu, 08 Dec 2022 01:53:22 GMT  
		Size: 34.1 MB (34076312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b344caf36febe37c46598601e9b12342fa38bb5099578d1a3ff3965616b59b4d`  
		Last Modified: Thu, 08 Dec 2022 01:53:17 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.9.6-windowsservercore-1809`

```console
$ docker pull traefik@sha256:2b14ba08c70fd47f61e6e7518fa6f1013798ae435fae7c1644b27945bb351612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:v2.9.6-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:040fca3db9c4936ecdb9886cb291198efe1d09eb78845022a638cb084c9e17e1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1743664682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1457523905e2b9ae708c017365282c216ce2417276e501b7e6e7029f73488`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:10:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:10:28 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:10:29 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:10:30 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454c8a6194acc4d17a157715403fc33ff856eb4ad4874df8fd4de382652f0fc7`  
		Last Modified: Thu, 12 Jan 2023 08:12:17 GMT  
		Size: 35.7 MB (35715041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ba8ec90cb406b2d65f60f16b45509d83c04814448c04eeefd62ac9b9114b2`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d898b90e636483d425c9b0c1010e849de4625c55576ebd018383ff0d1ebb2a5e`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6be478c07d4d001922313eb48012cebedde0f85d16048e3d2910c2688bb246`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v3.0`

```console
$ docker pull traefik@sha256:134da1af7a45cc054b4cb8505a93910bf8dc2c41e4bbf61eb4c42c05ca6a82cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:v3.0` - linux; amd64

```console
$ docker pull traefik@sha256:9de3bab7cd3224e8b6f094a04f3a0ca97163318143959969a338b45b8847c740
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40572147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db280c4d91ff710ab8465bea5fe1be9fa0b9d61284d9a8972cd0458ac880dae2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:04 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:04 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:04 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:05 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca335733a646f97814a4fc776662090ee61e8103d203105239534ccb67370c`  
		Last Modified: Thu, 08 Dec 2022 04:43:46 GMT  
		Size: 37.1 MB (37074895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf39d8be69fc3763b7ae53533e0e2d5d2455100867ef123d15f07f41d71ed87`  
		Last Modified: Thu, 08 Dec 2022 04:43:39 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v3.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e046a60f6ddfb304b1e376d74d12332dc19a8f60c7ed78d5059b0c1bfbb73a7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38287186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c3874e2c29e1570a088910552113fc2e9e05b28cf7988e21383c02bb99c7d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:06 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:06 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:06 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:07 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983fa5f100c0846f457ec75befa2ba1959e9e2826376882e1e7616edd11a5fa7`  
		Last Modified: Thu, 08 Dec 2022 03:40:51 GMT  
		Size: 35.0 MB (34989328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e8d1bc62be2ac8fe28ab7b8112853fa910073bc0f501a02041935a07837f8`  
		Last Modified: Thu, 08 Dec 2022 03:40:43 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v3.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fa3956ce74fedd00ece6395d3dca781144feed4642413bbe215ee92c8e9e7984
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37405464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f553af9730d56bd59f98b6d4939b5fd56f1585250345229672e676490a896021`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:12 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:12 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf943fd83d655ad9905ba09746fe04cd81c27b9b6c147a60586145b93906178`  
		Last Modified: Thu, 08 Dec 2022 03:29:53 GMT  
		Size: 34.0 MB (34023521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f8b93df0de1314c5f40e91f71c6fab1e42c8719eabb805011cd579d7b90773`  
		Last Modified: Thu, 08 Dec 2022 03:29:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v3.0` - linux; s390x

```console
$ docker pull traefik@sha256:02e0eefa83e13f39b1261f395fef62d911fdfc475087d02b6014cba9b628b5bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39139399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9726eb41b796b10605f65f89b5d5433efa2bd3de5fea2b8dff5dc8c72636187`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:14 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:14 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:15 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:15 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694853a91f9d506606047653961379b352db4786351ca12d253bd3d416b51977`  
		Last Modified: Thu, 08 Dec 2022 01:53:06 GMT  
		Size: 35.9 MB (35855432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d3815ef12ee18dd341cbd8c4ea68654ea7c6af7b862e2dcaff0707997bf873`  
		Last Modified: Thu, 08 Dec 2022 01:53:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v3.0-windowsservercore-1809`

```console
$ docker pull traefik@sha256:4e4873c46e1405633ba807d466905287ba16748a64f0ef5d62bb638487770888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:v3.0-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:0812d9fa20ee998bd80da2264dd751babce5c77c51c578d9396860130d5c01ca
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1745532327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ae00dec5210bb28052cf25de60e9ecfc714b8e21523f5185b414e7f85eacfc`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:09:36 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:09:37 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:09:38 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:09:39 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503c8b525fe53b864daad518042ee97e12921ace8b41afc4726c356773bcd06`  
		Last Modified: Thu, 12 Jan 2023 08:11:54 GMT  
		Size: 37.6 MB (37582767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e0478827f4dbc2809903391adcc658352dc2eaf714eb55f55ca9de6054c77`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ef5b83460aa4bef81cc5f121d7aa09e66e20640e36f680ce98f7179cb6d66b`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7253d7c7c3290a1f980222ce35b9a66f0241f0eb0cb83d1cface350deb5ab`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v3.0.0-beta2`

```console
$ docker pull traefik@sha256:134da1af7a45cc054b4cb8505a93910bf8dc2c41e4bbf61eb4c42c05ca6a82cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `traefik:v3.0.0-beta2` - linux; amd64

```console
$ docker pull traefik@sha256:9de3bab7cd3224e8b6f094a04f3a0ca97163318143959969a338b45b8847c740
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40572147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db280c4d91ff710ab8465bea5fe1be9fa0b9d61284d9a8972cd0458ac880dae2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:21:14 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 04:43:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 04:43:04 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 04:43:04 GMT
EXPOSE 80
# Thu, 08 Dec 2022 04:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 04:43:04 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 04:43:05 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b4fe8af5e2bd23c9c1a5303b1d320706bc52330058f23c4725df3dadc9cad`  
		Last Modified: Fri, 07 Oct 2022 04:21:55 GMT  
		Size: 673.4 KB (673371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca335733a646f97814a4fc776662090ee61e8103d203105239534ccb67370c`  
		Last Modified: Thu, 08 Dec 2022 04:43:46 GMT  
		Size: 37.1 MB (37074895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf39d8be69fc3763b7ae53533e0e2d5d2455100867ef123d15f07f41d71ed87`  
		Last Modified: Thu, 08 Dec 2022 04:43:39 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v3.0.0-beta2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e046a60f6ddfb304b1e376d74d12332dc19a8f60c7ed78d5059b0c1bfbb73a7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38287186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c3874e2c29e1570a088910552113fc2e9e05b28cf7988e21383c02bb99c7d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:58:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:39:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:39:06 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:39:06 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:39:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:39:06 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:39:07 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346396c5843930d5c9d8e05ce83d5cc4fb94e7d986b9a31ed533e815c10e155`  
		Last Modified: Fri, 11 Nov 2022 12:00:08 GMT  
		Size: 666.4 KB (666362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983fa5f100c0846f457ec75befa2ba1959e9e2826376882e1e7616edd11a5fa7`  
		Last Modified: Thu, 08 Dec 2022 03:40:51 GMT  
		Size: 35.0 MB (34989328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6e8d1bc62be2ac8fe28ab7b8112853fa910073bc0f501a02041935a07837f8`  
		Last Modified: Thu, 08 Dec 2022 03:40:43 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v3.0.0-beta2` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fa3956ce74fedd00ece6395d3dca781144feed4642413bbe215ee92c8e9e7984
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37405464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f553af9730d56bd59f98b6d4939b5fd56f1585250345229672e676490a896021`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:00:35 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 03:29:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 03:29:11 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 03:29:11 GMT
EXPOSE 80
# Thu, 08 Dec 2022 03:29:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 03:29:12 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 03:29:12 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249449b90f641a1b63eb9b2d4acd49b56306ca96cff71672364a6b3f00c4987f`  
		Last Modified: Fri, 11 Nov 2022 11:01:22 GMT  
		Size: 663.1 KB (663136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf943fd83d655ad9905ba09746fe04cd81c27b9b6c147a60586145b93906178`  
		Last Modified: Thu, 08 Dec 2022 03:29:53 GMT  
		Size: 34.0 MB (34023521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f8b93df0de1314c5f40e91f71c6fab1e42c8719eabb805011cd579d7b90773`  
		Last Modified: Thu, 08 Dec 2022 03:29:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v3.0.0-beta2` - linux; s390x

```console
$ docker pull traefik@sha256:02e0eefa83e13f39b1261f395fef62d911fdfc475087d02b6014cba9b628b5bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39139399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9726eb41b796b10605f65f89b5d5433efa2bd3de5fea2b8dff5dc8c72636187`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Aug 2022 17:41:54 GMT
ADD file:7489fa84133e97e4f40b13dd5159989b3594c9627d9147bfc4e33134944cc368 in / 
# Tue, 09 Aug 2022 17:41:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 09:56:58 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 08 Dec 2022 01:52:12 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		s390x) arch='s390x' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 08 Dec 2022 01:52:14 GMT
COPY file:59a219a1fb7a9dc894a7a9a4718fa97fd24adb0a4a6455240ec2ab0183da796e in / 
# Thu, 08 Dec 2022 01:52:14 GMT
EXPOSE 80
# Thu, 08 Dec 2022 01:52:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2022 01:52:15 GMT
CMD ["traefik"]
# Thu, 08 Dec 2022 01:52:15 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:cdf710f5b7ee39c5124c50c753228dc9b8b1c1c0a1a38f1413487548565445c3`  
		Last Modified: Tue, 09 Aug 2022 17:42:56 GMT  
		Size: 2.6 MB (2606087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84a1ec6f28225d3ff13bc2defe049a19ceecab6d949a0e69884c44e7e28279b`  
		Last Modified: Fri, 07 Oct 2022 09:57:42 GMT  
		Size: 677.5 KB (677512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694853a91f9d506606047653961379b352db4786351ca12d253bd3d416b51977`  
		Last Modified: Thu, 08 Dec 2022 01:53:06 GMT  
		Size: 35.9 MB (35855432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d3815ef12ee18dd341cbd8c4ea68654ea7c6af7b862e2dcaff0707997bf873`  
		Last Modified: Thu, 08 Dec 2022 01:53:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v3.0.0-beta2-windowsservercore-1809`

```console
$ docker pull traefik@sha256:4e4873c46e1405633ba807d466905287ba16748a64f0ef5d62bb638487770888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:v3.0.0-beta2-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:0812d9fa20ee998bd80da2264dd751babce5c77c51c578d9396860130d5c01ca
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1745532327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ae00dec5210bb28052cf25de60e9ecfc714b8e21523f5185b414e7f85eacfc`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:09:36 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.0.0-beta2/traefik_v3.0.0-beta2_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:09:37 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:09:38 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:09:39 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.0.0-beta2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503c8b525fe53b864daad518042ee97e12921ace8b41afc4726c356773bcd06`  
		Last Modified: Thu, 12 Jan 2023 08:11:54 GMT  
		Size: 37.6 MB (37582767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e0478827f4dbc2809903391adcc658352dc2eaf714eb55f55ca9de6054c77`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ef5b83460aa4bef81cc5f121d7aa09e66e20640e36f680ce98f7179cb6d66b`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7253d7c7c3290a1f980222ce35b9a66f0241f0eb0cb83d1cface350deb5ab`  
		Last Modified: Thu, 12 Jan 2023 08:11:45 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:windowsservercore-1809`

```console
$ docker pull traefik@sha256:2b14ba08c70fd47f61e6e7518fa6f1013798ae435fae7c1644b27945bb351612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:040fca3db9c4936ecdb9886cb291198efe1d09eb78845022a638cb084c9e17e1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1743664682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1457523905e2b9ae708c017365282c216ce2417276e501b7e6e7029f73488`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:10:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:10:28 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:10:29 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:10:30 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454c8a6194acc4d17a157715403fc33ff856eb4ad4874df8fd4de382652f0fc7`  
		Last Modified: Thu, 12 Jan 2023 08:12:17 GMT  
		Size: 35.7 MB (35715041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ba8ec90cb406b2d65f60f16b45509d83c04814448c04eeefd62ac9b9114b2`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d898b90e636483d425c9b0c1010e849de4625c55576ebd018383ff0d1ebb2a5e`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6be478c07d4d001922313eb48012cebedde0f85d16048e3d2910c2688bb246`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
