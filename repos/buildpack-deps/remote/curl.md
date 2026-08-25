## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:5b31f24d6db31f2fa8c41615fe4a9b516a862801f8fa5681f37ffc665d41b4c4
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

### `buildpack-deps:curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:69390bbbc54996b6b63eac55e16cc2646f05a43ca67fcf875eebe4998dc39553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (74977418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d504058ee2534d6ecfba81633ba35867328feec8a134cb5fc1cdbf57d209c4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a6dafd54fa708395198cd2715e95155c05bdb730b1181f2f49ac8f4d4f7263ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4132291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dbb725e565f5c86e76c2c09a88fd07f4a8aed679b7051af7c2d49c61bd8311c`

```dockerfile
```

-	Layers:
	-	`sha256:46bea42aeb17844a01e748a2a624b2765b2be197739e6ecbef8fb4b7470ad9f4`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 4.1 MB (4125205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81e3fc164a2a75e4dcfc02c9ad767ef3ee470a1a3a63e9fbc834a50b2df68645`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:8b468f0bf3ad5ff8e0f51cdbd0a816e55338cf413f56f322ef7c77478c6b594e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71854441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bd62b11d21551a16dd333211e35a51ddc7db9bbf51f3a27193403a4dbc1721`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:31cdd84f3313aed453f665b91a900091c434a8f09c15bb822a4e06103d09ecb4`  
		Last Modified: Tue, 04 Aug 2026 23:51:31 GMT  
		Size: 47.5 MB (47489632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525e2e1f5f1cd4f14b03bd4f293d16a39172386225a1ffae568978c7aff7bd59`  
		Last Modified: Wed, 05 Aug 2026 00:39:33 GMT  
		Size: 24.4 MB (24364809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c81f69a43371f8aa990a5202f16747c5369080d6484037aade351eaa729f3d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4130375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af8477533a765c944d10ccb6bf2cb2d40a885df2f38324fd480a78655e9c9cf`

```dockerfile
```

-	Layers:
	-	`sha256:6797eae306a624522379b00640a5b6751a52b9371e02aae7c4acabed3ead8783`  
		Last Modified: Wed, 05 Aug 2026 00:39:33 GMT  
		Size: 4.1 MB (4123217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13669c9d89d9625fb74311d8a00c255457ee1790ef7828cff50d83ec28701549`  
		Last Modified: Wed, 05 Aug 2026 00:39:32 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:405b0318a594f623ac7b87340dff580c65f4e1e8b014de29af28183603cc6b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69379828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e056c94b86fd5994ead71e1428e52a618ac17ab46d8e7af7332f224189679f7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0dd361d89842d87704123c0af11b4564310574a6d57fefd0e2be36925c3d8d`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 23.6 MB (23636453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f8c5fda554836c1df827bd674bbe5726140eb5f7170443e3191fac835da2049e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b64c2f7f06f4a1df0b602f0021336dfac2b3758ea3a8fc1622901ac1796c57`

```dockerfile
```

-	Layers:
	-	`sha256:61ce3591751a99398f5f28833aa93197926332b2de107af01af491b416107cee`  
		Last Modified: Wed, 05 Aug 2026 01:20:37 GMT  
		Size: 4.1 MB (4121728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f20d70246897e3c186c9c3a8c7042046163c1e355a6d3ebef31e36315de318d`  
		Last Modified: Wed, 05 Aug 2026 01:20:37 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:72b13b926a29ad8531915bc90ad4ad06408c7e639c0480e2eff6927377355cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74732769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1426598b69a4c00f6ceb9a06e929ff5387a995af5663067d893d6e0167cb052b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:32a66bc505ff9c29f8fb7655d83fed68b42bf04ce163ba68c7d637523576c060
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ad14950c07300ef4a6c6455f31b609da9cde0ec6909b00cd98e2938edd5596`

```dockerfile
```

-	Layers:
	-	`sha256:34c4ff0fe39ae768b081cdcbcf67caef78bd29a1cf6897b37be79688110d512c`  
		Last Modified: Tue, 25 Aug 2026 00:53:18 GMT  
		Size: 4.1 MB (4126110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:614bc288060ba9c6ecd6d1979bd066af4dd9a3074c2f7e77e23f177fe228d5a5`  
		Last Modified: Tue, 25 Aug 2026 00:53:18 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:86f9c4789801e605f1c0029c314e2f5be04af43300c05af6b51295cdc5f609f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77631552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503101f5ae0bb80e00b676529cc240c86fb6cdd5e403799e057faaa9d036c1e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f34fbe13383f04539c7849f0cc79bc728d4e964e24cda9b947d4784426bd636`  
		Last Modified: Wed, 05 Aug 2026 00:47:13 GMT  
		Size: 26.8 MB (26800384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ff53655563d2125c23f0ba35b05ba227089e024b5386eaadf610fd0ade4d693c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4124393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e90c7060f197898fa3642049989053e0172b6f5add4af6f5612f5f3aa5c341`

```dockerfile
```

-	Layers:
	-	`sha256:7288194527f8e532e7a647259f1f81240f65b912cb0c09c119fd6a6fa5f77767`  
		Last Modified: Wed, 05 Aug 2026 00:47:13 GMT  
		Size: 4.1 MB (4117334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49dc3c71aceac8805cc1ba528dfe030068b5c34c8ab040c64f8230e0284330ef`  
		Last Modified: Wed, 05 Aug 2026 00:47:12 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:07ed5db66fa181380296a5e8d74d8872bbe51bbf89788a787006c155124cc5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80154705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4f5f66ae6a5f6e67138c1ae3394721ec68ead21446ac3a6cdbefd761078747`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3e6efa722094ba9a2c33899d007294d906fe7730bc19901e78bf43c969f32`  
		Last Modified: Wed, 05 Aug 2026 05:26:21 GMT  
		Size: 27.0 MB (27021100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:36f89cf0401957658c8d2b7d036f2e3b4b07bbde61170984c277106bdef5629a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4131198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a1c92a43a282e987c10dd9cafbd93a7e3b6179b60dd4f6d43f5831ae9527c1`

```dockerfile
```

-	Layers:
	-	`sha256:c46a46c076dd7bec7db0b7c053854d2e65f6389a2b011d4a66d9d72eb43d1173`  
		Last Modified: Wed, 05 Aug 2026 05:26:21 GMT  
		Size: 4.1 MB (4124075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05889b46c3c8107b331f0381d26d2b07669af9aa692eb186f0d15d6b62d64226`  
		Last Modified: Wed, 05 Aug 2026 05:26:20 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:9a5e090ddea77675a8248174152ef2d77addc9fe64660e72df489ad65afe7059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72767165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36691f9719b239e2b064882cf92d58f4c99a49bffbb15f85949c087d64e2375`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:44:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7e2cce4c4a850aec1e4a483b50128246f3126dfd2358f0bcea094e0a9777c25b`  
		Last Modified: Wed, 05 Aug 2026 00:56:00 GMT  
		Size: 47.8 MB (47797481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1945d0945ecd590a3ceb924cca41cd29af5c2598b2fddd7323957355ada24075`  
		Last Modified: Thu, 06 Aug 2026 19:46:15 GMT  
		Size: 25.0 MB (24969684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3f348b482d29fbce17cacfbda6daeb2cbbe8c12c86d446ad44039416230c1fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4119863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f36d4a25429f89035de43c91acfa73e5ffa87d260bbaea9b8d4efcc5a2f3f09`

```dockerfile
```

-	Layers:
	-	`sha256:64a21a2b9006359b8a32b3c91fc92a6aadf1b6bb4b46e4d2ba63e8a4c2f04051`  
		Last Modified: Thu, 06 Aug 2026 19:46:12 GMT  
		Size: 4.1 MB (4112739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae1bd95613b334b2a52af07dd13fb835e508c7735b5a5cb52ae499647ba5d209`  
		Last Modified: Thu, 06 Aug 2026 19:46:10 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:8163dd5957ce7cb1e5e099572d3f6198fdae42364a17618db160a8e336ed5d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76211811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a89ff285b2e46bb0271a091247ff66d6088ff5da1c520a3d0167a248ab3b506`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e1610aff1125b96e8681894a47a19bab41e044ff36108ae5c45a70272a1540b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf95836db7ec060a828d400106b676514dafb73df78416798cd43b3be81d106`

```dockerfile
```

-	Layers:
	-	`sha256:d8cd7be12555536d216e144f632c55fc74347953895c435d5efe19c06e24e183`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 4.1 MB (4126615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9290a6c60be1fb7edab9e3a6a7c0965238876eb2d3b8b2767b04dd1a79b4f3ab`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
