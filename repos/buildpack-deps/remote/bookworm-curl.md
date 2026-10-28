## `buildpack-deps:bookworm-curl`

```console
$ docker pull buildpack-deps@sha256:f5c5d07ea24ee91272739fe451c280aa4b7fa5120b9278815db5fcd713d83772
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `buildpack-deps:bookworm-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a1c89a59d56245724cc8afbac1150c88385c2e7f7fd705ac988b1579ca421064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72397798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212a7198f48ceb2e6c42535994d44e6a7de01e0cdffba0c0c665f1a55e461050`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1b4e7abacb8a49c06d15c2c27524eed0ba51cadc1ee9660a53a9409ceddba85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b079f118463dbd49f82a75af55f2f20f7897a4ae72d8f0b422054d71b54ede98`

```dockerfile
```

-	Layers:
	-	`sha256:1f0a7e2d2963c6e61cff96507d717538068761bcf60bc2d18b158475cc837ac1`  
		Last Modified: Wed, 28 Oct 2026 01:39:42 GMT  
		Size: 4.5 MB (4516799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916f3e50075207c698e9c8cb8a972082c0eafd9eba5a4a4acf25097157560072`  
		Last Modified: Wed, 28 Oct 2026 01:39:42 GMT  
		Size: 6.8 KB (6816 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:193c77c9572c0335d09fca29f0f58a443cb01c83dd689e6c81f0f845d2d0c937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65991433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b564126300420fa883875cb481c12960d0a9bc315d1c5233c465804c53b85453`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d557b4f6d7f3732e2d0a10701c17cc9dead0f0b335b0a43f14429ad23612740d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941ebbae5f78ee01ca86ac8b95563a2d7800ad9fb0689ceee17afec78d0ee05e`

```dockerfile
```

-	Layers:
	-	`sha256:808783f00491e114251fb7d0f6eaccfb9d2bed53c5ab2051bbd0957faf4c1997`  
		Last Modified: Wed, 28 Oct 2026 02:21:27 GMT  
		Size: 4.5 MB (4519088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa0df29bb4dde3f5100ce45636c3459d69e7cd6be2112039b892efb41f7837e`  
		Last Modified: Wed, 28 Oct 2026 02:21:27 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:faeae109fdb76686db5e97185a2f907079e8d4ddc66533080fd38d38855a2690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71844928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074fdd2e89121c2540504c0dd46c575ae55aa3d53b304c3e2a5f410cd7a76ed1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cc195ae343cf3059c69deab63fe965d1a34a82511bb76828f65a42385d627552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02389c8be0ea63cb16c3622ac4bf8d590a3a081f46786bd0a5eaa219dbe7d1b2`

```dockerfile
```

-	Layers:
	-	`sha256:1ac59a64c5843bca35435caeee21ec5236eb555289fdf414169c1dd1fd098d26`  
		Last Modified: Wed, 28 Oct 2026 01:43:14 GMT  
		Size: 4.5 MB (4517060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f6d6f25795bdeb1d4b4aec768febea7171507f1b3f221bef648ee6a13fb547c`  
		Last Modified: Wed, 28 Oct 2026 01:43:14 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d29f1207d2337e24e35e39e3f6c43b98546100ac66ee7fd2832d2dc6b18eade5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74216762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ec07846e2349db74a8ff7b8c63d9b9f559105e10ca117e06fbfee9439446ea`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7d013cfb99f9a659ec5a70c7dc91ff3a30fef8cec1975cdded7a6450f2dc79f0`  
		Last Modified: Wed, 28 Oct 2026 00:10:25 GMT  
		Size: 49.5 MB (49513537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c427ac0282c0d463802a24e053ae8fee85e1e035dd9990480227e0565ac7a8d`  
		Last Modified: Wed, 28 Oct 2026 01:42:52 GMT  
		Size: 24.7 MB (24703225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e83c539c77164214e02ebd0125dba20c9411d62f0377e9ac0a0024cf4feaeeac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93cfe8ac28ebde9b95ad945d6567efef46261bae86766f49a085ce2996bfe881`

```dockerfile
```

-	Layers:
	-	`sha256:2833dfba53d706cb8d69e670c6660629fb43973254bf90670cbbc441f0de5511`  
		Last Modified: Wed, 28 Oct 2026 01:42:52 GMT  
		Size: 4.5 MB (4513920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6e5c9f08d5d00e8746b850bb988246a2ab5e21a15ff5effddb6049bc6575970`  
		Last Modified: Wed, 28 Oct 2026 01:42:51 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:bab16ba90059567fc3f79b4b8d3b89d6d940e85924c69f77da8c00071f2b831d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77881273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73635d8a218f6385a87cf8718b763f0e80a12a508e2b8e634fbe055746d93d66`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7339b62b6463010208cd0f9bd95fca3c60b698cdfeeda413d511e883ce2f291`  
		Last Modified: Wed, 28 Oct 2026 04:19:13 GMT  
		Size: 25.5 MB (25514966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d15c11ec1bd8ac73bd10f292efd55ccac5a621512f9e64e7cf134bce2c70907e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4528270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42aba0defe9cca7c4de0bc291a55292718f07e37a69a0125b67de7ea4afb1eb3`

```dockerfile
```

-	Layers:
	-	`sha256:f710280d4c0bc0d0fcfc4dbc612d18caa8554efd4c513be17f438b68fe8401d9`  
		Last Modified: Wed, 28 Oct 2026 04:19:12 GMT  
		Size: 4.5 MB (4521421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7815dccd988e5a521d591287a122536ca6ec1e09e9d93f677ffe699b1716e420`  
		Last Modified: Wed, 28 Oct 2026 04:19:12 GMT  
		Size: 6.8 KB (6849 bytes)  
		MIME: application/vnd.in-toto+json
