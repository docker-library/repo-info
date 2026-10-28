## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:46ff9a83d4ef9912452d38d9557b59b837f22e95abb9ef896734ae66b6527067
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
$ docker pull buildpack-deps@sha256:f6b95323278967c5d2c86bcbfe77b852d11574b4fc52cda36bdd0a108b57e744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71637813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74efb58fe48b7505709efb4dcea51f590d8c4343db68bdb6d7ad9be40a54ac0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 02:21:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4f8c8c9832ba5ab44b1cb736fe733a2663fb538ecc67b64e0a78250794d28137`  
		Last Modified: Wed, 28 Oct 2026 00:10:52 GMT  
		Size: 46.0 MB (46006728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbdac6a50e441fddec66db56e671f3bd4b0bd332067e055f6b30571ca7534ae`  
		Last Modified: Wed, 28 Oct 2026 02:21:36 GMT  
		Size: 25.6 MB (25631085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1d0eb22706fe63260057ffe501b2dd84872932876e310dc2738e854e6733765c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4075996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ea8584e41ecccb06a8127be31aaa5df1824377b6ac768054005e4afce1574d`

```dockerfile
```

-	Layers:
	-	`sha256:63931a1c33ee4fb924d03f7487f2ef276b804b0a7c9b021f1dbc7a944147b1c2`  
		Last Modified: Wed, 28 Oct 2026 02:21:36 GMT  
		Size: 4.1 MB (4069171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:611b66eac36e1e5a543b0510215e1deb26e216eef552909d3e1a38c5d62ecbd2`  
		Last Modified: Wed, 28 Oct 2026 02:21:36 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:cd3d2b9d115ec7730a66fec268b50b05e1c0bd4f8f82a67982779e74d14d0d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76538078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4439eca11f4c72b3da92e2fc40ebb0e2ec0e5a3b383f045560fd7fc8f6105478`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26000dc41a1c54f7e37df3ed2559cbdd938d3e840049d2fa8e784530215c9230`  
		Last Modified: Wed, 28 Oct 2026 01:43:26 GMT  
		Size: 27.4 MB (27368863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4a4297efdc029a1168c6910c429656f224ed3df97237f6190a63a2ef0153bba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a004b391b063a77e943280c4db05268365df79fb38fa706d25994f9ba17ea4bf`

```dockerfile
```

-	Layers:
	-	`sha256:3358dc03655bb01577a90f07d72c197bb20f3e1980dd06a5be8bc7cbe4450b5c`  
		Last Modified: Wed, 28 Oct 2026 01:43:26 GMT  
		Size: 4.1 MB (4071019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0309cee66607fc15e01abfae03fdff2a43dff05e77270cd33f2591ac29a67c9c`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 6.8 KB (6840 bytes)  
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
$ docker pull buildpack-deps@sha256:08889f8d947a0998c37a12ae02f4b0544edc8b6f00d1caddf5ed67f877fa42b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85027726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d4faaee97c4acc2455415262eb994db96a3392d59d099653f9ee362a09af29`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 04:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8e851d2604e88e5c6735eb86dfbb8fcb0e9aeacbdb9899452d64a5249204f79a`  
		Last Modified: Wed, 28 Oct 2026 00:22:29 GMT  
		Size: 54.5 MB (54510378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718051fc13a59ccb94708b59f2848851167c5d68f0214c82f820a7624cbc1ec0`  
		Last Modified: Wed, 28 Oct 2026 04:20:10 GMT  
		Size: 30.5 MB (30517348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1b33b2ab73230dca228be88a21ccadb2cd7d459ef3fcedbe6d66bdd63fc51d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4078408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a3eb52cf930ef6bd9097209f8827dfad943c3d68c8485a4ea6ee8fce9f7eb1f`

```dockerfile
```

-	Layers:
	-	`sha256:8c300420d7892358f6a5e2a89b6e9cbc73c341e1fbc8104dd1c365b2302583c8`  
		Last Modified: Wed, 28 Oct 2026 04:20:10 GMT  
		Size: 4.1 MB (4071616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f557e5944d259eca49e9a2a008c5016bca7a779bb09b3944b6ea046e30d8e454`  
		Last Modified: Wed, 28 Oct 2026 04:20:09 GMT  
		Size: 6.8 KB (6792 bytes)  
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
