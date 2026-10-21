## `debian:experimental-20261020`

```console
$ docker pull debian@sha256:cfa51c47e0b1854231c82690cc18e30324b84a759f9fd0c17c3067f59eeb0301
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `debian:experimental-20261020` - linux; arm variant v7

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

### `debian:experimental-20261020` - unknown; unknown

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

### `debian:experimental-20261020` - linux; ppc64le

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

### `debian:experimental-20261020` - unknown; unknown

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

### `debian:experimental-20261020` - linux; riscv64

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

### `debian:experimental-20261020` - unknown; unknown

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
