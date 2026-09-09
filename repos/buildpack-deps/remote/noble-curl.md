## `buildpack-deps:noble-curl`

```console
$ docker pull buildpack-deps@sha256:72568611956362e4af8c7e3d839c5ee1d14813a569e7eefb35f7463e4eec32e0
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

### `buildpack-deps:noble-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f2f29be551024b224fced30abef3b297748b2158a86ea3c4238f8ed61af0ab85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43349390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508364212753ea68e0e42fb30cb0333e427c7630ff0caeebb66e4f4f9d950238`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f72da9ecdca45a65023b1c25391108c4cc731a1427adfcd959e801ee85bc5f`  
		Last Modified: Wed, 09 Sep 2026 02:12:42 GMT  
		Size: 13.6 MB (13586137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:49a4960b687fb9c40881e1fda759a671cab07808097b6d269acec61a01ff7772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2598565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb08cb3f7462fc6d6f6389f0f88e963279999ac29696e6a11ba68871ff376a2a`

```dockerfile
```

-	Layers:
	-	`sha256:a4d8c272d649c27a4d4b66b8411d9b8a1ac8cce2c11ba0d893c8d833e879187a`  
		Last Modified: Wed, 09 Sep 2026 02:12:42 GMT  
		Size: 2.6 MB (2591649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce82327bb108542e83c62459c1b05a82a934539c4b25fac0728d010c96a99224`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b37e7d11e644c2909df1fcd540cc7223e119b70d992659ee0a0074df73632b3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39635431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e545cc2920620989f6b5e10327d5d8cae90b6c5850d804c129e46df7127160c1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:50 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:50 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:57:53 GMT
ADD file:7b24dc56d03ed9c6ddefab76dfb3e7b8bc4eafa9059d2a0ed52016ba82b6d110 in / 
# Mon, 07 Sep 2026 06:57:53 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2c98e8ee99c3e9905d854eff5f5f0fff270d9f9afc085063b8bc98145a2f5f5f`  
		Last Modified: Mon, 07 Sep 2026 07:57:11 GMT  
		Size: 26.9 MB (26894017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac350a77aef078a00c34a878dd3fa3d19b6bd2f94c6d3cdaa86bbc9e7e6038a`  
		Last Modified: Wed, 09 Sep 2026 02:12:18 GMT  
		Size: 12.7 MB (12741414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:adc7e428bba4082861bfbb07e0f2453ddc378e3be859d218f2865338a03c483d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e305fb77e94215bd52a663f0850017b800b9037bac11fe859e063bc17910eb`

```dockerfile
```

-	Layers:
	-	`sha256:78ffa246220b751dc25924c33206b790e45c8c77b54a0217cb6d13ac348336c0`  
		Last Modified: Wed, 09 Sep 2026 02:12:17 GMT  
		Size: 2.6 MB (2593953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6806d55b27632d8456f5ef61bbe57ce43f9173947ab5693d202fb62ce892890`  
		Last Modified: Wed, 09 Sep 2026 02:12:17 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7dbd450279daf1919121171d44e442b271e71ed8fa579d3ef4d1b208904aeff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42370037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4be06d32510295886542bece44f699cdd0b2767c5e8745320dda5c1a632787`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d97f4e0d598717ab921bc277de852539387cf680a05c69d0bf89f48a83710e`  
		Last Modified: Wed, 09 Sep 2026 02:12:27 GMT  
		Size: 13.4 MB (13430022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3f23f4cf02dc900715ad060515ad7a7a0c9a2e247c639d1c7cbdf2cd02ad4ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2599702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853da560a5a2726d20b01f4e28ca6bc31fa0d18bc1973d8cbf6cc5197dc6d1a8`

```dockerfile
```

-	Layers:
	-	`sha256:14faffbe52047498478fd82889624f66dae6bdea051d3a54dc25ad6697b99ad6`  
		Last Modified: Wed, 09 Sep 2026 02:12:27 GMT  
		Size: 2.6 MB (2592707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f4f015d5e5cdc1d0dc8664f72f3b98de9ef63974d0145410c29bd7121ecfa7f`  
		Last Modified: Wed, 09 Sep 2026 02:12:26 GMT  
		Size: 7.0 KB (6995 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b55fbbf0a58c74ac44ccc3f2758a38eea59431733c74871bdc27ff999a8b349f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50292386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7791fe1d0239243e4befb8b3ff80ba5cb34f256da98dcb64db3e0c672341926e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:26:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fd789139c90474cd14d0f1d64890b57524ae7f44613110a6629eeb565746a1`  
		Last Modified: Wed, 09 Sep 2026 08:26:52 GMT  
		Size: 15.9 MB (15915507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9815dc22d08406fddb23e05c20e3c1ff90769eef17614b4120750e292306ddeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2603216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101a0d2bd91e20d0d55442f25ebc43096458cce75db8174816444456c1fa5796`

```dockerfile
```

-	Layers:
	-	`sha256:06280092622946524528e98d75a81f39cbba3fa4d573feb2d5dd644822a97af0`  
		Last Modified: Wed, 09 Sep 2026 08:26:51 GMT  
		Size: 2.6 MB (2596268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:768d54baf60d8f48ada8b730e0bd40c12d5c72c3e2f59811ae68a4b12105e9d8`  
		Last Modified: Wed, 09 Sep 2026 08:26:51 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:6c1a55e2170db70d96a217781a425210dcea869221d208e9af071318bcb53719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45348590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db69816995ce3be448d2faa5ca7d285e85d88225d15c525e01c3558ba06eecd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:15:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593967676d34c758aaa75b1e147df2837aee53580eac5c06a35abbfcc082e1c7`  
		Last Modified: Wed, 09 Sep 2026 02:16:23 GMT  
		Size: 14.3 MB (14299388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d4c6cb383cd51c32ef52f83121bc18b9dd41739f0cc3aa515cbaa413c2ff178f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c24155f5012de0ae0202a71f2220fe7c31541f0ce005304654979af77036456`

```dockerfile
```

-	Layers:
	-	`sha256:e22c81f618f72e0b83a9a05227cc91f6dec51411c66234d72e9b7ab94b39507c`  
		Last Modified: Wed, 09 Sep 2026 02:16:21 GMT  
		Size: 2.6 MB (2585548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b2fbea84152f8d6087a4f2a92a1fa5dd38e10aafd8d8604946bae173db5c5c1`  
		Last Modified: Wed, 09 Sep 2026 02:16:20 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b0c4fddac57b550ce96cdfa8bfd765da5451ee79cadeee200c9d962a38cf76ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44828755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba349eaa7a446fffff5c8a52f87eea02b6bc0c1189ca0f6c05b437049e4da24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:09:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184cf2513eed8c4446aae4a061275d88056c73dd044095facc400ab5828a8a48`  
		Last Modified: Tue, 18 Aug 2026 19:09:58 GMT  
		Size: 14.9 MB (14893500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6d7472400edb85bb0b68d27e44a89a79845e4f2718e5a3cc298f054d12cf2c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2601376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7ffe43c21b3fff783bfd4d65706b062b3a7d95d820ad44f8371bda4bd9d1ba`

```dockerfile
```

-	Layers:
	-	`sha256:45623157038e29e4cfd11f63b08532e193f9d9937cd1d892a3cd6f7e3a974b82`  
		Last Modified: Tue, 18 Aug 2026 19:09:58 GMT  
		Size: 2.6 MB (2594460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6af3d1d844e7e3c4b8139f484249b4ac3e93012b3255f1992f4e51552214cf`  
		Last Modified: Tue, 18 Aug 2026 19:09:57 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json
