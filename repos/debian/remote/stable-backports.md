## `debian:stable-backports`

```console
$ docker pull debian@sha256:1e95e08fdb2ab8b1f08c95c58af00cbc23a5862f1bbd57543dc2fa58163b3880
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
$ docker pull debian@sha256:1c67bd5b0c0f3e7e7e7d97221ba74a730eaf1e3f50e528aced1d2d808112663a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49379921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5639ef0aad94e92bbb5649ba2b4e84b9585e3da7e29441099308535cf408d45e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:12:19 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5b2f4c89fd582d08d15b8ee070cd70b636281bd0f1948889bd090fdfd6887e52`  
		Last Modified: Sat, 19 Sep 2026 00:04:55 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff753d9d215298e2df454bdafe073721f41cbecf4fb81b554f89c22a61b47536`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2b7eaecbdf10aafc00c659b0a6c7fe6056f5baa74d036743926f289ef0907dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebdd8962bbb4499c482bc14ec29d783e61f18ab39a049b91d8ab3d699fb8eae`

```dockerfile
```

-	Layers:
	-	`sha256:17f4d4fed6bda84e649edd9b7e2edd694f94ac812d5cdbf72d8ba9a7089faabe`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5539a0813467fb06b7b721e05cfb5fa2e77803728e74eabfa778e21e76b87efb`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:a83a61d7182239300a24493025155de47eb3d3c983c3fc3ae1aca669b0d02d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47548190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8806095b5113b9f95d2def0b15b72f08ed601977daaca5bd820478747ec077`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:14:47 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:88d00846803d58d299b85c381915d5ee911dd8b86427351a864b6db254b3c53d`  
		Last Modified: Sat, 19 Sep 2026 00:03:11 GMT  
		Size: 47.5 MB (47547968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac9a6a8e45bc8fd3f8256cee61d04fc0e78ac0fe7e2e4fd61b90c3bd6a3bf17`  
		Last Modified: Sat, 19 Sep 2026 00:14:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d5fd42ce094177ed56eec6189c68d30eaf0d01b247212a20609b408d3c520ee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf2ae4fff1db687b52e061176b4401e2021e920b87f22480ada25e5c6abd5fd`

```dockerfile
```

-	Layers:
	-	`sha256:716f46fe48018cfc9b803e0308bb5b718d2b6158a2fe0f09e047e2c074bd5360`  
		Last Modified: Sat, 19 Sep 2026 00:14:53 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed442e3d4b1651cae6f5c466d05f8b6d1aa0054e2594586972b9eaeedf6d6011`  
		Last Modified: Sat, 19 Sep 2026 00:14:53 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:be7a80c9a57122b1b1dd723f8bed8a9a1ae6a8ecafe8dd6a26351131d3f158fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45813488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e8fc5a299f504c44b839f14f84480c6cca02e652b427eb1d13599ea71e2f7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:14:14 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7b2a6440cdd94d908064bd7e7d9adc8c46eb29bb8e18433a0ab85e5a4fe4dcd4`  
		Last Modified: Tue, 06 Oct 2026 00:13:33 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0dc28d68ea6474d8ff781b77fb9790ea32ba14183c0ba6d3745f7850a405f5`  
		Last Modified: Tue, 06 Oct 2026 01:14:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5018ad3b124b0f2e73e4887bd70510dcab8080030c9eabd58dfaf49e1f0183df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6ef3ddbd4c34c7518fd1e1b81dd2b10dd8c807c26a8419448af1d7eb42df86`

```dockerfile
```

-	Layers:
	-	`sha256:8aba1ef05451f553906fff635f0cc1bcd18e1daaad7aeb8ae5f408e498cb38dd`  
		Last Modified: Tue, 06 Oct 2026 01:14:21 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbbef8d251b0673e4d5b443a7cfc0a51e652a105f185c1731b36cbbf28702a0d`  
		Last Modified: Tue, 06 Oct 2026 01:14:21 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:559772eb5e2c6a0634a160737cf5ac8b33999b92862493588bcf16db0d94dc3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49749055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96268244d87c93c8de2b0eea1aeb58995edd05a0e84415c82be811a14200270e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:12:13 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6b7b02a048d52062eea469add2cba2aff1c9de92848af7dd77d44d20e3072846`  
		Last Modified: Sat, 19 Sep 2026 00:04:46 GMT  
		Size: 49.7 MB (49748834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe89ab4af30b79cea8528b915583dd9c3504635e479e16cebb91a635bf0a978`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8b1b427e40fbf4ead8bf47ebaa9b3ced17e68457a14eea61f6f5c9b6af96667e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebc19c80841c33b5b88b418432ef8b79a988685201f26029e016dae8c064ef6`

```dockerfile
```

-	Layers:
	-	`sha256:0d984e3246cdc5a67f4cf8bc50ecd5819e642c3c1b6eb7c0aaad0acd238b7785`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4afef34373b3e1c63f9cb72e62f6f4eac0dd19ad6b78ac08d54e01d4baba502`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:574cf1d2ff649f62fe3a429e46bc634bb0737908f3f194592a19775090e6b1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50892941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf18d4df332fd62777ed8a7c46ff7ab7de72596a24d0a6a28788732d04beacc`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:13:49 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:dd6a3227adba78eaf7b52a42cb799becdae4b1a9a037aea4fb2e2063bcfcaa5a`  
		Last Modified: Sat, 19 Sep 2026 00:03:57 GMT  
		Size: 50.9 MB (50892720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b214f25ab1ca91c09b5441d133019cdae0803094a7c1c6fd958d9b230799b09`  
		Last Modified: Sat, 19 Sep 2026 00:13:55 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6d5b9c3b4056f8f323bbe2976abd030d1ec65c26de25da20c15b4baf7004ca4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10358e396d986cf18bf822e836a0b7c823f10fc2f4b4bf544d3249b4d61f6fa`

```dockerfile
```

-	Layers:
	-	`sha256:a49aaeb88e44b6583522355ecaddb89efe8b1a9ce5daf39779f7fcbb1d82b62d`  
		Last Modified: Sat, 19 Sep 2026 00:13:55 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:752e5cf33bfbcb53d4b41b4529884cbadd4e36c485309a2d7b5519fb019c3dcd`  
		Last Modified: Sat, 19 Sep 2026 00:13:55 GMT  
		Size: 5.8 KB (5766 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:f456349347a3297462d9eae754f69120328d378480c89177a3f3cad36d0aaf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53207346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6596001bfc7324b44ec439a9f1a9a37fb708adff8dbe457c9c6e835b5ef814`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:15:33 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8fedd03f2e9c614f807be54b884e68e54c6b9053775fef673a5e9cf3ba6dd7e0`  
		Last Modified: Tue, 06 Oct 2026 00:14:52 GMT  
		Size: 53.2 MB (53207123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad70e87971d8c11285f56bb42b8f928b8fdb461c778f89f95fe9db7fcbfcb73`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:07b15606f40b2ec4a5e1d0929d723fa0001f04b074c83f64834f9a7b04083550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30338f2f1a544c4e5f8fe1bd297fc2774886d03d066baa72c10a620daed2cd93`

```dockerfile
```

-	Layers:
	-	`sha256:945498a997626ad7f13e4f6ae932f0857f09f65f90f06a0a7b332db87e257a55`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a65c40f0dfd61d1c5dd71c9f07baff364ea25b735125503a3dd47abd83db7f31`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:3900de4cff9252d79792b4ad16294511d8ed4e370b7b5ce7c6b981f4db6b7e02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47867216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798a93bc6c4fc3490cc9a6b164a26e23b0143c1cdf67fde28363888c27c4218e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1789689600'
# Wed, 23 Sep 2026 04:44:41 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b940b8c443bae67bb23b7a64f960907cf55246e9cef2e9298d447a14b5afc091`  
		Last Modified: Sat, 19 Sep 2026 03:59:58 GMT  
		Size: 47.9 MB (47866994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3248aadd82a9797a69cf3438644ceeddb3ced4451c4562f0ea2a5442880ab3`  
		Last Modified: Wed, 23 Sep 2026 04:45:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:46055eebaf7400f00931df5c82296047396298f52cac92ab740eaa166fe8a8c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417c73a20f4f37f0fbdb097627ffd2c8b3e3bf295c5e1248e39ad6bc75a4d0c7`

```dockerfile
```

-	Layers:
	-	`sha256:92c21505c3cdecc213a8fe76e1f50f4605bfd9877e7be78bdba261427b87f560`  
		Last Modified: Wed, 23 Sep 2026 04:45:39 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1007ac25b5fe35e5d2223da8bf00542e50e16a403540891aaeed8f1aeaa1fca`  
		Last Modified: Wed, 23 Sep 2026 04:45:39 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:71d17600c90185afa852e85766ce0da66c5d8a352f85a8c79746ea71d718b3d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49457228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcbbe6c71dbdcd6e4eb9a4350708432179abd82dcd921fd7f675adc8f916e33b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:13:13 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d1263d0bd5fef17839d39d3755ac838918284aa2e7eb7b530e897e1ebb795db5`  
		Last Modified: Tue, 06 Oct 2026 00:12:43 GMT  
		Size: 49.5 MB (49457005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00df0986d75c1373066651b93f1a2913cfefca9a800872e78b661d3053078710`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d334960eda4764f3c0924f429acb1e865de09bdfe83929995ac5a38580c72b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5700212353073167f6364e23df029df258097261e443d8a6442873d0fd3564ee`

```dockerfile
```

-	Layers:
	-	`sha256:81c9da6ae5a7dae6629821efbdf7b8243a4fc61e4fa40f38fb586b02e42e9515`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02884307b158bfea8ef7a086aad1ef999106fd9df3f7e44f624215491f9c4dd7`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
