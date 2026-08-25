## `debian:forky-backports`

```console
$ docker pull debian@sha256:083cd577ad4f95e5dcd47ca6b4b3f422ebd17fe51548c2d687a64ef60b216e2f
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
$ docker pull debian@sha256:80fc21ff26290a3582bdbaf5e7a3a74b7222073fc6aa6cbf4e052274cfe8950d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50668914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99d82f47a783802eecb70991befa7f20f3ec1c2662309356490942f7c2aff97`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:15:17 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1ff58dfac1df78c93e4bce85d59f2bc7912f12d323e8c7fe8cb2ee95ff7aad`  
		Last Modified: Wed, 05 Aug 2026 00:15:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:aa28227d8e2d17bcda9577372165a06f990f1d735377a1e7f530ff5d39f0c48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db5226e275c039de38a9e27cb3879e30dd19a54d07a6a38fdc06d9afc83188d`

```dockerfile
```

-	Layers:
	-	`sha256:e4c67760f7f011a078fb219f779dfff2b3283c4de73875f640373671d85b8d92`  
		Last Modified: Wed, 05 Aug 2026 00:15:23 GMT  
		Size: 3.2 MB (3191374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4fb891234f8a60465922a126ef20bacbbc69b9563070842b2a700095602a24b`  
		Last Modified: Wed, 05 Aug 2026 00:15:23 GMT  
		Size: 5.8 KB (5761 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:ebc031bf31badda7aa182b835aeb0c3c0f4cd57deda50ea256ae0f7fdb29a995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54675247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eafe407ecee6d8a7ff248e501b16e166f4907c6ec2851782f612e41ff643b6c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 03:50:36 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:58bf9e1f9f35e2c6a73b629d77c34637db6af6dea128933949542988f5d743f4`  
		Last Modified: Tue, 04 Aug 2026 23:50:54 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd418e95d3d662902bb75d12bc001dcd01c08d04621adfc071b817995e56d2c7`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a9d4eb2d98dec76b197dedd3b1bc48c6a72d7733a793ca49a60fc7bbab558a6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3203847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab17b9e9c9b4f17d062e00880bbc2fcf051cf6ba02eed5e637b59ac72a25aa3f`

```dockerfile
```

-	Layers:
	-	`sha256:33558d23ea547e1e84aa2df0b7780509464337f87cdacf43e972cc8fcfb51d65`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 3.2 MB (3198043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098a432d7e3b93f5808400470ce4141cbd06971c0f02fce01bd01916da5cc4e7`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 5.8 KB (5804 bytes)  
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
