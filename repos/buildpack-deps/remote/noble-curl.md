## `buildpack-deps:noble-curl`

```console
$ docker pull buildpack-deps@sha256:20153d0e51926e10ed2e2c17343edae0080e4537fa6d613f784b6f64d2df0b69
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
$ docker pull buildpack-deps@sha256:19436829fc28e3b3d9242ec90c23ab74feedde670470e2baf33cf5fd6ea9f8aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43350847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199599f3867e96aa60a2cfa5a3505d6d88dee632cd75f10934a03f7845f217fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa7a218f8e2ea560729ade214ebc73bb37e6655551bc9221ee3baebc3448116`  
		Last Modified: Wed, 16 Sep 2026 03:11:58 GMT  
		Size: 13.6 MB (13586731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a35b1a349c168c7a9c493149fcae786b432b3876c96fea2045ef7318c1fb32b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2598575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8ba12cd2bc883933760f53dbbe61657d69830fb71868a4430f8ba4fc7f8f4f`

```dockerfile
```

-	Layers:
	-	`sha256:ecb9483deb001f01e13c5e9371adaa4d5bcf4fcd80bb00058e1e746f9d2c1a2e`  
		Last Modified: Wed, 16 Sep 2026 03:11:57 GMT  
		Size: 2.6 MB (2591659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8228121c7894735260e74a1baed983d110cf9235a47886ff8cbe3ed9a1e5296`  
		Last Modified: Wed, 16 Sep 2026 03:11:57 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ca1fe91fd114c7f96eefabe374ccd67c982f2d09f95789ce66a4c51f92f7405c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39636604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeeb603af0ede13d3dc848307da44fe969358102336784837ab3f23e9227f22f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:45:45 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:45:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:45:45 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:45:48 GMT
ADD file:683b4c146da2addbd0ae70d2240b8e3a57dd2f7582c952d416231fdd6496720f in / 
# Fri, 11 Sep 2026 11:45:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7867dcd16a4e1dd7124ed6479d53021bc3ffd5a61dd37b66aa67ef49bbff33`  
		Last Modified: Wed, 16 Sep 2026 03:11:21 GMT  
		Size: 12.7 MB (12741679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0b1ec5e4e5e25301f4f98657ee8c926acdbdabe9e25f8169a006c731729810c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3973ef5581177947d2af91a8abe3e9683fe6cd69871d93cad5037b4507dac42b`

```dockerfile
```

-	Layers:
	-	`sha256:64980c430b6ad9f04c6f8c48cbc6d604efd79f59de0caa48972b292d8f39aa15`  
		Last Modified: Wed, 16 Sep 2026 03:11:21 GMT  
		Size: 2.6 MB (2593963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ce67df37db4f4868e092400f34c43810356114b72fa506eae69e321652eff3`  
		Last Modified: Wed, 16 Sep 2026 03:11:21 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a14b5b3acd907aa0ba4336cab1b2965aaa891f2e6bce64028534f9dec9015fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42372632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4047c1b61c1295341fa450f40a0ccd2309062711058be27090fb261fb82954ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1920e6b8d397e1b7767e3e1634d68d0bb16c9f20bfbad4de457ff9000dfc455d`  
		Last Modified: Wed, 16 Sep 2026 03:11:37 GMT  
		Size: 13.4 MB (13431052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4933c82cc5316267c14775eb84961bb5f6417ed8f21ab1d6fcb8e6e5c098a637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2599713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f17ee00bcb74444713c5fc51e2b33422f5c1b5d74fae169a475bc432e0c36fd`

```dockerfile
```

-	Layers:
	-	`sha256:54e35d5d99cf123aae6fb5fb045f608c6c5b94c9bbcec1783576c7ebb3e46e72`  
		Last Modified: Wed, 16 Sep 2026 03:11:37 GMT  
		Size: 2.6 MB (2592717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53f9ab78a3c0bf3514f214822bc28b4baf2f14324ac871865b20c0dc62d31c71`  
		Last Modified: Wed, 16 Sep 2026 03:11:37 GMT  
		Size: 7.0 KB (6996 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4544f044f3674176b3f30e763d93d4d96062d6fe591f34adf3dc432d73809e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50291753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6236a09967355d8ab34574e6fb5c89a9fbac7b7abe627f4e33dbcf79e447be`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 06:44:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb38d31ef3f1ef764251762eab36e1e4339f9b85ee3d6ecc79887237a849131c`  
		Last Modified: Wed, 16 Sep 2026 06:44:48 GMT  
		Size: 15.9 MB (15914795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dbedfd96f6756700487085e2cde4a2e743c79bfd43213dc819d1fc53cd094c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2603226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84c0f53d7c8b271166de6e7464b935aaf8c79f8dd11f563988b6d34531f7aaab`

```dockerfile
```

-	Layers:
	-	`sha256:1f0b20df6300739173d2f5b02442fed2c06c785c3783e1918625010262249a96`  
		Last Modified: Wed, 16 Sep 2026 06:44:47 GMT  
		Size: 2.6 MB (2596278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8159d8d04f3f38f58a2c47c2783e5a69b3f632b044ce498723982198152bb9ba`  
		Last Modified: Wed, 16 Sep 2026 06:44:47 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:a762d78da33b1222cf6f1b5418e48218958bb61926b9a0b48ab63e91cc716779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45353302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9db13ba2272b4c25703e5f2cc9257dd3ba8b233ec268e74566854d3f51a7e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 13:13:20 GMT
ARG RELEASE
# Fri, 11 Sep 2026 13:13:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 13:13:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 13:14:28 GMT
ADD file:0347a49c8424872a16c193cce85674e478b1e7045067852c419ceffbe1e8faa0 in / 
# Fri, 11 Sep 2026 13:14:33 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:30:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067285e08e7e2cc209363743e94cf2c4e32e562696770fe1d39819327636a8ae`  
		Last Modified: Fri, 18 Sep 2026 18:31:49 GMT  
		Size: 14.3 MB (14300700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:723d1f6c84d33caca0222876c6499ad9f1e1784112dbd5962fd969af22da0061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce9b033fcf12a5a3e946a747f9ce2bbdc08b24d4ec4e545d966d138d600afba`

```dockerfile
```

-	Layers:
	-	`sha256:1578fd1000c7094c3da24129fa69283e49c098c84d8fdf21862244e9756b9edb`  
		Last Modified: Fri, 18 Sep 2026 18:31:47 GMT  
		Size: 2.6 MB (2585558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ec12381137f62849def6a65bd65981314fabebf9db16c554dd675b4d13f2a63`  
		Last Modified: Fri, 18 Sep 2026 18:31:47 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:457439e0e916ef3a44e94c60e49404845d9f82a3eb1ec2f34d5a0dad015ff84b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44841761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf6fc58f95b766b9e82fdcd997d2bd119d64ac228f2a1fd5ed86c3880c2a361`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:29:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7f1d6c3e072d4a76575e889c5314a91dacadf4036d9470d4b40a7197537569`  
		Last Modified: Thu, 17 Sep 2026 23:29:23 GMT  
		Size: 14.9 MB (14896369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:46d2a9c2920df48267007d1aa40e18b6c9f0026b893e4d720ea890643a622eeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2601399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7043548e1a32a2d9f31519b9abeac7cfec41ed0534d8c658b78b87c10a4b602d`

```dockerfile
```

-	Layers:
	-	`sha256:0831abb9748117eeb1413ddde9b012ef8a22e7e6d03b9378dfe6dd8ab593798f`  
		Last Modified: Thu, 17 Sep 2026 23:29:22 GMT  
		Size: 2.6 MB (2594484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28e1667e9a5f3601459eba6d9e02947d2c5ef9d84669ca4098a991e8d06c0c6e`  
		Last Modified: Thu, 17 Sep 2026 23:29:22 GMT  
		Size: 6.9 KB (6915 bytes)  
		MIME: application/vnd.in-toto+json
