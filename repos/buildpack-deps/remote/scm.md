## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:d524aa66d91264606eddea5b94af462fc3b969b84a1d4083e537a9ab84b579c5
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
$ docker pull buildpack-deps@sha256:02385a934df1a8cff2f9596a2ca936bdf09a380869094130b8d2020600c51989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137306873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d8cc336f23b61a965db76e0b52f527b2d2c820f1b7b5888b780b83d0c42435`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:00:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:81e30cd4e7ae71efcf81deb98233bbae603f424a67d390095c38d0b8b2e37386`  
		Last Modified: Tue, 24 Nov 2026 03:40:19 GMT  
		Size: 47.6 MB (47570818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29a87ca490077f54b80c22054cab3bf32cf8e3c1fe5cce03a29c695ed2cd8a0`  
		Last Modified: Tue, 24 Nov 2026 04:39:48 GMT  
		Size: 24.4 MB (24384767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630eff185c5ed60bf7d671d520e5010b1dd0f6386af977440cfdbddbc7aef680`  
		Last Modified: Tue, 24 Nov 2026 06:01:09 GMT  
		Size: 65.4 MB (65351288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:214a6c44b96a0394cbaa94a7474f883b3e9d14c7a1128b63f206e1dc4e998d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799c66c831c197983ac2a2a326700266de03df69e8990f6811ef5567427fb3f0`

```dockerfile
```

-	Layers:
	-	`sha256:9c50495374daa07dec60422917b11ff9d134b7355bc8abe4d4436c319c137f9d`  
		Last Modified: Tue, 24 Nov 2026 06:01:07 GMT  
		Size: 7.8 MB (7775999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:741a8f3a4e266c0612a9054ebe0d5c94eec045de63f4b1db3398e5e2a9a86737`  
		Last Modified: Tue, 24 Nov 2026 06:01:06 GMT  
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
$ docker pull buildpack-deps@sha256:d7522ce4210f53e750427aedaf0d2007c79db2e07d9fa82db03863fa5260af35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153359861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772b0bddccb92c9c018dd0721e9c75dc64661f74f907a2fcd58f445946d2873`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 06:52:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 14:04:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f511b5b325c69d6a4a96a572a778958b1386314d7c6a837c0a1d614395b62b`  
		Last Modified: Tue, 24 Nov 2026 06:53:10 GMT  
		Size: 27.0 MB (27042631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0c5e858e334a1201fd045983093765bfba0cfd88b8f8f40614e0937845326`  
		Last Modified: Tue, 24 Nov 2026 14:05:39 GMT  
		Size: 73.1 MB (73087385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c1240a55d9970624502cce1e7d900abc13d3821b6cf1bd649d3055fdd552d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7789693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd5ab25fc9daadb3e4bff0a907f519687f25fbed019b38c216a5b3dc825f7cc`

```dockerfile
```

-	Layers:
	-	`sha256:d5e35f438b606bb44d3219104ca31054c45a5c1c6b17ade4630ba95338c78b93`  
		Last Modified: Tue, 24 Nov 2026 14:05:37 GMT  
		Size: 7.8 MB (7782078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:643a26f2d185f2b3cf0ecb4f90cb407ac0e1ad77e547dc9076255fd881385a98`  
		Last Modified: Tue, 24 Nov 2026 14:05:36 GMT  
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
$ docker pull buildpack-deps@sha256:dd8b91f08a4bc16635353b9d19fb9838ee0aa3da61eb89536b279d6eaaa5a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144975469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f0281674ee4793ce7890f6144b2a55002c2ac56c3730e2a77ab6c6f9c9dd69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:53:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3f4ce2bcba42a9f49e1dce7fbd9adaa01993b467a604f99739eb8a2c8ef380`  
		Last Modified: Tue, 24 Nov 2026 04:53:37 GMT  
		Size: 26.8 MB (26829608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b882c152e55bcff64f0d4b9871cc103b5a85e1de8b9ff0bc0015cf9263213ba7`  
		Last Modified: Tue, 24 Nov 2026 05:42:22 GMT  
		Size: 68.7 MB (68663169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:14c321d1e6b6af5e16f4f84617348e61b7635f88464875b81222f3d9098771c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661bbe7c55965d6992c9b86e0fe278a30bf92d4d5a32ee93764817407c3cdbf1`

```dockerfile
```

-	Layers:
	-	`sha256:458f06f97cb2316e0d59e39a3055004fdaa62ffc90cf957518cccc9f5ce1ccb9`  
		Last Modified: Tue, 24 Nov 2026 05:42:21 GMT  
		Size: 7.8 MB (7775874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fedb89da94294b5ead669f8e13076909cd202411f1eb6a6081c7751008d327e8`  
		Last Modified: Tue, 24 Nov 2026 05:42:21 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
