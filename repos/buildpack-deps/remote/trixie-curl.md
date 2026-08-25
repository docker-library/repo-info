## `buildpack-deps:trixie-curl`

```console
$ docker pull buildpack-deps@sha256:1184abeb3272224d8a92dbbe7f5875d62d8d87347d657040ef756ec2cac1769b
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

### `buildpack-deps:trixie-curl` - linux; amd64

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

### `buildpack-deps:trixie-curl` - unknown; unknown

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

### `buildpack-deps:trixie-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:87b818eeba1801856579de5845a193fb91d45ba2e683fe337539ac040537a127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71879325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688db0064797b55aa9c58e6822be387aba260b09ae6e5816271af16c65d6dc70`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508c2e701cac19df9a11b9cf45817e44d4de1bb4cdcee87e5c2924142bedbe7a`  
		Last Modified: Tue, 25 Aug 2026 00:46:57 GMT  
		Size: 24.4 MB (24365366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ac15a2f8189ed09657fc5e438fcf9aaff86bb0c2bf72de315c88e806ebe0d0a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9ae696b93e27a9c52595c334078ba1fb17cae3a692ed36cf37697b78e0dd5a`

```dockerfile
```

-	Layers:
	-	`sha256:b788e3588fc174e21010a8587d6c78e63f620a9db549006ade278c2e49ed0969`  
		Last Modified: Tue, 25 Aug 2026 00:46:57 GMT  
		Size: 4.1 MB (4128195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7444689cba9497f5e6f9cb82134627d197a777761f52cd0c07cb04ccf09451`  
		Last Modified: Tue, 25 Aug 2026 00:46:56 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a254f1ae3536dbd4a8f09f607344214a697fc752b10d01e67600c7ca64704c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69401112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d17ac2431672c12aadf7de86ff6c0e996b5a8017e7af4baf162d73f81450e1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ee032cfb084a46da3985165f7196a67d15933ce7597a59611171a4f7e39692fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f623a9c154e3e9899dd210b0acb3f9ce7301bb991830b2996b66e7bf5eba4e8`

```dockerfile
```

-	Layers:
	-	`sha256:49aa02d4b18ddd2e6315f6b1bb33e9d46cb278cb5dde73e76ef3e45a5b6588a6`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 4.1 MB (4126706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f48290b392b3012f63da83a77785b220e7e0face07ae6abac6ba010c43e279a`  
		Last Modified: Tue, 25 Aug 2026 01:33:15 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm64 variant v8

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

### `buildpack-deps:trixie-curl` - unknown; unknown

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

### `buildpack-deps:trixie-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:42d1c244dc226a1f087e895f7c3dc804452e0d8d86d1a15d9218b9c156eb4877
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77651069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6008c1f6462bf4b2c3a84473bb68a48be87685500162045ded0df2a6cad26ec4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:07c7efe33795d8661459f4b237792d61d3103088ba7d05ccf3d09845bf3055f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4129370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff8f7438e2bf62b918121f4830a0e15d6381505a9e0a49d2efad703722db589`

```dockerfile
```

-	Layers:
	-	`sha256:d5126f2fc91bd2dec6985defb774f327e8ac031c460f4c37e4e6313031db90b5`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 4.1 MB (4122312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c70e5ac24a52c1677db7155b9e9f4e6fca161c3f6ed65a373e101cc1e10c88ba`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 7.1 KB (7058 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:db9a0cc7e32469996aee3924742d5a3433686ab3ff08b5650eb6f95aaf69edd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80186485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e054ac23dab7e6b2128e928e20b56cd7fd7d3f23a622992acab5b45cf0cfab57`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a3860b941f5675e15f885c689da69b0a8d0186ee1cdfe2c02739eacd7505965b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a720c9e69b0199ff3a72158e1d4c6beeaecb3ec652510c401644d7d78b892ac1`

```dockerfile
```

-	Layers:
	-	`sha256:cdde769c5b7264b7fa8ddc26253bf4b0f60da0e35f64c0932175a977264aa9d7`  
		Last Modified: Tue, 25 Aug 2026 03:38:17 GMT  
		Size: 4.1 MB (4129053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c06ec2031ddc160c26c93857816841a2c1f92fcd2a9a91adeb4e56dec1241864`  
		Last Modified: Tue, 25 Aug 2026 03:38:17 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; riscv64

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

### `buildpack-deps:trixie-curl` - unknown; unknown

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

### `buildpack-deps:trixie-curl` - linux; s390x

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

### `buildpack-deps:trixie-curl` - unknown; unknown

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
