## `buildpack-deps:noble-curl`

```console
$ docker pull buildpack-deps@sha256:ee84a4aa04e56168109856b4bf8d828a7600f9ced5e020f59bb952e23188cf0e
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
$ docker pull buildpack-deps@sha256:17d49e04509c78d5665142b1aef9e5e382337d3dd18f8c04a023eb3b021b3815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45740513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05d54be03135276fe6cbc487de09e44c2955f90b0595586187a94834c82df0a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7322d18a23cc3a006c1ae6e9fbd269a30eff0392846ecc5005b1ad5350566355`  
		Last Modified: Tue, 04 Aug 2026 01:15:01 GMT  
		Size: 16.0 MB (15989404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2b0daa8316645fcdcb48158a9ca10c501dedc1c7a1c1e865c7ad1f6ae6606279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2598551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21398257cf00f5e33ce8b21e389799c54554385a134e55bbb7a1efc1b15c02fd`

```dockerfile
```

-	Layers:
	-	`sha256:396738551cb03ff0d73a33fd8588eb93aa54c262d9ccf810d38e95b278a1095e`  
		Last Modified: Tue, 04 Aug 2026 01:15:01 GMT  
		Size: 2.6 MB (2591635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2156f3e9d794b10ab5a8c0e4c460fb16e010cdf7e7b64f455eeaaa4fdeebf1bb`  
		Last Modified: Tue, 04 Aug 2026 01:15:00 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5a6263ada9a09a58a14da923b1866883c93c63e72b5f03ef8f2d4de034cb20a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39611558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51656571aa8e8895499838e89ebfe6aaeda39fc4ffdee896959712dc11d23487`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:36 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:36 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:39 GMT
ADD file:a14f36e5118167aeb083ee3ba0aabf6fcdf633fe1c3297963fe456c1a0cb252a in / 
# Fri, 31 Jul 2026 20:45:40 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:12:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c55214abec85c375f31bae91edc8d5ede87ebb1a3979fe7ba996b347fc559989`  
		Last Modified: Fri, 31 Jul 2026 22:22:35 GMT  
		Size: 26.9 MB (26872495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130fc9ddbe888bd1b5d3f819a88d08ee810e4ce8671ceac68c760d1416f6c040`  
		Last Modified: Tue, 04 Aug 2026 01:12:56 GMT  
		Size: 12.7 MB (12739063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:caea8dd0827464310f7689f08a4bee88ab70cb4cc0af4646322df1b7fbb0731e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ae668f06e0f16bb27787581c0c077edb55e1fa8d315ecd9b6321ddbbce8e48`

```dockerfile
```

-	Layers:
	-	`sha256:e1359f77035bdad9eda6299118b35dc3754beb70cefe8de067d37523f985378e`  
		Last Modified: Tue, 04 Aug 2026 01:12:56 GMT  
		Size: 2.6 MB (2593939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a289972f77e6e9888a98a2fdeb3ff207564286a5a7d6e3129eb46064a7b46da`  
		Last Modified: Tue, 04 Aug 2026 01:12:56 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:37d022cd0033283f7f94b5a642082155da2adba0ba5d3d5765c85dedeea45bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42313363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e5c3b445c54dd5b68f75d4732a7d77a77962621a33527ad986a307aa7db3a82`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a784f55949850d39021043b1951ff7a5b4af0268eeb263564973817984563c`  
		Last Modified: Tue, 04 Aug 2026 01:14:43 GMT  
		Size: 13.4 MB (13426545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ce97567f427c6f3da10c1c63a372c0c1735521be1e37fa307e0c46115c5e5436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2599687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83462246eea1fc36b44e45eb61fbb99c68533d43ad13268a960ad63f424fdfd`

```dockerfile
```

-	Layers:
	-	`sha256:4a28c953278a20f8c250752771dae81bb3833a86c36eb22b96e8ef8a78dc7187`  
		Last Modified: Tue, 04 Aug 2026 01:14:43 GMT  
		Size: 2.6 MB (2592693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96d3989c5afd838129889a5b620c4d2d59524452461036fc44af122233fc99a1`  
		Last Modified: Tue, 04 Aug 2026 01:14:42 GMT  
		Size: 7.0 KB (6994 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b3f274c1831a7eb4e2a2e49ed988d124b948302993ed33e6efb505e0ebb16c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52852123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7470e11f17753c4930540256e926f9b8d53456f33f3d87ecdad7d66b651f21a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:11:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c350e11d5f483251f1b9d29b78becc5fcd8ae3250f81356bafb1c18288892a`  
		Last Modified: Tue, 04 Aug 2026 01:11:47 GMT  
		Size: 18.5 MB (18541450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4fda86e9533aeecd7c9adb6b03cdea995fa639279d50c9c77961d1b48a1d51b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2603202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06968739395ae9696acf06e00a0b2e8e55a19a2026619f90c8e1b2688931c829`

```dockerfile
```

-	Layers:
	-	`sha256:a61900c9b34fb250f54688cc2f7c4ea381543067591dbe21bd8eb9e0aa5b49ba`  
		Last Modified: Tue, 04 Aug 2026 01:11:46 GMT  
		Size: 2.6 MB (2596254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e42e3d42b02ddeba97151b845315bf3147926c8db2351fa0028f6e334daa5fe`  
		Last Modified: Tue, 04 Aug 2026 01:11:46 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:680deddbf988cc4e7e4802a5961ba88e4edd6df7bfb3ea4406409cecdf64ce1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45278372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4b461b545297aa996b874ea068b76ba6c4ddfd3cb138e45249b1936c47d3bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 22:05:08 GMT
ARG RELEASE
# Fri, 31 Jul 2026 22:05:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 22:05:09 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 22:06:18 GMT
ADD file:92a48184ab69ab31b698d333efd875f6fa0f69b8c6b66fb9364e2c45ad98a3e9 in / 
# Fri, 31 Jul 2026 22:06:24 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:762baa88da0248ffd5b4e64693b9d04fc144101bcdbcc6dcc7d9a6be2a8b7953`  
		Last Modified: Fri, 31 Jul 2026 22:22:50 GMT  
		Size: 31.0 MB (30982563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5469f2682b04d5d553e99e19f37ab9af6610eb8845f5588d75b4d1c7edd8419`  
		Last Modified: Tue, 04 Aug 2026 01:15:56 GMT  
		Size: 14.3 MB (14295809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4d74ffc0cb67d3ac756c2b771a5917049937dbc4414010c959e56e143a6138d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955d54d5ae3217036ec84d99d10bcdbaeb6a85e1b95bea8f677e0edcc4ceb1f`

```dockerfile
```

-	Layers:
	-	`sha256:bec1bfb40a425b3497c59a3e84452b24383db486fb06870c259acf4de614fddc`  
		Last Modified: Tue, 04 Aug 2026 01:15:54 GMT  
		Size: 2.6 MB (2585534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f040df6d1eb08a10290117f73cd0d2bb977d99d4d0a448cecc2a746f0ca662bb`  
		Last Modified: Tue, 04 Aug 2026 01:15:54 GMT  
		Size: 6.9 KB (6947 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:da091a93798a0f89229c73a676605f5f95f3bae4f0ecc58c5383bc7a462045c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44828998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef21ea53207dbf7d9554de79b0eaf52a051db90baca3c807dff8a165e419a66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:38:37 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:38:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:38:37 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:38:39 GMT
ADD file:6086e70240c95f713e06ab2c1f53baed9645134bf0319a771ee83e6caa6fe818 in / 
# Fri, 31 Jul 2026 20:38:39 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:11:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0242194990115b2d7490e61c9ecb6222f23310085538217f5161a92e9d2fde`  
		Last Modified: Tue, 04 Aug 2026 01:11:31 GMT  
		Size: 14.9 MB (14893287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4875345f88341e7f6b26bf830f657ee6441b6a8917293f50d3b093720715e515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2601376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ce114bc0c25051987f3e373eba663aa0c47f44229a6bd072da94963c551119`

```dockerfile
```

-	Layers:
	-	`sha256:807dac58877698c632cd1287c6f06849b82ac31c653ff36b1fabe9ebd8515dde`  
		Last Modified: Tue, 04 Aug 2026 01:11:31 GMT  
		Size: 2.6 MB (2594460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f1d3409569b0977b134dc138a0093a29a4a7a97736a1e75cb04262ecb946c86`  
		Last Modified: Tue, 04 Aug 2026 01:11:31 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json
