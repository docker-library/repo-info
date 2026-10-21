## `debian:experimental`

```console
$ docker pull debian@sha256:c746115666c732fa25852b126ced76114266d8eb78afa295e6977edf9c0ab4b3
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
$ docker pull debian@sha256:4d6fb86d06617337ff844b898b6329490edce27772d050fd340c992714052212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49811105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485b6d8d52fb49a19ee4c4e8ecfe3fbbab68402e236dc1e5efff962a2a9a7de5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:14:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:c23cf956e2ee2759ad8e6d7f2904d2fccc3b16610bd8bf43b5f5b99c90f29844`  
		Last Modified: Tue, 06 Oct 2026 00:13:52 GMT  
		Size: 49.8 MB (49810884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0af1458248e8c36dd7b8397244f87435e83672cd80c976e27f3af4c2ab4f9f6`  
		Last Modified: Tue, 06 Oct 2026 01:14:54 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:c7e80320bcef02563d9e48400b81bc88db5a368af2d0abb282e4ca4555dd77b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9468229c581f98e1c55e4ea967908dd468cbda8c0e19e20d32b2936cbc8e96c`

```dockerfile
```

-	Layers:
	-	`sha256:5710b09998f69058bbb7fc3e11f4b85aee3584aeeafff9c306088cc2eb4a5a41`  
		Last Modified: Tue, 06 Oct 2026 01:14:54 GMT  
		Size: 3.2 MB (3174105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94334316ead34163be3ecf626202f8bd5f80728fd8b3e682b82a2ef871cf7628`  
		Last Modified: Tue, 06 Oct 2026 01:14:54 GMT  
		Size: 6.1 KB (6100 bytes)  
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
$ docker pull debian@sha256:7da496eb29424bd641e3f12d755f4bbb04b827f898fc0c33898e645b77139349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49137444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df24aac543e5028223361ac90c50f0091882b24ad09f8e0399bcb47835f7f14`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:14:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:c92dd615d1e11c5804e2c740b2eb0e98b40bb3df3f8d18fec4de71f1bc9fa553`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.1 MB (49137223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65371656aebeed10141f19a30efc92d5791ea785de8b764a6d1019b121daa20`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:1c8e0b9e90417222adce5bf5f409401b81fe2cc808c8c347aaaac1043b74b8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dbce0024a34f0fa4c15d0484ccf8b78c445b107e05cc8035f380f7b9a038b4`

```dockerfile
```

-	Layers:
	-	`sha256:2d677c660a487f3b5789cb9b39ce1c7d00a3db3841071bc413232b180a627b35`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 3.2 MB (3177566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:582e43c91248c4d7f8301711ce921fdfb1a7f277cb24a684b1e9cc3d32c0db0b`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:58bffeb46da3d36c00a2674f78fb7b456517e1d1380369d7eb5e0596f8a697c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50930651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d63a1442a2272e1f344d7b9051844cb2aff5f9fef22cf96f3016684affb43d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1f28ae1d38534a9d085e3cd145343bb08f8854370921001f262648e7e800748e`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50930430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e4ec2b9e0d5404820f11d5a3034d42a1ff76d92240ca84b6d484d8d7ccf72b`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:cb571260fd828f1a8bf1c1bbce5491abc080fe9b16765644c373f29a0705b60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e74e19a948bdcff77b4d94d1a161a3b466efe9c206e18a8e8022ca968aa64c`

```dockerfile
```

-	Layers:
	-	`sha256:fdee120722b658750353c63eb546c0d474e6ed64e8fcb63c68856a84f54dad53`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
		Size: 3.2 MB (3171200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71dc274ac2a6548c57c13f5d8a64cae69bdaa672352a44e6a05e48e9e521c787`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
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
$ docker pull debian@sha256:955f9a9168f2314eb79dc6513e6e403c6540e7c341fb295d358c545fef4f2d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48908512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7850a702657ee82e046bca5940310fd66c421096356808ba9d88c623a45394b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1791158400'
# Tue, 06 Oct 2026 01:13:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:bed96751360816a201e176a1212adbca4f146d9f20533b20e81c427c1f56a727`  
		Last Modified: Tue, 06 Oct 2026 00:13:16 GMT  
		Size: 48.9 MB (48908290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a183988ea804cc16aae6fb9806d57fd06afd4e7168e3b8a68807b6d627fb972`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:9f47e02e6d96c4d1c19fa5f7b495fe4df114a7928a139cae6f7519e2f5ddd664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac2f92e5ad7340c0f6ec873bf66b70e46e9d0fe49d06640d47936c98bf9999f`

```dockerfile
```

-	Layers:
	-	`sha256:e3b1474c904373bb963269cb987f0249bcea6ab985811e0ad47ebb83c642202d`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 3.2 MB (3175501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49657dfe6bf32258ade1bc95c08e158d03f7d85046050a78bdaced8154d4528e`  
		Last Modified: Tue, 06 Oct 2026 01:13:47 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
