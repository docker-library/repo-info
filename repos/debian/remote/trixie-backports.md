## `debian:trixie-backports`

```console
$ docker pull debian@sha256:96031e9923cd9ee1ceeffae75849c9386476006df0f8d13c9b3e0dbfa31d5868
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

### `debian:trixie-backports` - linux; amd64

```console
$ docker pull debian@sha256:4dd3bc5ef37e3e9b080914fab8522921879b17450f1ebb84c1b5cba27fb8c906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c14eb88f4629df11fb5393e08d749988e954b109d22b073540e4e4862a3b57`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:10 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0d15a890f4385454d9788c559582590979a2513880a740681447ddeed9a81b`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f58237b6c09f908148002d60358dcd267d88c59c605eb6b4f7745557309b114a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3176775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0102138b6894a29bda18d8508b079b039a4b048e9a3fa5be196301f982038a82`

```dockerfile
```

-	Layers:
	-	`sha256:4cc61ce98828c1ad30dc9d9e92ea9efa098551874fa215035cbfe18dfddf23d2`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 3.2 MB (3170991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89ff111330a86f4b657d34c0d7902492616809827ec4fcc324bfaa6f66610d0`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:f2a0c7c85ec3519d11e1429b25c72b1ce9f12f91e12a9f013bb3de66c2ecd296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47490190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb362cfd28a288f2ca914cf2b11683d1c04e771e40de49f04f944b7ab30e940`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:58 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1ad99c59586600a5647dd3e6e12fc8c9b5e12a7e7f8e1bd39b7df82072afb746`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 47.5 MB (47489966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f0004e9554d35b58d3a79231f14b1c18778f6000d31486a4fb9fc8f16753cc`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9b00765975de90d8a0ed59d70899d96d556846e2e4a5ecaa65572310778f84fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b894e498d3c0b291a45ffd2296b1d7d958869fdf59bf08df7cfb0f9fed5fea`

```dockerfile
```

-	Layers:
	-	`sha256:a11216f5d37f247f25f3979f91c2297f8462c2efca4e5db45fe3feef858f4c83`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 3.2 MB (3173928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c8e01a24d16eea430d1c4ad8fa333790dd1b9fd8b1c3d80c652bd548436d9dc`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 5.8 KB (5839 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:9dc48b34e662f43caf5278015441a88284e5804309092b03e5f3f2c8dbd2f4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45743953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f957050e352390df45498855da539d8eff155730fa0095ebb7932a88c79e8ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:47 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f308ef3f4f29c6be6eee6d956f2e98a97b7effb00befe8cfb740c200e447b2`  
		Last Modified: Tue, 14 Jul 2026 01:15:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8985d41c2f4f126b08739b3b2a6211681e190a649db267972c1342df2a20a0c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6612e6de00a976ebb33c6b69359f58b5505c2e22959dc35c36567743ed5e272`

```dockerfile
```

-	Layers:
	-	`sha256:dcbef84c41e93a0f85c018621c17cd1615e9bc10a74affa16c817f5aaf653880`  
		Last Modified: Tue, 14 Jul 2026 01:15:54 GMT  
		Size: 3.2 MB (3172365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:191ff40d79a2e8ecc0e67ba4fb98015728603479c0034d2955880277acc71cd9`  
		Last Modified: Tue, 14 Jul 2026 01:15:54 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:7c04ab06bab97bef8dfb717f809bbaff562d48bca7339475abef21628eaceeb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49674408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c40975187bd830e4392b7ae7138b1d44975906221ebf8311552be9625e24e9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:57 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f0004e9554d35b58d3a79231f14b1c18778f6000d31486a4fb9fc8f16753cc`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d926e500890b14eae1d424d05558f8de9a5b8153767e8f9f1b1e522c140778ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:978883550d14e40dc013bebb258195387036d2ca7dc7f0fa67cd12a6415e7cff`

```dockerfile
```

-	Layers:
	-	`sha256:0829ab4556decc8bc5664cb11dd781668124123ee373da733f5cce6b80306f27`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 3.2 MB (3171835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73044eea00213c658b9501c6f443a4c5638067acc059c43dbbc178bae9406d6e`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:69a52589007a8f1a0921292ef033e1ba9436f702a97d46b3a04eb3056a9d6d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50831712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e9f6153e2454c87462d0a0b7ed28bd5005bba137515e7e26b3255a8ea9809b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:18 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca916bd4e86a48b6e3448673cc6df8b9afa9d81c1328d962ce9d5887647bfcf9`  
		Last Modified: Tue, 14 Jul 2026 01:16:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:22bbad5ef3a7959e885a8b27d02179994c80c63564547d80b69b6f6034e2c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10500141fd02ba6ddb125c6058712f2fc7ad9dfcdadefe8c204aa4813ff064a9`

```dockerfile
```

-	Layers:
	-	`sha256:0aa1534cb142c85242960fb5290b14124a844bfcd234ec66f7fa277caf54329d`  
		Last Modified: Tue, 14 Jul 2026 01:16:25 GMT  
		Size: 3.2 MB (3168193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d751e5457b1524800e3b0393ae6faea1ab31f34b113caec3ca907c7090293fa7`  
		Last Modified: Tue, 14 Jul 2026 01:16:25 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:7d8945133cfa74e3382c2221e7de4c48eb570f01bebd51ba9abf173b4a577e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53134235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db68b006cd7b90cb8d13084132aa7dde4884900d51df0609b49ce5f02c39c4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:15 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef71a182129eee1dcb61ae1780f36e7a1a033e4cfce22dda885294055da795fd`  
		Last Modified: Tue, 14 Jul 2026 01:15:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:954e8bd3c88bc9c103b67d1a59f5d048f6b715bc9990ae74ffea6a647b1b9a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faab3a94038b0cbf6f4eafa29cea74592b66e36efc3499eeedf398194329cd55`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8923bb42ffd57ada405eeefb1e151c261e1142bfcd8b0469a6f0622932e5e`  
		Last Modified: Tue, 14 Jul 2026 01:15:27 GMT  
		Size: 3.2 MB (3174504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eea3a37fb95b67a7867675c678b955262fd6e894b6d01601d81f1ffd03baa43`  
		Last Modified: Tue, 14 Jul 2026 01:15:26 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:1f48632f11887630aa26863ede5e9a93d6a466c83b817c2af9d69aaae250646b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47798012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993f7989ed144f11115437b3e69c6da8c1ada39fdd3638907c27f1f422d60fbe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:52 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3b6761664ee64309406635b6031c9fbc23849478cf77b4c50cc52c5a5a142dc8`  
		Last Modified: Tue, 14 Jul 2026 00:28:46 GMT  
		Size: 47.8 MB (47797790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec586f51293f5ce71d1d7c0365c9e113914d56d5ed6c5b7d00080bb01a9078d0`  
		Last Modified: Tue, 14 Jul 2026 01:21:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cfee98532b92cb9d6bbd6359ac25bafefdca74cf85084a6f37f89c83b82e0a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3169126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a1d2b3ab06910cede4cd4c6f5b1385de79732e87996be7e17ce0702aac624f`

```dockerfile
```

-	Layers:
	-	`sha256:ecca1ca329a33c7a528c32e8cf18d7fc76ae06d759a9d70496ff1c2ce442921d`  
		Last Modified: Tue, 14 Jul 2026 01:21:46 GMT  
		Size: 3.2 MB (3163316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01be46e5db088f393d4914b420226753ed8d6f8c292c9b18823b812edf265ba9`  
		Last Modified: Tue, 14 Jul 2026 01:21:45 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:0bded292828b2fb00d2caed44720c6ebd76a5a0f3280ec7da23f4515a1fbc845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49381931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d2b6921512a37e4bb9fe0a1b8dd57d18cbecde60878453e40f7d07f9f6897e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:37 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7454d0fbfa8f7dec3c9e439df7fa0ac600e3b78db8d58defe9399fe1322dc597`  
		Last Modified: Tue, 14 Jul 2026 01:15:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1eab0d0425c8fb52a3f76fe9b808ad7a003a466fb5a645fe2e52118984099998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04083d75f8925153fb83c8e9342fff7e4a223fca2d1a703b24b54720f5b8748c`

```dockerfile
```

-	Layers:
	-	`sha256:a76a5891f349cb7be62800bf8cd5359611efe39464ba25d19b2ca35e6b6d8a94`  
		Last Modified: Tue, 14 Jul 2026 01:15:52 GMT  
		Size: 3.2 MB (3172438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60af38a2344f952ab8d307b3ef9db613b6b1c7ec9934cf4835fa216aa06756f6`  
		Last Modified: Tue, 14 Jul 2026 01:15:51 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
