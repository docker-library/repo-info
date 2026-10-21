## `debian:experimental`

```console
$ docker pull debian@sha256:eb3b582e76764e6d0f4f8281245e51d0defbe2537504144803772308b705b405
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:a023e542a2a86752cf375457d9d451f7a334ee50d480e449c071c6bd63d2554a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49820227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df13944e00a8dff334b75d303203010210fd85bc62c755b6404d523075daba56`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1792531975'
# Wed, 21 Oct 2026 00:15:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:5453c037d55514dd3f320926d3d72f3313936dcd0aa6beb4084ac94ec94ca16f`  
		Last Modified: Tue, 20 Oct 2026 23:31:24 GMT  
		Size: 49.8 MB (49820005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3514406733e6d2ee5a40d05a770ce2a3b4bb9ea2acff91da576d9d60804bb`  
		Last Modified: Wed, 21 Oct 2026 00:15:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:6fb427b47222bee4a7b96a1ac9e9df88e7d19fed3dfcf13f359c8077f9ff6367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032aa0b56069393b0d8a2cbda47c117d9bc2151c3e4fa8f4fcc1e1deddf608b5`

```dockerfile
```

-	Layers:
	-	`sha256:7f6f053afc57905a9acb71c94041f0c943a60cdcd61da8a9134072a2ec707f47`  
		Last Modified: Wed, 21 Oct 2026 00:15:23 GMT  
		Size: 3.2 MB (3174117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06627c686ae3c6f4136b7d041aa9e8db433cafa5c0a43dc18a6d0b47f556fa13`  
		Last Modified: Wed, 21 Oct 2026 00:15:23 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:61e2f6b066f454f40637906380b948f539e382848781b742ccd32b0a0be66535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46007727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4aabee274121689da95d5c401ba4d73b9b8b06768d090e779553b4708fc5174`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1792531975'
# Wed, 21 Oct 2026 00:16:02 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:96354ee887073df0ed862cf67860cd9214a2afeeeab9f16cacaf4c8e1ce4d332`  
		Last Modified: Tue, 20 Oct 2026 23:30:49 GMT  
		Size: 46.0 MB (46007506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95a928cba756835aa28983a52c7094d7c547a9fcbcd700b4a67af43baa9ff4e`  
		Last Modified: Wed, 21 Oct 2026 00:16:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:7328b87b4433cfeb83d3440e6b3414eb83c8e1ec20a7e03e99b21052aea02590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0886b7c7965dc11ef940e83e6bfbfd92d8bdd4988be2ecd03e9f612ec5bbb9c`

```dockerfile
```

-	Layers:
	-	`sha256:e75559f19814161ef25dfd6b10cc79361986de37d242fce60b7a31682d97b39f`  
		Last Modified: Wed, 21 Oct 2026 00:16:09 GMT  
		Size: 3.2 MB (3175652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75e6190fdc4a72cc98168f1c8c05605cfae469c7af283526fbaee3ad4f635dee`  
		Last Modified: Wed, 21 Oct 2026 00:16:09 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:019f1b9e4232afa1644092d729946e68de7e550189278b290198d7c9e7c277c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49150711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a454fd24e62d4649e20c9d7ef91e964de93b2d808e68fc8fe8a4c7c33ddeef99`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1792531975'
# Wed, 21 Oct 2026 00:15:05 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:51a69d21dbe15a3d03fa2c77f33dead05e1a7302611a58b364c8d11c3a86f348`  
		Last Modified: Tue, 20 Oct 2026 23:30:42 GMT  
		Size: 49.2 MB (49150490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982af0097e3db6c40ddabc157232a20c83469d5dab7f395b489bd5a02062bcf5`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:e5a46c500938de84f7d1d41b4782e13129815d9e8041fb9c06906dbb9a5c2af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf2ceb0aca5ef74d8d86833de2c985f3e523fc2e3a8f5ed5eaf1f14468fcfaf`

```dockerfile
```

-	Layers:
	-	`sha256:deb80f7356283e59de20b26d7d0a8d09f8dc8302d876f799e947aac1ed120d0b`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 3.2 MB (3177578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517cdfd07828eaf7e8d825a30c3c8a28fda1f37135c907b884734100a30533ad`  
		Last Modified: Wed, 21 Oct 2026 00:15:12 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:42df34b7ba7e5a35124bf3a163e22e63593ae398fd2494861bb9925784122f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50946731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3f6a094dcedb16e19e4ef3e85a155931dea054e00c0f5a7f47b345eda6a98d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1792531975'
# Wed, 21 Oct 2026 00:15:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:a3ed92840926b0c130ffab7c81aea7b67b352637028ac423a447ae74e5aabaf8`  
		Last Modified: Tue, 20 Oct 2026 23:30:58 GMT  
		Size: 50.9 MB (50946509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca0c8c616c103ecc247160a372b68226a116ff870216f823f4854cef7af382f`  
		Last Modified: Wed, 21 Oct 2026 00:15:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:ef3336c5e8505b184b82bd3f4142808c81ddbe86f6cb4dc95b8cf858376ab9ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f31c90ab0e1725468e8ef50392f2d1fe51fb926528c652c25d4d167a7d36d3`

```dockerfile
```

-	Layers:
	-	`sha256:8785e074f2f50d654bd2e532cf9e8b554545960edf3959ef8be293dff0205666`  
		Last Modified: Wed, 21 Oct 2026 00:15:36 GMT  
		Size: 3.2 MB (3171212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77607a65570c5551967d0fcfdb49cde58f7adce604372277fb408ecd70304ec5`  
		Last Modified: Wed, 21 Oct 2026 00:15:36 GMT  
		Size: 6.1 KB (6079 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:ff2a89ec0fa69de560c8b4e4582c267fef9421b82a8e6412cc2b73959e028ff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54506353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28f58dc1a69c845224f5d964db741262e6bee3c97fbfd02fe4f7af58a0ed61f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1792531975'
# Wed, 21 Oct 2026 00:17:17 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:3ad73717fe80540f26641d9b22ee7e8688e1b6bc8753fcfd67f18081525f5a34`  
		Last Modified: Tue, 20 Oct 2026 23:35:48 GMT  
		Size: 54.5 MB (54506131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692df474fcdfcd2c62e7b59942b17b6b302d1a07025e99fc0aa8a7cc84beac6e`  
		Last Modified: Wed, 21 Oct 2026 00:17:41 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:ab0be6abf14df0d3617a61d3160e0b8fe3c81cd14e4cb6a5ee79b77931fd3619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27da29ffa9d488d498a0d833564ef2bd59ec005d5d4b453e3ac02a8099225e73`

```dockerfile
```

-	Layers:
	-	`sha256:f6cb221cda915cc6f4b24bed8b377c01efdf7331cd1ebaafcf97d2748881ae53`  
		Last Modified: Wed, 21 Oct 2026 00:17:41 GMT  
		Size: 3.2 MB (3177883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2c0f0c74a8739e439c7890d1ab62265c813bb02bfdc5dac1356a66ea6419713`  
		Last Modified: Wed, 21 Oct 2026 00:17:41 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; riscv64

```console
$ docker pull debian@sha256:4efa12a8c997b4968b0d34a64576c61e802c38f5ea772f484edf373a8f0490f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47229975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9a287dba49e29b08275a3e7da5f4748f8b69024d4978b9b2864a1b5d3c341e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1792531975'
# Wed, 21 Oct 2026 00:31:13 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:daf90d54c49ed424f7887f5f2f12058f8a59425c4fa9a572bececa708cb89b38`  
		Last Modified: Tue, 20 Oct 2026 23:51:22 GMT  
		Size: 47.2 MB (47229754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fddd469e8f492c65fcbfeda7baf374d177e450cde9d208415cd9ded322829d6`  
		Last Modified: Wed, 21 Oct 2026 00:32:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:5fef23db93af5a4642218da6b4f27070cee93a4030bb6b480f65877ee8f2bbe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3171799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fe6703d0758d74170990d89b972a458c6c0d5a08832e716660961b726d94fc`

```dockerfile
```

-	Layers:
	-	`sha256:f182cbe3e331c692a6c80305dbe21696cac161f056ee1cf5ec59a0b0e3423299`  
		Last Modified: Wed, 21 Oct 2026 00:32:19 GMT  
		Size: 3.2 MB (3165666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd4315208178e2a94581eae83f40b6c992c722331a0a002df2b5ca9563cafb0f`  
		Last Modified: Wed, 21 Oct 2026 00:32:19 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:afed37b6524f969290a0cf24c6dcef5a3182581cb98a2d671197fd7803d12e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48918502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384679eb3ce5e5e37f80d0c37d49f9f8ee2b8b594191351e9825374cafa20d85`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1792531975'
# Wed, 21 Oct 2026 00:14:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:b86acbe4ed201e441eb76086fa996d4d41606e66281f8b1ab0cc8ce0076f010f`  
		Last Modified: Tue, 20 Oct 2026 23:30:24 GMT  
		Size: 48.9 MB (48918280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858c2858e5518c9f3ac3ff682fa28dba94a4bf1e87846fb5c6ba02d842b722c2`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:fd4f3558d10f7f98bcc10c6518a626d819d81e8dea1399ad8a68b4b8a599e2fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbc2f4b61d894c2e5a995dfacf6dec1795332ad3f4f355208812a566f7281ac`

```dockerfile
```

-	Layers:
	-	`sha256:e1893fe7ed3ea4062c10b22f730ba42dd78c320aafca541baada2c39c2d1f9b9`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 3.2 MB (3175513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d574e8402b1560310d061958c00658767097a720ee3eec412c717f85039bd7`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.in-toto+json
