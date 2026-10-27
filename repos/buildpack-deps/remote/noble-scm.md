## `buildpack-deps:noble-scm`

```console
$ docker pull buildpack-deps@sha256:9eb8dccd73fd735719771e8589b1a7aceb138d792866af0784ede1a3ea2d6107
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

### `buildpack-deps:noble-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7cd30264921d935e52e399fdbae125f6a5a763e89a5a031362c8f449fccddbbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88727874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b266cf0d83c0edcc4f7c9724207584fdfa715150bd53ef4fb4ba6d967c8e2394`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 23:50:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89972d8150d9eb70d6affee52c62f0b0acf0c3977c4170f1f36004f7e63e17a4`  
		Last Modified: Mon, 26 Oct 2026 23:02:21 GMT  
		Size: 13.6 MB (13587987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c5faf077d5b51c84a3cab6699f37e7dd3f5544c6b088d23f5512a7306c5646`  
		Last Modified: Mon, 26 Oct 2026 23:50:14 GMT  
		Size: 45.4 MB (45372275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cf85603805e87d9c2dcf3bcc56cbc8eabe6d1ff483381f40d984f8a9dab2eecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5265090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83852a4705f12aa4f4444156c040ca8728f122a7b9337ea4f1237d1a876f7fef`

```dockerfile
```

-	Layers:
	-	`sha256:a2a11c5a3824937f7dc60d4e60441f2d8a0cbd9a703b49634c7af7af7940ca0c`  
		Last Modified: Mon, 26 Oct 2026 23:50:12 GMT  
		Size: 5.3 MB (5257828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06d4738a4099ebef88671293d9eba720fd3bee25850db2eba7a34bdfe40fc7f0`  
		Last Modified: Mon, 26 Oct 2026 23:50:12 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:dd19bcf17800e2c7584bb5476a9d78b141d22c041acf4fcbd554412196d3d2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88549414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bc1709513726e64cd0e4fb22c35a6b2974ee39ee48942a083acbf4c24cde1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:16 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:16 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:20 GMT
ADD file:dda3ab4e8a9368462439688ef6efb2347681f34bdd858b2568a5e6611808cada in / 
# Sun, 25 Oct 2026 14:18:20 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8501ddc1d8d73b943a56f981e680c300baa478c682e5a4c6b9b3a2ec8266350e`  
		Last Modified: Sun, 25 Oct 2026 14:50:18 GMT  
		Size: 26.9 MB (26897485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d575f3905a4a0cd34d28b18fa7d7175700985307a7a949ca0543570ec440f51b`  
		Last Modified: Mon, 26 Oct 2026 23:48:29 GMT  
		Size: 12.7 MB (12742984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cce5f83b446d901891559ab45c5fc0027cdca14c2452221f85c94995fc91080`  
		Last Modified: Tue, 27 Oct 2026 00:16:32 GMT  
		Size: 48.9 MB (48908945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:227c9ae232dd7f104c2965f77dd4b5678483a8c0372ce625dc4415cbd843f123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5266452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e658c9a386b12b019f9c46a2bc826459a93bf5b57be98b1a62c362fdcbaf4826`

```dockerfile
```

-	Layers:
	-	`sha256:40dfbf007a0959d13c423cd509e705819511aff977e2ea3484ff71c130de1944`  
		Last Modified: Tue, 27 Oct 2026 00:16:31 GMT  
		Size: 5.3 MB (5259126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba28c769d0cfed88e54bc1481ceb05ded6c4ab4fecaff8253187f3de03641df2`  
		Last Modified: Tue, 27 Oct 2026 00:16:31 GMT  
		Size: 7.3 KB (7326 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f5790e8e3ad8bd8e99d5e2ea8c259e6f0ecc090554fb099ab497a5cc0d2f13ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87692508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7779f22ab09628988e4c2fc4fe2ed23ee60ee1a8c0c39a7cb9cfbfbfd7980e9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 00:16:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fef52e57fa784d25d3b6924967e145017396750f1f1afab13e0c44371b163dc`  
		Last Modified: Mon, 26 Oct 2026 23:08:21 GMT  
		Size: 13.4 MB (13430112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c95e3a7d62a906c536f0643fe99e88aacf88fcf68832eeee964d2481b3ff301`  
		Last Modified: Tue, 27 Oct 2026 00:16:50 GMT  
		Size: 45.3 MB (45322270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6c66613d3a4426d858d4f0bf5b9c45712e3a3bdfbf582879d7eaaded620e118b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5272362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ded0b55e05be7f89fc5ea4dbf6c68039e4b05c0b856a5ec44206ce84628df4f`

```dockerfile
```

-	Layers:
	-	`sha256:2f61df47ffc1530d0714791aae769952c4b347dc8497320f9956541dba5ce279`  
		Last Modified: Tue, 27 Oct 2026 00:16:49 GMT  
		Size: 5.3 MB (5265020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05dac7fe80d6e41bed75c9a6f976620e1a6b866ac8d69f4baa160bbd4f00917c`  
		Last Modified: Tue, 27 Oct 2026 00:16:48 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:3ace5ad278ca92df3c4cc50d7743b8a9ab2a77c22ad45abb95cd55bdbef862d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100683215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0776292a612d663dda1212e2b86bb7bfbe82aae494b6717184ae4660e7cb805`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:04:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 07:55:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8ece447e88c808817e2b3c4d84665fc292fd9a568c9564f16876225020abc5`  
		Last Modified: Tue, 27 Oct 2026 05:04:50 GMT  
		Size: 15.9 MB (15914044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e098e3180df25c49593cbb9d46b207c94c4cc2b63ced4fbf7608b07d783d806`  
		Last Modified: Tue, 27 Oct 2026 07:56:20 GMT  
		Size: 50.4 MB (50390863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e96638973a9b91da0f784f2544f9445e8398b98b981b66aa586d226084d1f3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5272976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80029d6bf97ea1a41a5769b7605713d0a1790c529f81ed8d56b2f2573e753348`

```dockerfile
```

-	Layers:
	-	`sha256:b6d44eb92dc6856e4d9038616d465e679fbe88d4fa72f9136345a83a8782b583`  
		Last Modified: Tue, 27 Oct 2026 07:56:18 GMT  
		Size: 5.3 MB (5265682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aeeaa8db64e85cab895b47bf7c37ccc69576f399e2aa324e036c6a12b6a1b22`  
		Last Modified: Tue, 27 Oct 2026 07:56:18 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:e41dc0a2e5fbe29de2de36f9d0a3cd159d7fdbf6eb3c0010caa01fcbb173712b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99176653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d87ac04d52c9bbbf85e6ce0e65adcae35b13774e4d158f71d722542167537d3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:25:26 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:25:27 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:25:27 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:26:13 GMT
ADD file:902c2a17706a401d4186db6f76d930ee8d9bfdf11a18905ad7b4475895533666 in / 
# Fri, 02 Oct 2026 08:26:17 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 15:33:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 18:47:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6ac3b4459b1cfc53476c9bca2bcbbd91ffee22c902b3d5791e258f4a99455cf0`  
		Last Modified: Fri, 02 Oct 2026 08:36:44 GMT  
		Size: 31.1 MB (31052636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1689d34234489fbefe718435a7aabcd393ab99aef7f7f379ac4945759a7a0ed`  
		Last Modified: Sat, 17 Oct 2026 15:34:59 GMT  
		Size: 14.3 MB (14301726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2448954b09dee75ddf333534733989186be29c631cdb5c2e64eed92f9de583`  
		Last Modified: Sat, 17 Oct 2026 18:50:41 GMT  
		Size: 53.8 MB (53822291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:83b4b15862b43a2f2a1b351b45488321f49e7d4528244a4787b8af1050b474de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5256150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678525a1f1eb95f0ae9cd4f9af59eea32ca255b22acd4ab6f18f10890cfaff34`

```dockerfile
```

-	Layers:
	-	`sha256:ef7dadb85f1c8a46985018c759db80ee692dece4d7aa7de3a8191b6e6dcfcf76`  
		Last Modified: Sat, 17 Oct 2026 18:50:33 GMT  
		Size: 5.2 MB (5248856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b73e0274b9d0a466afa87835881ab719f2ed72bdc2b81e71590ef69459c20a6e`  
		Last Modified: Sat, 17 Oct 2026 18:50:31 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:66bb4797d4b592dee1270fddf0494b4ab8997943e3afd7c0c184f6dde35e46c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91652759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53ac9fa8b6794dba4f4d08a6d9eef964f7ec8c44bc17fdf3d545ad61550a130`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:35:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 00:28:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21fb53bd8ff8eaf133b24a1fcf6b4535a8a3cb1dd51908862e61702a0df3a54`  
		Last Modified: Mon, 26 Oct 2026 23:36:00 GMT  
		Size: 14.9 MB (14897450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0934cd87e878228d6ed02dffcad040879bfd8bab77015d4dee7e35f2f753f392`  
		Last Modified: Tue, 27 Oct 2026 00:29:06 GMT  
		Size: 46.8 MB (46808259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5ed3f5f0e59bb59e0133cb844a6fb069004a3666d45be626c027441f4b4d920c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5267422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa07d766b58171a814620e212baa424f05d2b56a6b70b857aacd5bf791a543a`

```dockerfile
```

-	Layers:
	-	`sha256:0ccba463c9719c907f7ae46a60ffd970117cac1afdfed44873764600fc1b8564`  
		Last Modified: Tue, 27 Oct 2026 00:29:05 GMT  
		Size: 5.3 MB (5260160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8392b5c074f456e766be44f6fd5f71aa29680f428e7cd01e8642886c8f59ea7`  
		Last Modified: Tue, 27 Oct 2026 00:29:05 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json
