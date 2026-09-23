## `debian:stable-backports`

```console
$ docker pull debian@sha256:72238263664a402fa8b38c92837853e2214de1de61b019f018de24b582895140
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
$ docker pull debian@sha256:1910ba89c38514f2edf2ee95941d64bdb42a7c406dd43aab62295c9c3a02f794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45804494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ba2034acfeadbb99d299faea808776ae55af0147931c2f9b1952c2105fea7e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:13:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4ba2819d481449f9eb8205673e5bebd979a8db9bb2c525b2f8cb0139ee4a4609`  
		Last Modified: Sat, 19 Sep 2026 00:03:29 GMT  
		Size: 45.8 MB (45804272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d6d8bb8d6e78fd0e99a54f7f6269e316de8d589c7f4dbacfcdc85b13cc64bb`  
		Last Modified: Sat, 19 Sep 2026 00:13:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ceaf83790783f1181cd682eba219499ed9a8406c0bd28768c09eaf1523a45ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c4d128614839e8d77d3a05015a8da987ddbd716531298802f062736078ab0`

```dockerfile
```

-	Layers:
	-	`sha256:e158fe55434fec99de4628db27ddc656e564411752e5d679764b3781859fde63`  
		Last Modified: Sat, 19 Sep 2026 00:13:27 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c0a387f11c5ecee01e6822858a92bc051abfdb919695e986d5ea05899f58d9a`  
		Last Modified: Sat, 19 Sep 2026 00:13:26 GMT  
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
$ docker pull debian@sha256:fb5806003ee12e34696346de9085dafcfb225979795673b6a182eedd807ece59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53195298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b23972d40c4c243efbde7f6b8c62566e8ee5d3f485dddc34dc261186fa83d556`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:12:43 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:70036cb8506778def0fad42864ba0a6a6a267706632b93b07225eebd73acabbf`  
		Last Modified: Sat, 19 Sep 2026 00:04:51 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce65617791ae27976215f43e9facbdcb4ec4d4a8d8f99e5b9f38af188f3d429d`  
		Last Modified: Sat, 19 Sep 2026 00:13:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:fdcafcd08d21ab564fb28a0ae6938a05649737558d2a6943fa6910c63a74e740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae9adcade27272ffd98c0b1b143826d8d9d016ad73b336b63759a10cc48548b`

```dockerfile
```

-	Layers:
	-	`sha256:7a8ab3231d882480572c9e3cc71777079a90803ceb01be74c1e49debada5a2de`  
		Last Modified: Sat, 19 Sep 2026 00:13:13 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca029745eb8b102074caf0a818abfdc90a03516c51863177ed648916fcf05319`  
		Last Modified: Sat, 19 Sep 2026 00:13:13 GMT  
		Size: 5.8 KB (5809 bytes)  
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
$ docker pull debian@sha256:5a1c96d03f2012a2438551f69eb6aa00ad48644acd1205f178b7a48217bd4dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49447840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8aea29315d44517d99ce03fcea9bc7815b869cc02fd703fc08f8f09cd590683`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:12:26 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:594ee955e8745c3c618980480ee4e2d44af19a0d380216df851023c8dcd51a97`  
		Last Modified: Sat, 19 Sep 2026 00:02:38 GMT  
		Size: 49.4 MB (49447619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa80b6be9a527de1ac127c5d20432f5b21ac0533b2b3e7482fcb71fc4db593b`  
		Last Modified: Sat, 19 Sep 2026 00:12:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a3a16ba09db75bf1d309b0341d1e32ab58d8b2ef5cf1d4a2484c6d4b083fc9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5e0bc60c6dab3e446d58b6a048b5fda454a26370b515243790bac63fe2c614`

```dockerfile
```

-	Layers:
	-	`sha256:a1d65a72e7c9975799e083dbb202e18002bc80f9ac78e914303df41a14a78593`  
		Last Modified: Sat, 19 Sep 2026 00:12:36 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c4912621078f0b4cfc7d23de64fd9dda559870d3d4683204fc1ffe5535fe777`  
		Last Modified: Sat, 19 Sep 2026 00:12:36 GMT  
		Size: 5.8 KB (5783 bytes)  
		MIME: application/vnd.in-toto+json
