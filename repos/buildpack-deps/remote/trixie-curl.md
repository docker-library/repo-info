## `buildpack-deps:trixie-curl`

```console
$ docker pull buildpack-deps@sha256:75e076ab07c94f1e0a72aa8886b9729694ac0bf823380d651159ee3a82eb6734
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
$ docker pull buildpack-deps@sha256:6b6746b2f5123e35cf9df1a1160afa542783928a1f55c2162a1ebd2f71860b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75019787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42513bd7f06978de49e06f3a2fe50ee2871e7c7f56a09d294b96829c235cdaa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1da6dd4db2b0e7506864cfb132e9050f7d3a703c0b8175f3f1be781e1cb34d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4137196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3bfb3f6e905d71efd83811168e7ab965ae1872dfe5c3a107cb1dd1864e6e73`

```dockerfile
```

-	Layers:
	-	`sha256:b41e1130cce7ff942f6de8d11eab4947a21d22487a087a2fec3f5baa5bf22ba6`  
		Last Modified: Sat, 19 Sep 2026 00:45:13 GMT  
		Size: 4.1 MB (4130112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21450f548a31c5ee4086483f87bd6baa47ae8ff1c1086f7a28cd87fe931973e4`  
		Last Modified: Sat, 19 Sep 2026 00:45:13 GMT  
		Size: 7.1 KB (7084 bytes)  
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
$ docker pull buildpack-deps@sha256:be88f2bfb50d594f84868e65b3a167975cc71e92bb6e0435ce1849c0d5370fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74787502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c712c2a1bdbbc4b969d4c297f8e965482b7bdff4e90f961e0b7d17806e89c473`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f8d0b4a3f27cf1a39f48bba91eb19979169c8dad7ae170ce73bfc8b2aac51024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f5108d4489e4d518004eb9e00c2242f0d87c8f8635e504ef985206a130780d`

```dockerfile
```

-	Layers:
	-	`sha256:c8d3b2ed30209e5c60f77298e0d95aa2ef885c1d9a45625a632513a0b2a6b0cb`  
		Last Modified: Sat, 19 Sep 2026 00:47:48 GMT  
		Size: 4.1 MB (4131017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f3851aeb0c6235707704ac6a1bb078fb347b3205b0b2140200edb83f2cc1808`  
		Last Modified: Sat, 19 Sep 2026 00:47:48 GMT  
		Size: 7.2 KB (7177 bytes)  
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
$ docker pull buildpack-deps@sha256:7030736d096c81e6aa306121d3c7f3a785690da73c9173ecfb56c021e978c12f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75980610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72469b084cbdcab908201a263498aed5a4a82b0880271311261f6f87d2b251af`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ed31c9e60ce1a6be6408e895cbec6f288830a2b2ede0980f6ecaf787438fc946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4124841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:625fc891f896e215e3698f13c3e1634c63cc65727968c0c69ef1d18402a347c9`

```dockerfile
```

-	Layers:
	-	`sha256:79e462e4fdd59f5b24642fab1ccd7f3641a4cc9c21192bcad5c03cf1582b088f`  
		Last Modified: Thu, 27 Aug 2026 00:25:27 GMT  
		Size: 4.1 MB (4117717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e44c20e1fe170bba6bb1de1cbd72eeb0e9702258489a3f98c809cd894efca65`  
		Last Modified: Thu, 27 Aug 2026 00:25:26 GMT  
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
