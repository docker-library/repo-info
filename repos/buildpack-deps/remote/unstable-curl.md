## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:196ce525065e724c811cd38660e4d5d5021776540b941e2430c990e1b775ec81
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
$ docker pull buildpack-deps@sha256:a409d8ac25a3760e621c422d62892b4400206a61e07bf3d11e72214f8820a6ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78348912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f23166a5b75d03dd364fb2faab708ee388d06bf95849c945aaf29a2256c5939`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:46:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b4e6f7f184eb26c2de69e913d8e719cb6612b69b12932727db49fdb6cae72ecb`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.8 MB (49820002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec3259743e71d7217ad99e85762f43791ca8db5d63aafee15de35c7c98bffce`  
		Last Modified: Wed, 21 Oct 2026 00:46:27 GMT  
		Size: 28.5 MB (28528910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:396bbcd1fd05d5347946a64c86c70cef34b514a9d9275d3f597ca3bf72bb63e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4073450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd12aeb52773437f6e78911e15b8843239ad9410e0e0d54901bad0474a367c18`

```dockerfile
```

-	Layers:
	-	`sha256:dec94f9eb45d209dfdcd733beee3db067353429e395ad89811bc313f0b937a2e`  
		Last Modified: Wed, 21 Oct 2026 00:46:26 GMT  
		Size: 4.1 MB (4066689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86809163f6106f329fe7af16177f6cb2bcafc4e49bb7d9fa1942404930610608`  
		Last Modified: Wed, 21 Oct 2026 00:46:26 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:77729acb2d1ac7f86b3f2457c446fa435702e81b299f51a04a1cc0b035b36bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71614894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd85b98f9ffce23e103d8a5cb1d9dbb6352122fa3e01f0385328383c083bf4f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 01:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f598064988d3c8094600909e9ff8509760664a380fe3432f8f5981c4adda80d0`  
		Last Modified: Tue, 20 Oct 2026 23:30:18 GMT  
		Size: 46.0 MB (46007503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d167816f987674560fc1213b3c17081827c05ae811636ec46602862746d0b8bd`  
		Last Modified: Wed, 21 Oct 2026 01:29:25 GMT  
		Size: 25.6 MB (25607391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c0eb802eaefb0f39f88ef5d87b4716a543a04f8966ad6e1ab99d85309703b781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4075166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c545a07f8411f021922fd297c0d18adc6758b80c99ea3687499e4203071588`

```dockerfile
```

-	Layers:
	-	`sha256:edbed005365154869edcf78ab0b7f9e4cbd5a9363ec19cba374ff09a081eda05`  
		Last Modified: Wed, 21 Oct 2026 01:29:25 GMT  
		Size: 4.1 MB (4068341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0728c95f3b81c236700ad90719e5b4376413badc0928f730a614c16a59eb27fa`  
		Last Modified: Wed, 21 Oct 2026 01:29:25 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9bd1bb3b970e99ff3a8585a44b3eb4df5143fef973b63da1e986b0e0a8610939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76589487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea5d4e5d1d20f388fca7970c89d40c4166b4f1704370ccfd3e95b57d2c68930`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68634d59b4ff6ab10de196a616123b4ea6f0bd5427631286fe3cd8a56dd0d79`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 27.4 MB (27439000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4919747067352925cb70070a53ef04997fd752b93910d800e8108cb7871b12e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be2e1030c00881a56d2d15bff349a1434d9a2bc18696b054de0143fb7f3e9f`

```dockerfile
```

-	Layers:
	-	`sha256:0f17e739e6374186b2964fe9f704bde36652bcf8e2e42ada71e3272186d21325`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 4.1 MB (4070189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:854d5ac927ce642b5a7df1cfcfa74aa93d84181012a120597a05cf17b343e1ed`  
		Last Modified: Wed, 21 Oct 2026 00:49:49 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1d230c23ddd7b031b8f5cb4b920aa8ef98bc343ffe9ceb7e98ec88d3ef068379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80607435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48ccd2860d23301e4b6c28c36bbd6118628fcb1a66ea446b9dbb77d77754f4d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:48:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d6170fcc5bd791db1f2ab75aa4b4816b856973d371636532413f94b7511aae8a`  
		Last Modified: Tue, 20 Oct 2026 23:30:53 GMT  
		Size: 50.9 MB (50946506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109aee5d929bd44611611a2c72d113aff634bc5c7f64a2cd4fa4772fa2a25b7b`  
		Last Modified: Wed, 21 Oct 2026 00:48:40 GMT  
		Size: 29.7 MB (29660929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fa9699d82bacca1c7ed560a3b3e80dd3f74284749ffe0de50f123497e38cef8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4070440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320fc6bf6318c8863fa9b45e2502b7332951e72373f3b5bf9254bacd97fea793`

```dockerfile
```

-	Layers:
	-	`sha256:98c1d911b772786c5f946272020c751e0ecc6481cacca50727d218b8e8f02d59`  
		Last Modified: Wed, 21 Oct 2026 00:48:39 GMT  
		Size: 4.1 MB (4063701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4989d7ab2b6af872ae84f4d6ff6a8121d50ac9e065c7dd27ef1081317aceee00`  
		Last Modified: Wed, 21 Oct 2026 00:48:39 GMT  
		Size: 6.7 KB (6739 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:93720c3cd46dcb9977c753fe7a8c6d04c09e7005992fd2c4bf0af2df253242a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85026904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e2f11972b85648921e925576ff1f4d4531c71fcd263ba020bd90e61e89c484`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 04:21:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:63e5bd9ae187ceef4c544fc1a71e296691faaf7ab4bf6b751fe40b99fefa582e`  
		Last Modified: Tue, 20 Oct 2026 23:33:19 GMT  
		Size: 54.5 MB (54506128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01651d50be277791bf0a3e58b881bd744ec2bdaaaa839aa12b094a1e482ce82`  
		Last Modified: Wed, 21 Oct 2026 04:22:03 GMT  
		Size: 30.5 MB (30520776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c6c7e5dc49bb547755f63d6ea496fc040e2ae35718cbc545bc2b491f88eae2ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73990f6c44138815b53b54ab83b0114cbb8365c96e691be223d66be2b0939325`

```dockerfile
```

-	Layers:
	-	`sha256:3bc57f6d71210dc7c02130281a23f41c3d03dd13aec0fb2489df549f9d87a2a6`  
		Last Modified: Wed, 21 Oct 2026 04:22:02 GMT  
		Size: 4.1 MB (4070784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c046d383a0371262652d144fcab28aa81b042276bc2515119d76d874713872e4`  
		Last Modified: Wed, 21 Oct 2026 04:22:02 GMT  
		Size: 6.8 KB (6791 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:56b3f6f4b26a601837263ed037895b6d53974e053bdea046c8a93a7db28b5e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74811410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5febb28a0c86e0437261df330b2f2e304955c5eb8a9fb3a666c3432840b353ca`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1791158400'
# Wed, 07 Oct 2026 20:10:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:48b1f7cdb9d7f8020200b8b2a5a7608c5fc31d5467487a49476fc34aac73ed96`  
		Last Modified: Tue, 06 Oct 2026 00:18:51 GMT  
		Size: 47.2 MB (47230578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b7403dbf18c16114ddf458ded16fb29bd66bbd5e72630cc90e48d103942a9e`  
		Last Modified: Wed, 07 Oct 2026 20:12:37 GMT  
		Size: 27.6 MB (27580832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:52842d716503a41526aae918c192c70626dd3b9a4de443efd1e00389f53c71ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4069894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f052ac287ad136a960bc26dc0f3e8e7d253fc939c8225ef84965ee67ad0a2444`

```dockerfile
```

-	Layers:
	-	`sha256:9f887a7dbe8764fc872b80598709d40e2b44b2ebfee5f1f035c78831c913f094`  
		Last Modified: Wed, 07 Oct 2026 20:12:33 GMT  
		Size: 4.1 MB (4063101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3617abc772f3b865d18ff75b0b761d221f631248d797f335de449ede4f04d855`  
		Last Modified: Wed, 07 Oct 2026 20:12:32 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b74c1ad06d80e6ea3723ef13cee20470a226a74bd3cfe65292acb07f30eefdf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76734270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d0f1697170672e28b43fe4ebc5f5609addfba2d09d981c7830ad16c5ad9146`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 01:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:607e799b49a6f3e51537cc534d62976bf0f0fa819afce563b696cb4953ed3341`  
		Last Modified: Tue, 20 Oct 2026 23:29:29 GMT  
		Size: 48.9 MB (48918277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe924a9d631630494c6586e22ba420421e443e1a0ef3b9ff068190236396f6`  
		Last Modified: Wed, 21 Oct 2026 01:10:15 GMT  
		Size: 27.8 MB (27815993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:85e39f28a1d86be31e5f953f8899bf78ee49a8afce4cab078affb3cdece53960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4074807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ef8739cdac720929b3ee3500a4ea00776f5097b94e7cee80afcab7f48498b5`

```dockerfile
```

-	Layers:
	-	`sha256:f4b801482c857b486b7b81fe75a67072f7367dcbe0a5d4278d863b1f34d953ac`  
		Last Modified: Wed, 21 Oct 2026 01:10:14 GMT  
		Size: 4.1 MB (4068046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7b53c9d31a85192441466336f49ce4f16f9e8ec2affcf39308861378ba4e7ce`  
		Last Modified: Wed, 21 Oct 2026 01:10:14 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
