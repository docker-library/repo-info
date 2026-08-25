## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:5c2356f8295c9cadfec102b2a4e0464b207f82b70f322c67220af8d1b8131fe1
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
$ docker pull buildpack-deps@sha256:92df1dfa992d26ca615c810f944e74db25b978885db516a478b53cb947e18562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78134918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa60f917713e05f580cff99d4b1df0f0d362debcbcdfff709b1da3b0d08ea52e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:51:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c06668f005a26c26ade5e0901dbf29a9a96d7b7fc2d00a4c3606a2bde0748f`  
		Last Modified: Tue, 25 Aug 2026 00:51:10 GMT  
		Size: 28.3 MB (28293164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a512dc321ae6351b966dc1dbbd6c01eb29161e02d605ba4d0f1b0dd9c792aa72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72bc562f8bf13abfa106b20f915a65ebe491a0e47e01cc81d4096fa7570654c`

```dockerfile
```

-	Layers:
	-	`sha256:5afe83caf8285eacd9c11959e11c20320f94141af1d2b0c0e2ab2c61335a92cd`  
		Last Modified: Tue, 25 Aug 2026 00:51:09 GMT  
		Size: 4.1 MB (4092306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c9a93eb1e591130230af7f10d2586d5c983dbec1c48e4e827244d41f9cdd1b`  
		Last Modified: Tue, 25 Aug 2026 00:51:09 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:be4943dc402f8b27bfbee08887573dc35839a63363dacf9467d2fda527bd85ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71700127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fb8a7c919577a0972953a364d3b97d1aab336f08fd7ba40e116d75b99def46`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 01:20:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:251599f66f2d2349f32940dab7d5837b044ff9b8cac629bd1e0c460bd6f75c2e`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 46.3 MB (46273557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5683fd9b5d0caf4addf66a0ad1daa72fd96a18fd429af0d82149494277f5f8`  
		Last Modified: Wed, 05 Aug 2026 01:20:22 GMT  
		Size: 25.4 MB (25426570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b253cd0c59a25310d57b5482202c1bfbddc5776b509cb0c68c7c46f2adda7f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d501244ae00c542fa9891592905d035eeaa2c542cc6f99a45c2d8edcc8e6c0a7`

```dockerfile
```

-	Layers:
	-	`sha256:e6f3236b799c3b5e30d5d377a6cac6500403c154e599c669473d45f38118683e`  
		Last Modified: Wed, 05 Aug 2026 01:20:22 GMT  
		Size: 4.1 MB (4090087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a16a05e05ce7825a49cc067255aaa5351ea2e91b6e74f524f43cc219517bad7e`  
		Last Modified: Wed, 05 Aug 2026 01:20:21 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:691368afb0a1926877f42aa3feba8ab6b53e09fe46f0f9a4a33d58a52189adff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76794357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaadfd2a1ae49b41a48a4a4f0ea0d4284e14316cf04d3db30b551979caa7977e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c30dcbc4c97e074df7fcd51d7bab1f4276ba9cc53b8103961c8f9f5d065057`  
		Last Modified: Tue, 25 Aug 2026 00:53:16 GMT  
		Size: 27.3 MB (27300588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8ff3a3be8da7bf9344e8328164a9c4a500d56fb3ca2a65d2e151e793990ceaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4103285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964a86ada661421e34c17f139b2826df8c46ab4e3c0ecbf5adce91e4b78ac961`

```dockerfile
```

-	Layers:
	-	`sha256:36fd037066aab2bb71f38abcb477e2897f9154f9dbc7f632f322129a34c882a1`  
		Last Modified: Tue, 25 Aug 2026 00:53:15 GMT  
		Size: 4.1 MB (4096444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbc094538e847882b10717a36e416571cedc3c8b5cfbeb78c27435588272e51f`  
		Last Modified: Tue, 25 Aug 2026 00:53:15 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e9bef8d6086714357837ab5b74252bbbc62023beee83950508811b059e33e71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79892973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da542f0e26df1025159823047c92ea744fd07aa57d725a0cddb5ec777abacbf9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a226658853d2da9859299f4e347f1ad8607e8233b4e92150950a20c490a68074`  
		Last Modified: Wed, 05 Aug 2026 00:47:11 GMT  
		Size: 29.2 MB (29190493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7a1543775d922cf3aa5cde5440ff304132b94ab1844e1bb8131bc081f1abf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40873d6a3cebefe1e914587ede190d3a18715b8fb3b7b5e3c86509cdc20617a`

```dockerfile
```

-	Layers:
	-	`sha256:4239f4dba3274fc4adc54e2c814d16508ac3210c7807bfdd1cd0a0b0891a2639`  
		Last Modified: Wed, 05 Aug 2026 00:47:10 GMT  
		Size: 4.1 MB (4085445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebf3a3bf1d013d6961b0995f1a4e8e9d96f9009e1b19b25196525608261b3676`  
		Last Modified: Wed, 05 Aug 2026 00:47:10 GMT  
		Size: 6.7 KB (6738 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0b16ea8ef883d1d34a72fc75f6ad5c5db5473f23f4b2121a892b362f33eda850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84930735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2ff593658372d5c1d755d80df4143d4c7ae717ddd8a38077f46285a5351e20`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:12fa46b5cfd5c50def1ed4867be13066aa1179fd67c6b3ba7af2cb4314775c6d`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 54.7 MB (54700885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1002eea87187cf4278a4278606a4747ecddd440afcaefd5fde08990f58675a03`  
		Last Modified: Wed, 05 Aug 2026 05:25:24 GMT  
		Size: 30.2 MB (30229850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d6cdfb003d6ce2cbd27d3c570c02e70b19c6ac83d3236d82930d3f0e6e2d99e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e777a057f564fa47df5286e9d2a1f2b425136edf9c593076838a347dedf0dd8b`

```dockerfile
```

-	Layers:
	-	`sha256:fa64849567dba7a94b051ed77ea5464dfde965d7b55fa0de219ac5b62153116c`  
		Last Modified: Wed, 05 Aug 2026 05:25:23 GMT  
		Size: 4.1 MB (4092534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bec61230647ef6fca14228bab46bfcb8c24b57cc1a8cc670f714bbc3dee69b2`  
		Last Modified: Wed, 05 Aug 2026 05:25:23 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:2963618278691b630f6750b8383320acf88ea8c36c28c1e354c177305599bb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74816855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56af60743775efb7c0adcc4a0a159fc3ea42acc0922d5f49f39fd2b74cd2f0f7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1785715200'
# Thu, 06 Aug 2026 19:41:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:935a8b7a8a85e4ad6c94cdecece72a76fe398db60a17bd8385e366db5d8bc5cd`  
		Last Modified: Wed, 05 Aug 2026 00:46:19 GMT  
		Size: 47.5 MB (47475901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e792092511b4086c1cb3fbaa83db0fdbefc878d7717bb3bb1da67c9d283acac1`  
		Last Modified: Thu, 06 Aug 2026 19:42:44 GMT  
		Size: 27.3 MB (27340954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d039bddca3607e6329955d5c570e1e6ba3cbe4526e9031031e5f37f116ee2947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4088581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5454cb49fc5aed5bf87dcd61d55d4dc3bd3f4ece03ebf929724d2aecc7947b0`

```dockerfile
```

-	Layers:
	-	`sha256:56657613e9c70963f90a6c41c35560d6d5e6b9c8889b56acabef8b9dab83a8f7`  
		Last Modified: Thu, 06 Aug 2026 19:42:40 GMT  
		Size: 4.1 MB (4081788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1248fa2eaa0c90c236a0c19a5e0de1a4bc6d2626f7adb94bb1c8184d3339e49f`  
		Last Modified: Thu, 06 Aug 2026 19:42:39 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:efb7b0d65d558fdcef52783bc7698d0a3bc836d689bdf6e53a2307e8f6fe8631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76890348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2358fec30b4fe145d33d31b72db42731e0b730dc345d73d02876a9a6900dc3e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 01:24:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bb664b74d9fd31369cd1996da2e710116110371d6fe8eeed4d4bb31513c08ad4`  
		Last Modified: Mon, 24 Aug 2026 23:19:26 GMT  
		Size: 49.2 MB (49248305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20fc89f5edde6d5695357616c3f239d7c896ff2f14d3e719cdc5c4dcfd04f932`  
		Last Modified: Tue, 25 Aug 2026 01:24:29 GMT  
		Size: 27.6 MB (27642043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:da37ae682369c6224462106378c30fdd4d034839374856e9f43a84647d5a70a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4100424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10a6eeae7f515c281c659df53dfce86c43b624509e29a3d9d1b651a617540d7`

```dockerfile
```

-	Layers:
	-	`sha256:e1e42de7745d3508fd9708ad493203f524839991426ba92b16abee1def6209c2`  
		Last Modified: Tue, 25 Aug 2026 01:24:28 GMT  
		Size: 4.1 MB (4093663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a14d4257d2adb959d34d6059d68df64f36322db89f24b7927813321cc7118ec`  
		Last Modified: Tue, 25 Aug 2026 01:24:28 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
