## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:505da14ee66b95066dae9eb29490a243b66bd09d45766acc2e09a0099e1c4a7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `buildpack-deps:scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7a8e8efa733d02ed2cf13e2bcc9c249941bf3dd750e043043c734b770404b341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142878898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c55c6e337db715915a4b5c881ccf3a3c1294ecb3a08eaaee7ce5e1dde298d85`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7b8db92acd6f8afe2e3a46ecd53d66e56b3f35e4cb2f9bfc07d2039016447fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7782538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e4de6732376e541c129b868bdf5cbe83c2612613d82f1ddda567f87e5d1f82`

```dockerfile
```

-	Layers:
	-	`sha256:10d6487174d8c5ee037f0b4c6b43da0c5b24c26113c5f50552892ceba7603824`  
		Last Modified: Tue, 24 Nov 2026 05:21:34 GMT  
		Size: 7.8 MB (7774961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb060d97bb39d1cbe71879caff92944355e8ff9a5a9b6f41440aaab80e49a701`  
		Last Modified: Tue, 24 Nov 2026 05:21:34 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:b6f4d55db57dd9f444484448d9a0c9244dc5c0543e04eed75bd26981c4032d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137301453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf2921e45a47453ba26ef987e4a57447262c11395c59aba0eee28c244ccb2cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:02:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6014ad01ba3bbdd7a5930a9421ba5183b08db4d400276b1280526dcab0eeca2d`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 47.6 MB (47579859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb20858af143effa2a6ff08699aefb8066d30be903ba6746924bc47d13b3548`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 24.4 MB (24363933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c42244bc37ee94bccbe6dff272d7c80ce633f7da5d1920286da439550a9ea0`  
		Last Modified: Thu, 05 Nov 2026 09:02:41 GMT  
		Size: 65.4 MB (65357661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:856bb6267a7ddeff2d0c3a58b1393eba8e9f2abbfd0144f6682100ed01b7e828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3259a71e6c5ddf5c595a357bafef84f99b26e3057fc49872dd2e56ddb7fcdc`

```dockerfile
```

-	Layers:
	-	`sha256:83d3278a82e892d70ecd5a0f29d8b1f0dcdb1841e0bc90c6d69b5a00c9a75258`  
		Last Modified: Thu, 05 Nov 2026 09:02:40 GMT  
		Size: 7.8 MB (7776771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bed85f89c50f5995b600a8af0b47dd1def9ddad9ab5cbe0922fa57d214c1e79`  
		Last Modified: Thu, 05 Nov 2026 09:02:39 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:877b9accf0ec6ae7a4aaedb28ceed9eb8e4f5d796fc13d22c84e32f213d752e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132248985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ca031b3cb713d4265c07f6d82849172b1971471b734241622c0560d3440e1d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206e093b7d6b9756ce6436106bd63bfb623d6bd0cde12e4a8b4c232298b048d`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 23.7 MB (23657477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8301dea1564c32e919589729d3a99d246c0e513c2f4ce53d05c49a87fcba793e`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 62.8 MB (62752711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2799088933b350dea0baf5b144bb66d60169d46a5cf8fe893ffac4156ef41c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90704b24449b6089294386d1bb5fd0c7e9b349e686f433f6d0ebde02e1b1aa38`

```dockerfile
```

-	Layers:
	-	`sha256:d216cf53f8961f265fcd2f1ec2fe710059304e9b7ac4112afbd1a7803bb29427`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 7.8 MB (7775468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71faf48d7bfe92ba2f873d33fa1d453584bf8721accdff54a407fd0e18faadbf`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d1add053e30bd462538b1d608d977209d75d85df7af98d591c9b8fcd928455bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142449960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0097c0ed8ccde04e9e57230f2c3a26589473169747e0511cbe09559858acb2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:44abf0052408148db650ca27a13a3cf1311c3b7cc37dd593647f759543764850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7789667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01131fa1f598e89a7ab148994990690d5d5d0d98a1b92da100bcfcbe0eb9b74`

```dockerfile
```

-	Layers:
	-	`sha256:4ea3cb90ec8365c8acdea61f2f3a8515d3e3355f7bf46d6f576ea9605b4ee1fa`  
		Last Modified: Tue, 24 Nov 2026 05:33:29 GMT  
		Size: 7.8 MB (7781999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:187765de7e5510059067d4315faf1f2c614274f1a6663e90609c91325e1db683`  
		Last Modified: Tue, 24 Nov 2026 05:33:28 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b32b5e8d073d9fb0173fb9ab84b90c739f82b883bf2d045aed56f4bb4f1d19c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147593125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693af99f38b67f6f25e7614252f03b978a0cd4c14d6a83887e83cfa5d160f303`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad941d6d2e360c11be5bab67f076a725561b77784d7d2677f094938e20cc0c5`  
		Last Modified: Tue, 24 Nov 2026 04:41:39 GMT  
		Size: 26.8 MB (26810342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57f569e4512c64e1bfa4a948ff7d606bc67eb9529e900abeea67665fe98f04b`  
		Last Modified: Tue, 24 Nov 2026 05:25:20 GMT  
		Size: 69.9 MB (69857338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f1ff6a6236c833fd0c2c82dd36f09640397f403813709d1ea251abdf0f5e3f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7778649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88423d4ac74d1b569242e140da0bcecea4d4787c66f3df7f1e9ad5c167aed34`

```dockerfile
```

-	Layers:
	-	`sha256:5bb43b384c63ccede74e4ee0b6c8d1b816346cdc1dac7b2551f06d95665aa063`  
		Last Modified: Tue, 24 Nov 2026 05:25:18 GMT  
		Size: 7.8 MB (7771099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:474216fdab9eede6c98ddaa784842a0e62901731047f4921e6f80119ab3a2812`  
		Last Modified: Tue, 24 Nov 2026 05:25:18 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:79e8f92120870f089edd3959811e68e65e2653013cf9d671b446965bce0d9e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153342261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e53921d5f98ed41041f53b28609f7fb14a657895302ea476309eda8e583f03`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:705f1bfe0bd84238cf93150768c9307eef581a756fd7e92d1649ee0727762ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a283da6d6f3ca2eae940c0e1233f77e663c507c50f2473a54321de47c6c6888`

```dockerfile
```

-	Layers:
	-	`sha256:500341a63ae94fe322b6b94a06592d4968bdc2f56a53c0c10552f351137183b9`  
		Last Modified: Thu, 05 Nov 2026 17:27:41 GMT  
		Size: 7.8 MB (7782852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8320a5aa8d7386c2f0749f07c62de343abf3c1a1b3b95a2aa99a4c3eff3b088d`  
		Last Modified: Thu, 05 Nov 2026 17:27:41 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:f2781902e83f7378a911a338679a13317f71732ad3c31f051427625927e5d05e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139578071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb3ae0d919f29a6dcb0eb168d5fce00a0a61f958efa9d5e9b2708c16d8c0ec9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:57:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d09fcfc16843f31e6a8131b39886115ea1fdc3bbc9a4874cd58d30f18e2a46b`  
		Last Modified: Sat, 07 Nov 2026 04:24:28 GMT  
		Size: 25.0 MB (24972690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82501d6feec2e203eb2ab6488cc6d27a4a030dc401b02e7c1049226026f71ce7`  
		Last Modified: Sun, 08 Nov 2026 19:01:44 GMT  
		Size: 66.7 MB (66713146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:827e29c8df6c5f311d3410418bfa3dc5e055b55374f8f08fa168a66768cedc58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7773180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbba9bb3b934bdc6f73ca6470b487b18b0ec3b2f291a92c0efba883befa7693d`

```dockerfile
```

-	Layers:
	-	`sha256:4ef66393ca1291e51cc4b2ff9ddbac3a19750a9d0bc8f0977de84dee3b7f4c23`  
		Last Modified: Sun, 08 Nov 2026 19:01:34 GMT  
		Size: 7.8 MB (7765565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abeff70920fdbaf5ce6e61bba18d5441f5b919f77348af706a81402f4367e08e`  
		Last Modified: Sun, 08 Nov 2026 19:01:32 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2585d46a7246115e338b796aa767bff1f8f6fdc0bc731468527b2feb5dbcc55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144962543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff6e253d9356a10d656358c01a3b226848b65aa2992a2969f34f72897b344f0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fd185c00e81ffed1062ed8be9891165c8b37d090e0cb0a021a4e84026ea85808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736ceac9c31538b92037c9444dd8fc9ca9ea6c5ff1e5a0131f232b616db4515b`

```dockerfile
```

-	Layers:
	-	`sha256:5771c6c9f4d43d034737935a522450283666d033992c236e83ca45ae070278df`  
		Last Modified: Thu, 05 Nov 2026 08:49:08 GMT  
		Size: 7.8 MB (7776646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c428fa83cc042c516842295ac0329a6023aa38fb42524b4a48be3195dd0bc69b`  
		Last Modified: Thu, 05 Nov 2026 08:49:08 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
