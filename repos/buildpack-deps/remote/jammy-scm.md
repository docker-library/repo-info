## `buildpack-deps:jammy-scm`

```console
$ docker pull buildpack-deps@sha256:0fefad1c54d0164bf4c12a9656c1d8d8be99fe63254e29d9bad1709739ef962a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:jammy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f4b7c1c22a3574db2d72a4e2ffa82bf6154cf08eed29e65217628aa0644e2993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78630219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2f8f8d216c20c732c0bbb091fc939b2691ef7254581968516c4090629a0bca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:15:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01f147b039ca3d9deb3290009f996015194eed6a0b47c5b0f5be91cb0d7f013`  
		Last Modified: Wed, 09 Sep 2026 03:16:07 GMT  
		Size: 41.8 MB (41814684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d2f2e04245e5ff2de27f4e7751a16f0c6611f27247ad99aa691e2ce2d80e5377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5803758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bcf493ee64e7dc0884b360d181f46c76e1a92a0447e321768bd32d99f9d34ca`

```dockerfile
```

-	Layers:
	-	`sha256:42bcf6bf97acf0158e145bb910c319df6dda4a652d960a6034e47054ee35510a`  
		Last Modified: Wed, 09 Sep 2026 03:16:06 GMT  
		Size: 5.8 MB (5796478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58bcbb281a48ccfcebf4d383b4eedc20b2dba01c963a28478d871ea6af138798`  
		Last Modified: Wed, 09 Sep 2026 03:16:06 GMT  
		Size: 7.3 KB (7280 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b5673704be55b928a3f2c5674b0eb99d55e3ad98bb3c603bc88c930f0f1d3a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78181074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12eea2bdc79d319f3da6099b30df9ec5fb777ed03736a99b83c327105e77268c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:44 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:44 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:48 GMT
ADD file:3964c8b3085bc8973d824f786b55dfc8739922f8c0ba7540b52cc99dc2a74672 in / 
# Thu, 03 Sep 2026 12:14:48 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:12:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bfca8bdd141e37c0d0eb6a1ccbc63661539547c75fa38334423103a13cc1b0eb`  
		Last Modified: Thu, 03 Sep 2026 17:08:34 GMT  
		Size: 26.9 MB (26854708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4fa30935ed39b8b11ec50809c1cf140bcc5ffc79b841a9e49e270fde9fd37`  
		Last Modified: Wed, 09 Sep 2026 01:15:33 GMT  
		Size: 7.0 MB (6966495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62b9b82c890d6324ab8ccc72cd8c1d4c8aae952f748e5de4319184f190efaa7`  
		Last Modified: Wed, 09 Sep 2026 02:12:21 GMT  
		Size: 44.4 MB (44359871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ab1ed07e95456ef5c4c552d1a75f3a6e9800e5b79988e3ee0b03d3435b8276ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5805103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c94b6060272970de272c59213a3ae77ed1ddb9c01b58c371df95b4034983bff`

```dockerfile
```

-	Layers:
	-	`sha256:0636b9d270851f1a7a974bb953db2aabaa62582c0653e38476b90df6684bcb3b`  
		Last Modified: Wed, 09 Sep 2026 02:12:20 GMT  
		Size: 5.8 MB (5797758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54828da2442883711117828e91c801883b9db9c05310a95d485f03f59158080d`  
		Last Modified: Wed, 09 Sep 2026 02:12:20 GMT  
		Size: 7.3 KB (7345 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ba502eb25608e605ac659bbfc6092521b2b897943eebba5e69d22c9ae974e9a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76393469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e72eac1d8c32164f679b7db0e0e4b6a4664e6a5e839cb6428ca9e22ed2f6ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:12:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5127e66642f6fd3c7222657a113f4b5989c00ad2269e10ec4e17513bfdfb7c`  
		Last Modified: Wed, 09 Sep 2026 02:12:28 GMT  
		Size: 41.7 MB (41691021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f5c384b073ba469375e0be13c557a4c4d20b29a34140857faffbfce73b4c00a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5810233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bb156b733e0d4ff9d8e4cee29fcca9c7f0f4d8f70eb1d818670984762933ae`

```dockerfile
```

-	Layers:
	-	`sha256:a2a2fad618b7a8c4dc66be5529be4be70f145ee9e94c3f34fa24d3caf5c08682`  
		Last Modified: Wed, 09 Sep 2026 02:12:27 GMT  
		Size: 5.8 MB (5802872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a3d9790345768499bc6b182de1afc60a09116f5886026c3d975da06b0a121a2`  
		Last Modified: Wed, 09 Sep 2026 02:12:26 GMT  
		Size: 7.4 KB (7361 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8cfb9b5ac757c45bf50d2079d23df7c518c804fef1a650b1794ff1c4b7c56809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89106421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f75482ebb3b5b926cd8d876559fe05ff607909e6849fa09e2a6f3a902e9a509`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:21:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:53:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7192fd2ec6aeab42844efa7a3c3464380bbe0390589a83523f21dba5980eeb9e`  
		Last Modified: Wed, 09 Sep 2026 01:22:26 GMT  
		Size: 8.1 MB (8145338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb7d27ac27ab5731673489858f6a98d1bb94c6741964df32bdb6f49766c561e`  
		Last Modified: Wed, 09 Sep 2026 04:55:04 GMT  
		Size: 46.3 MB (46258404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:da2e0e1d4f6f55dec4b4a084dd1d0aaafba6d668b99332bd6d1d139362102f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5811635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9bb9d5ee0036219590dffe19b3ba708a62cffbbd240fb48873225f31bc4e7da`

```dockerfile
```

-	Layers:
	-	`sha256:782b1a3dc0af6248a84c098e45eb66539d27a86a1017b6073ba04d9d247df791`  
		Last Modified: Wed, 09 Sep 2026 04:55:02 GMT  
		Size: 5.8 MB (5804322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62004da77241759f768cf6fcb2e5de8eeb3421b2133cd166a1d6886c0a00cd58`  
		Last Modified: Wed, 09 Sep 2026 04:55:02 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8327d99aab04bf3da1f608cf7ac9c123b8600aeeacf5b26d16e388bb0cda806e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78798988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771bb43491aec5124fd371fde943f5a34324a57b4e20c548beb6abc429bc58b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 13:13:37 GMT
ARG RELEASE
# Thu, 03 Sep 2026 13:13:38 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 13:13:38 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 13:14:31 GMT
ADD file:e7ebfcc9293c77772284fe8db01e32767f4bd638e50d0ab6c253090570c3f1b5 in / 
# Thu, 03 Sep 2026 13:14:35 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:47:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:77b79c0283744d00298c0eb4b8b5295466b2a44d4a6328498f8a886e68257a40`  
		Last Modified: Thu, 03 Sep 2026 17:08:48 GMT  
		Size: 27.3 MB (27301076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49db17c8594077f04ae6db72664b25d79dcd990046462f07154eb62b123c6cdb`  
		Last Modified: Wed, 09 Sep 2026 02:13:39 GMT  
		Size: 7.1 MB (7075881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a353119c86ef25e05b3623f7f2641092e55da67e384ccc87acb41c44dcf979`  
		Last Modified: Wed, 09 Sep 2026 04:49:32 GMT  
		Size: 44.4 MB (44422031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6dfebc061a33d5543991b08ea5d7d9db1cebde8df6b3f8270ba67bc0b3a3cc5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5795549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b8c86c0d1ea27f1855257e44acc95f343f789cfe0a738d4741874fcc1a6a42`

```dockerfile
```

-	Layers:
	-	`sha256:bb9459c619ec18698a18ff7ba5afbf4df909c4840151a3289fcf7eb91b4efd6c`  
		Last Modified: Wed, 09 Sep 2026 04:49:26 GMT  
		Size: 5.8 MB (5788236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c844389caa0dfcfba6f31da6f0aa5a28d649197cca277c2aa6c8ab491ac1b5b`  
		Last Modified: Wed, 09 Sep 2026 04:49:25 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a9322ce9a187ab20449c349b6665c15e08adbc156e66d1d4d3cea8b9ec1f4646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74623166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8c89c666f4351e7e2d6081fb147faddeb21697a31356ac3fd7b83f8a2772f9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 00:07:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:09:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5e1d4fc4d05b2b731bd30501593986ca8bed1115300d026890bedad4a714a0`  
		Last Modified: Tue, 18 Aug 2026 00:07:43 GMT  
		Size: 7.0 MB (6974512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d2c4ab93052b27679d9605bd40dfa5336afff3eab7f596ff4280fa713adffd`  
		Last Modified: Tue, 18 Aug 2026 01:09:46 GMT  
		Size: 39.4 MB (39437751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:af41ef9baba4edc74a8fd4a0a45cfce752ccf1b88fd8116a23557a93b926c266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5804638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2beef35694336a5f6daa412c6abaca259eb68504215397cafd3d2ddc3b7957f5`

```dockerfile
```

-	Layers:
	-	`sha256:0a2cddf7d8e2f33862c3ba3c5e4324e120b62e1e932d2137501ab459523201c7`  
		Last Modified: Tue, 18 Aug 2026 01:09:45 GMT  
		Size: 5.8 MB (5797357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd87e509b607622847a8ef7e47e3b9cf1bb4b6426ac1adce7950f670188b93b`  
		Last Modified: Tue, 18 Aug 2026 01:09:45 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json
