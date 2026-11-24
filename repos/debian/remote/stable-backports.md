## `debian:stable-backports`

```console
$ docker pull debian@sha256:b1c322497227eaafbec5da1a862b0efc7bb0595e698cb8a2b4e6b556964c1345
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:57d5eb7acf4c1f781260b9c6a203659343fcf7b5fda93551cb9364d042769bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49409512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f07804c0b4c956a9034fa2588ff09cd3de835b8a2287e7eab8ffed7f836f82`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1795392000'
# Tue, 24 Nov 2026 04:13:24 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3b51b323b0c171c636a00c55d037a594b992934279f2341d50438c46b2098ab5`  
		Last Modified: Tue, 24 Nov 2026 03:40:14 GMT  
		Size: 49.4 MB (49409289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca49cb2df585f54e867160fa8ad523e40befb1d047c9fba533ef9adfd71fd23`  
		Last Modified: Tue, 24 Nov 2026 04:13:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0205124276a1bfaa11d4f00c65b67bbb92982f51854d0ec54f91f867494366b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600d2cf5978927ad67ae6cdcbe2f3db8b4c9937a0cd160b8dcc0b31eda58bef5`

```dockerfile
```

-	Layers:
	-	`sha256:48002059f16cf298f965d1e049472760054db1303431894ecb637e88c7b4498c`  
		Last Modified: Tue, 24 Nov 2026 04:13:31 GMT  
		Size: 3.2 MB (3180104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62b63032cc855b99f73358b33da1cbb133882f73042b2b28cd6cdd3c3372a411`  
		Last Modified: Tue, 24 Nov 2026 04:13:31 GMT  
		Size: 5.8 KB (5782 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:b606a51525afe6252bfbfc2fa4f993568842daa41f1c4901b9330b82590a109b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47571038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf83aed1be4e169ba3d778d6bd591c89566a5614078d4dee19dcc82da64995b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1795392000'
# Tue, 24 Nov 2026 04:12:41 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1568d293f6eaaef970da42e362f4d6d2125ca25281b0bdd35ea9565040f715b4`  
		Last Modified: Tue, 24 Nov 2026 03:39:29 GMT  
		Size: 47.6 MB (47570817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c811c7a1cd685f92164bdf696841f2781ca81919a32134f47b03860ab78ff713`  
		Last Modified: Tue, 24 Nov 2026 04:12:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f6b19cce4c31c57719dbcf4983497287fd41892142dd06f796f7761b8d1da3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a0366e919a8f3e83df45403f5f6cf12b74f2780c4fa107cf73d5ce9e029a07`

```dockerfile
```

-	Layers:
	-	`sha256:4d07564f9360fd1b157adb552572e4a7fc139edf0a3bbf90850ecfd2b3ff7c54`  
		Last Modified: Tue, 24 Nov 2026 04:12:48 GMT  
		Size: 3.2 MB (3183041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e24ab31931841f881968aac66d34de26c582c153d450f4ab2923131d343eb98`  
		Last Modified: Tue, 24 Nov 2026 04:12:48 GMT  
		Size: 5.8 KB (5839 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:9ce3effc94a51d59a84d8c79ddad0c3cafb57d790716adf8ca72868dae0f583a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45839024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44799f6fdb01cbef32f0f40ec78944d77b5b46d178a83ff8f9cf5c13b99b212`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1795392000'
# Tue, 24 Nov 2026 04:13:21 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d871dc858683a7f202387170b6827f92121ea961f8dd46b20150e1e082164e55`  
		Last Modified: Tue, 24 Nov 2026 03:40:14 GMT  
		Size: 45.8 MB (45838801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9575b83befaefa2caf7aab673970a7d445847ab684751e8dfc3d6d75de962e22`  
		Last Modified: Tue, 24 Nov 2026 04:13:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f8d0495fd81b9eb190ebe900bfe2a757c2bcd081df131a334a0d232ff2968eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c0a2b11915bdcbceeb7e9f298f676731ef14f13d84d558206287729753978f`

```dockerfile
```

-	Layers:
	-	`sha256:ddffd4382ef65df33f6ae61f2dc7225333c3c9f8162eb883596a883cc2762b03`  
		Last Modified: Tue, 24 Nov 2026 04:13:28 GMT  
		Size: 3.2 MB (3181478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9530045af98f6b256549fb6a9e7a2c15085a812281149190dae3979ba6a32649`  
		Last Modified: Tue, 24 Nov 2026 04:13:28 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:217ca6b05af67c2d1536f658da12166235a5a2124a8a1d71f58cd31663b1f555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49770309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc04bed3957c3f8f2723cf77e2cc6a9e97bd14ceb3b13ca6e7415c41c840ef88`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1795392000'
# Tue, 24 Nov 2026 04:13:10 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:63ba5aa70d470a096482f66a07910982a200272b2853a56198a0d1df543c7be2`  
		Last Modified: Tue, 24 Nov 2026 03:40:24 GMT  
		Size: 49.8 MB (49770087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce896efcfadf50f8f7c7d223c206fe6fee0663ca62b292e813590075d29f599`  
		Last Modified: Tue, 24 Nov 2026 04:13:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:aa9060272635d553de2c173adcde3c742192aee3e7eb8b06836a5ecc24f88783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b64c845d3b114f306146e7b1f24c008e96ec044fc21ba4496d711548e0b7f4e5`

```dockerfile
```

-	Layers:
	-	`sha256:3af44bfe66546726e8b18796a544b91e09ce05ead0d30570b3d4af24d28425ce`  
		Last Modified: Tue, 24 Nov 2026 04:13:17 GMT  
		Size: 3.2 MB (3180948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9641fd85fbf593cf0c49cb3c5822c61919912c4d29d60dab6b98a036406972f7`  
		Last Modified: Tue, 24 Nov 2026 04:13:17 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:21a1f945f98a1215aa463c99e77ea6e6bd02148e7d9066fa7f9ac26f1da8284c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50925665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d7a22f8296eef148fffefb8a248808904acaf43cade916e60f0c1d637ab776`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1795392000'
# Tue, 24 Nov 2026 04:13:26 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7f382cdfb62067cf7428699e7d42273bcfacd90224c427e6ff545d09ff98ac2c`  
		Last Modified: Tue, 24 Nov 2026 03:40:18 GMT  
		Size: 50.9 MB (50925442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d9d05aa91383f0debca6157bdd63a1b63916c5e72d0d4248599342bb2ed667`  
		Last Modified: Tue, 24 Nov 2026 04:13:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:042a193c3d7566cb6eec90b90859baa2e14bbc2a453d90541ee1d19298f2be47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e621b7669db594fb584749b7cba31f396adfb0e219588b7a8df65e4066f65871`

```dockerfile
```

-	Layers:
	-	`sha256:9bc8d39f3c997a6bd6d2ef29f1bd45c01e63131d4ef7bd7c997ad13956d1ee67`  
		Last Modified: Tue, 24 Nov 2026 04:13:33 GMT  
		Size: 3.2 MB (3177308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a31108c42e2ac07e657ab46721fd91e4eeab5cbc0b680d0ac8bf9937695f2a`  
		Last Modified: Tue, 24 Nov 2026 04:13:33 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:6cd3b611100493b4a1833ef01362e04c22697c5b468b4ea6c3a72e61092f2403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53230065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2741feef434037c6fc942eb3c3143f53b3756065b9ea1e3ea0f4b9ea56f6fcba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1795392000'
# Tue, 24 Nov 2026 04:12:40 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1523d25c917e0b232c93dd6ab465716bfc3d031b8c3857f2c53e572bb4b5cd0f`  
		Last Modified: Tue, 24 Nov 2026 03:41:37 GMT  
		Size: 53.2 MB (53229842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd3c995c0fbc782df83e333736528d6f7ba474aa587b52ae38161072c91442a`  
		Last Modified: Tue, 24 Nov 2026 04:12:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4b05151199966a5545117449435b93fe52e5408b53e722fc06598fd8fbdd0f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297db8b600ce15b696b2b3f37b5bc1c33477f45173bd88e1c21b03af2762b3ae`

```dockerfile
```

-	Layers:
	-	`sha256:1d1df1fc973a71983bb6da4bbb60823c049d321afea492d9763f0a8050ca746b`  
		Last Modified: Tue, 24 Nov 2026 04:12:56 GMT  
		Size: 3.2 MB (3183613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4425a755b2b2208888fe88b9272bdad6c2a1268d0c064f8190e1f9343b32aacb`  
		Last Modified: Tue, 24 Nov 2026 04:12:56 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:69d99f370ed1b1d19591192e93e43f697463b8158d69965808ddbc492d4c12a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47892453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c066c4de50c13bc46f4f973cfdba550e86243f3c836cd441699fc0badf79ac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 08:43:56 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:25011dd3d007dbbe426da6f63a92af28d5933ee685b1da3c7853ea582e859de8`  
		Last Modified: Thu, 05 Nov 2026 07:28:57 GMT  
		Size: 47.9 MB (47892231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ca07c1fea0f2edc98c7223e02f03799dd47e70f25d7cd3dd021199e5f914b`  
		Last Modified: Thu, 05 Nov 2026 08:45:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6a6d14788441a3b5bcca134be783c458bb1e6eb62ce45e0ec737a7e88a96e743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1107771d6923a8f7b320f83c1fb7df5cd4183633ac4cb96de5dfe530acb08143`

```dockerfile
```

-	Layers:
	-	`sha256:4a089ce9679bcbd18b7b713d97e1a6e9544a5d735142a2feab5548686b318a6d`  
		Last Modified: Thu, 05 Nov 2026 08:45:05 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d070f4fa6496524644124b87e91f1c6f592f0fd6315627c2fe76a918e352ed9`  
		Last Modified: Thu, 05 Nov 2026 08:45:05 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:f1bea65794cf6f93c8834288b0136e9b4706002a10a5d0aed85033736bb3a6ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49482918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522cbf5a76551aa0ccfa7c976d4b7f944971388cd5d193cac24c9b07e42c752a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1795392000'
# Tue, 24 Nov 2026 04:11:51 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c907268c8d104324a17c9b052b5829f8e76376596e57551e9f35d16506402693`  
		Last Modified: Tue, 24 Nov 2026 03:39:33 GMT  
		Size: 49.5 MB (49482695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6914843f429f454f2850fd82eeeebe61c9ecba8018e1e0db8be028fbdba5130f`  
		Last Modified: Tue, 24 Nov 2026 04:12:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:fcdfdf858f2812493738eb5a6b91a8765ca54af1bfe945c6c36e125b9e70f21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0abd3e26c72e6e537a08724df250f7ea64043364ba9328d695af51c3b27e4ad`

```dockerfile
```

-	Layers:
	-	`sha256:f3da1e6e5893f3277a7a86c16f10eb6da52dfa24351e4d82669b8875a0c4fa72`  
		Last Modified: Tue, 24 Nov 2026 04:12:01 GMT  
		Size: 3.2 MB (3181551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3419850c43894f1995bb867231cbb45ddf5ab9a4ff1297c90d3b135182ca12a9`  
		Last Modified: Tue, 24 Nov 2026 04:12:01 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
