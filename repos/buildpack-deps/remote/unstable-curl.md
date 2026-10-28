## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:8dd371c4a308569a8aa28be154179c9f02497d8d7a697ef182828d062b2e33df
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

### `buildpack-deps:unstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:29beae85d75e29aedcf2bc620d26eae5e266238a038f26e8ee82a70e3a3c550d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78249785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b116b3ca1f5b47febe090548ae7cfe6365a7302c841d16efcd95f98130a852f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:39:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884f7d59e0f8c4374d204fc3699caf5eaffaa450cb2e287fb612afb10b919b64`  
		Last Modified: Wed, 28 Oct 2026 01:39:58 GMT  
		Size: 28.4 MB (28426836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:302e17f14c5292dbea355ae5ae854f9e63dbf0b7f9a7fcd5b71cd0157fe254c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4074280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4417c8589fd5f9a5b84278a96d17432adef6bcb879d92b2b227ac45398e762`

```dockerfile
```

-	Layers:
	-	`sha256:4f7eecb01111cceee81204f4a93c8d7bdf493bcc9e640019f1d38016ac39b9c9`  
		Last Modified: Wed, 28 Oct 2026 01:39:57 GMT  
		Size: 4.1 MB (4067519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df5653c0ead1e490f4f1f02fe85b3e942ba6efe07e12561eb4d8c7025b857388`  
		Last Modified: Wed, 28 Oct 2026 01:39:57 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:77729acb2d1ac7f86b3f2457c446fa435702e81b299f51a04a1cc0b035b36bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71614894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd85b98f9ffce23e103d8a5cb1d9dbb6352122fa3e01f0385328383c083bf4f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 01:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f598064988d3c8094600909e9ff8509760664a380fe3432f8f5981c4adda80d0`  
		Last Modified: Tue, 20 Oct 2026 23:30:18 GMT  
		Size: 46.0 MB (46007503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d167816f987674560fc1213b3c17081827c05ae811636ec46602862746d0b8bd`  
		Last Modified: Wed, 21 Oct 2026 01:29:25 GMT  
		Size: 25.6 MB (25607391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c0eb802eaefb0f39f88ef5d87b4716a543a04f8966ad6e1ab99d85309703b781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4075166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c545a07f8411f021922fd297c0d18adc6758b80c99ea3687499e4203071588`

```dockerfile
```

-	Layers:
	-	`sha256:edbed005365154869edcf78ab0b7f9e4cbd5a9363ec19cba374ff09a081eda05`  
		Last Modified: Wed, 21 Oct 2026 01:29:25 GMT  
		Size: 4.1 MB (4068341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0728c95f3b81c236700ad90719e5b4376413badc0928f730a614c16a59eb27fa`  
		Last Modified: Wed, 21 Oct 2026 01:29:25 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9bd1bb3b970e99ff3a8585a44b3eb4df5143fef973b63da1e986b0e0a8610939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76589487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea5d4e5d1d20f388fca7970c89d40c4166b4f1704370ccfd3e95b57d2c68930`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68634d59b4ff6ab10de196a616123b4ea6f0bd5427631286fe3cd8a56dd0d79`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 27.4 MB (27439000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4919747067352925cb70070a53ef04997fd752b93910d800e8108cb7871b12e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be2e1030c00881a56d2d15bff349a1434d9a2bc18696b054de0143fb7f3e9f`

```dockerfile
```

-	Layers:
	-	`sha256:0f17e739e6374186b2964fe9f704bde36652bcf8e2e42ada71e3272186d21325`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 4.1 MB (4070189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:854d5ac927ce642b5a7df1cfcfa74aa93d84181012a120597a05cf17b343e1ed`  
		Last Modified: Wed, 21 Oct 2026 00:49:49 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:daa1c1b61396e3194905183ea187b6d6e58bb0bcc251428d88578edc141bf86f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80539425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3b85635c4e8b59fd074a275b22fe086f9ef848d56aa507828389355d6e6e2c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c05bcd3efef8b271823eac41b290f90667d600094b5262f2b9e60ea8a734b3`  
		Last Modified: Wed, 28 Oct 2026 01:43:04 GMT  
		Size: 29.6 MB (29588136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:813abeadc5f3b2d18738cc921943834a235901b1802b2398d577a57ac7a9eae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4071267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215347a0219cb3b6125038ec78f3ee1960c4b58027fed3fb7fcfeb398a1cb402`

```dockerfile
```

-	Layers:
	-	`sha256:ab6daf33a5a485d7950a72b884ec072df27449280ff6fc578d5f04007e38ebf4`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 4.1 MB (4064530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b7cb66a09488e729ed981052a6395905afe7672fb96a5bd0450b40d0ef47400`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 6.7 KB (6737 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:93720c3cd46dcb9977c753fe7a8c6d04c09e7005992fd2c4bf0af2df253242a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85026904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e2f11972b85648921e925576ff1f4d4531c71fcd263ba020bd90e61e89c484`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 04:21:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:63e5bd9ae187ceef4c544fc1a71e296691faaf7ab4bf6b751fe40b99fefa582e`  
		Last Modified: Tue, 20 Oct 2026 23:33:19 GMT  
		Size: 54.5 MB (54506128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01651d50be277791bf0a3e58b881bd744ec2bdaaaa839aa12b094a1e482ce82`  
		Last Modified: Wed, 21 Oct 2026 04:22:03 GMT  
		Size: 30.5 MB (30520776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c6c7e5dc49bb547755f63d6ea496fc040e2ae35718cbc545bc2b491f88eae2ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73990f6c44138815b53b54ab83b0114cbb8365c96e691be223d66be2b0939325`

```dockerfile
```

-	Layers:
	-	`sha256:3bc57f6d71210dc7c02130281a23f41c3d03dd13aec0fb2489df549f9d87a2a6`  
		Last Modified: Wed, 21 Oct 2026 04:22:02 GMT  
		Size: 4.1 MB (4070784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c046d383a0371262652d144fcab28aa81b042276bc2515119d76d874713872e4`  
		Last Modified: Wed, 21 Oct 2026 04:22:02 GMT  
		Size: 6.8 KB (6791 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:d2c6bdfa10c992822d5058245cb9566adcba02f80ef9942b10b84abf5406d093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74810518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38993ef9c9bcf89522a012496ed6bb48c0779b06753709429116a06512aaa0bb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1792531975'
# Thu, 22 Oct 2026 05:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:29af863f47901f0573d3798e2d1e207aa2429f06d14b2d1c48747fc578d89be6`  
		Last Modified: Tue, 20 Oct 2026 23:35:20 GMT  
		Size: 47.2 MB (47229749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7950d5578fe85c450babdcea1474b50a7b9919ee831d6cae6b5afdba749683`  
		Last Modified: Thu, 22 Oct 2026 05:12:58 GMT  
		Size: 27.6 MB (27580769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5fd380b97006f27290c8d917f5b8e8e56e7d498a8fc64fe285cc4ac2848c8847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4065220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df751aee8752db832091814e2a1eb17ab7a115699d60375083c0d34a47429c37`

```dockerfile
```

-	Layers:
	-	`sha256:529b24aeb0a320e1cc4d575b05b8707488244fbc8d45c7a018a01782bc1aff52`  
		Last Modified: Thu, 22 Oct 2026 05:12:54 GMT  
		Size: 4.1 MB (4058427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e06d280723edc85c3c51d8d928834ae5353d6d59fe4a7adc1ad54dff81a924d7`  
		Last Modified: Thu, 22 Oct 2026 05:12:53 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:54a46077610a45a44f255649889fa09bf8e39a706b532576f2bec6e1fa1c07ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76675176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801567b842f0a5f6df96827c2dded8b8c5a3527f2644d1c6817b9685166f8a28`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 02:42:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ed2e8a0473ac3a9d40de716965fd5725a2e604829974db4e80a8ab39edd09cc0`  
		Last Modified: Wed, 28 Oct 2026 00:09:50 GMT  
		Size: 48.9 MB (48926863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f3b22601efff56e082964d2265a7213df35e5e4c10ed288576c2612a3f0f9c`  
		Last Modified: Wed, 28 Oct 2026 02:42:48 GMT  
		Size: 27.7 MB (27748313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2999241422b0c4df7cd4017ef18cb1552b0c910ef7c7512f2561c7cd1d91748c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4075637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cab01d97f3c925de646b151a2fc1d08fa5dff2773d9979371db1a23df4187dd`

```dockerfile
```

-	Layers:
	-	`sha256:8aca9507be7baf690ae8d31331b8131ab4ad28a63ff4a4d03ab44d0a9a5797dd`  
		Last Modified: Wed, 28 Oct 2026 02:42:47 GMT  
		Size: 4.1 MB (4068876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5f186e8423ca08b4402a5671fb1bed260c538156417a3ce384d19460f4098a4`  
		Last Modified: Wed, 28 Oct 2026 02:42:47 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
