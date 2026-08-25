## `debian:forky-backports`

```console
$ docker pull debian@sha256:3c76ee060ffa866ebc1abe6a6771c9fc1f0adbef389e8318d92fd86bdceddbc7
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

### `debian:forky-backports` - linux; amd64

```console
$ docker pull debian@sha256:95ee4830f18e0e895d4231270d3ca1670186bf229863684e35279d6af49dfc97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49685738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7ab54ad1ee4f76f1f8c7866fe28165057e38b4b53ad41d2b919470adee501c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:15:27 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ccf4b94aeeebcc8d0c0363cae58a52d05644d98c0eae0c4d044c7bc02d835ed`  
		Last Modified: Tue, 25 Aug 2026 00:15:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e7f6b9ad23de0b6d749a9ad33a0db66058f0148b2dcb56c4319f230523b5dc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4c9781711720108fdb605589d8c74f001bcb3e3a35743e985d83134595d940`

```dockerfile
```

-	Layers:
	-	`sha256:fb75a6ef2e7002d261c535af98634b5def7524b34a69bbb4d3c1e1777f6081d8`  
		Last Modified: Tue, 25 Aug 2026 00:15:34 GMT  
		Size: 3.2 MB (3194781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a85e06616eee93951b911f7972f9c50a98e38e82a710dbdc10f57402675651ea`  
		Last Modified: Tue, 25 Aug 2026 00:15:34 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:070a99d5d9cb6fcec05f6a963679ef76dbc3b17136e8ae4e484339357b7c4e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46383214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b775c2c1e7289e9bff948bc3f3648a4a94b7c14d773600dfb89e7cdb247fc83`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:14:52 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:478451078f487a859e53e54198fefbd515ce0a5752509069c8373fea4adc6f73`  
		Last Modified: Mon, 24 Aug 2026 23:20:33 GMT  
		Size: 46.4 MB (46382990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5114b1a7349166e6b057b5a3d04310dc322403b332a50c5cee37ce0d52b15a6`  
		Last Modified: Tue, 25 Aug 2026 00:14:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1cc4dfb37d67529c4949152de635a0c8bafe7a5ca1c586da570344a7485f25e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea6c5bcabe3b99dfb70752e5d0f6b1cad2d2877b3fd2180613eac01ce4624a3`

```dockerfile
```

-	Layers:
	-	`sha256:5921a1c1db263321cf6b416e1a73ef1995b1f0a051815d830b649092055b2ccf`  
		Last Modified: Tue, 25 Aug 2026 00:14:59 GMT  
		Size: 3.2 MB (3196308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:126e5f67bed7bb81405c38609c3278931cd1f6a6e398dbbd3d2b2a61542c4fd9`  
		Last Modified: Tue, 25 Aug 2026 00:14:59 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ffc790df9675b3ee5eb32ac39edcdd9aeae3fa4ed1c3e8a8403ccf25a7bc04de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49504141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c351c77aec15c15c1b1f96caeb4701a275c25da54b81dc5a65d3acc2b86f82`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:14:57 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8017c22a64f88d3af1173a84b25f34ba5e5d2c387592aac3ca46f75da9ee255`  
		Last Modified: Tue, 25 Aug 2026 00:15:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8d547008aaf5225e1637db0bc593a26328a124b89bc2bfff15a2aba793d65239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54031f1b3a1663f21a3832ae420245c42b89c9b9e4eaa97b34b2e6f24d0331a3`

```dockerfile
```

-	Layers:
	-	`sha256:8acd158164bad68148548ebc1a049d27fb92eb8f7f6e770342e67c817601661f`  
		Last Modified: Tue, 25 Aug 2026 00:15:04 GMT  
		Size: 3.2 MB (3198868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41a090d53bded41ca9935be1dd3f214229e4c6d9ef802a0ee75f5cb8022cb2b6`  
		Last Modified: Tue, 25 Aug 2026 00:15:03 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:7f5cd5ba285343b3294beaf7b57f2de29d8fa728682c88ab136ccb1d9af3c846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae69aed8245e9df5d799241f5e6070917814350864d574392cc8e38e2893f4c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:15:29 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:aaf68b813d1715d979a28cb2734f0c4792e12b8f67526d02f1eb51e9f0ab73d6`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 50.9 MB (50891162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5138a68acabfc670ca256966d037ccf765990aa7692f843bb6ad91045cf51163`  
		Last Modified: Tue, 25 Aug 2026 00:15:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:acf0482c34aca574bc41331fe0f95892887272fb9e7925cf0f053244fe048e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48c5d3279eeaef1052d1ebe09edd16a95d5298e17b23966a85ad4dbd7e23bd2`

```dockerfile
```

-	Layers:
	-	`sha256:db8de398786f7c95bb3ab4c185e2f0eb759d80ca2640d004000633c8f6f19e48`  
		Last Modified: Tue, 25 Aug 2026 00:15:36 GMT  
		Size: 3.2 MB (3191879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c9d3fbb232d962989bde1e55332f024f6f44e129fef4b284cfa4c21272b4a27`  
		Last Modified: Tue, 25 Aug 2026 00:15:35 GMT  
		Size: 5.8 KB (5761 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:8562af11e6c4908a2df47d3940f16d56ace238d5ff816c69f06a3d4d2783aca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54795293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:897850e432b6be006358eb8aa0b4cc84e7d6c5cd2e2471f4a939b519cce43ca5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:14:05 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c7ecd50aeb6375d3d0c7120423d98e9beb1310a2c03f9fe165066e2287c041a0`  
		Last Modified: Mon, 24 Aug 2026 23:19:44 GMT  
		Size: 54.8 MB (54795070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88f6d57ebb76e4c723e42f8341b0cf0930131fd52d114406362c776e16b679c`  
		Last Modified: Tue, 25 Aug 2026 00:14:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7db95a5975cf1a86046b37f69ffd3c252cf891ece912eaaa8974c073836ca32e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756a1ed86ec6e7da744f3fcd37cfcbf7bff6781076e039dd97e7b15c20ce74c8`

```dockerfile
```

-	Layers:
	-	`sha256:bef5e1c95504e1b72c58f74da58a833160cbbfe1719d8a39a344a95c46e2797a`  
		Last Modified: Tue, 25 Aug 2026 00:14:18 GMT  
		Size: 3.2 MB (3198545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd6a323fec02c0bb4bd0729565241d63fad8331bf6b42b8389dfbe4a63e4994a`  
		Last Modified: Tue, 25 Aug 2026 00:14:18 GMT  
		Size: 5.8 KB (5803 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:f570c31b19f49cdd0d135db56ef9c65973ce605bad9c34ce18dfebf85bb84b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47567164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29696607bd4abc5db1e0b890b71c1d82451b4acbab7441dfed5c4d4961cd1b18`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:15:18 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:317347724f0611ba03877e1eee8b21c4ddf58f85ee0ca414fa59f47dec32c320`  
		Last Modified: Mon, 24 Aug 2026 23:22:21 GMT  
		Size: 47.6 MB (47566939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4f970ab31080c61b89d4dbbdccc478217468e7fe9b7cecf62feef2b81b61d4`  
		Last Modified: Tue, 25 Aug 2026 00:16:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:67b315121aa2f1fd8a69a26b88ac5ab1309e0d3a8189bffca523d18108e55d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1069d39018d88537529e32072a5cf8c1b3d7898c030181d3df846f9f5d94b65`

```dockerfile
```

-	Layers:
	-	`sha256:0855911899a19ef95b780cec110fff641a86a6f3c651b6e8af9db8895d6c07d9`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 3.2 MB (3187143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:669c3ecb312d97bb60b92cde6fac61eead8022d0e13266b5b368f06993df5072`  
		Last Modified: Tue, 25 Aug 2026 00:16:11 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:350698aeed213221c400c727d9d33bfdf3f28893e938a3f1f40f3d51c049de06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49244276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bf06d2c3b1316bd8f7eb4b1c5abdea44a3a025abc26abfc81f95ea6c5f48fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:14:19 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:89aa4da0330231a8a129dbe1eded1750d074f8b5beae07f864cb9d5b9ce64feb`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 49.2 MB (49244053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8b6410aefd124ea84ad5160021c863ff0ad254a0bd56604d999a4655cb4774`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a905dce6a94416728539f2dbbb27d177f8a06b4228ef74ece0298ef027643773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9323518c45a9a5524c1d4b50b810f205e138c252a2d39fcaf8fb1a413f40df2a`

```dockerfile
```

-	Layers:
	-	`sha256:df446c9f94abe7e5578f1152329953f0a3311e905a2fc0ca7218622c18701b99`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 3.2 MB (3196177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6014e6a4b4ccc4a4fd0625c79874513c418b2158587c1e2819f51fe4cafbab8`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
