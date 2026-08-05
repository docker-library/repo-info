## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:0065d1a91546a65ed0dc8b6288d463ee73fe2b9a929033dbdd74f4d065b851f6
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
$ docker pull buildpack-deps@sha256:0a65de17e72eb745cc3634388727e57d543e9acb249ebf07738a85ca2c18f11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (74950951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ddd4e866a55a634dfcc896e1a2dfcc28631f85d68ca948ae77a4217e2fd1a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d3e2a6aebebb215cb48c40c9a76db6f86bdeb11470df721caf339f7255890ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4127313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:786c32b868d5782cea05af38c2297a49dd27a0793051f97b176cd9370b03262c`

```dockerfile
```

-	Layers:
	-	`sha256:76bdbbfbd04a09416994e0bab5b86ec1f7522c9fdbb2cae0a6eab27594b82cb0`  
		Last Modified: Wed, 05 Aug 2026 00:45:13 GMT  
		Size: 4.1 MB (4120227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:137907537e04726497b013aa2ac8cea0b762a8c8ed0bbd1700823be845f4a8f9`  
		Last Modified: Wed, 05 Aug 2026 00:45:13 GMT  
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
$ docker pull buildpack-deps@sha256:b65901ee86a4ccbaf0faed85cdfca7b05c217bc30e787a5bc996ea2a0ad5fc6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69380253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8108ad7caddca9977b0b7269d8199ee6f8ff3d8743af2d01a0887f71475823bf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8bac7fdc99a9f96cdc34c1e6bd063d1181c8b53c33b04b3148bc8b98c7d8e`  
		Last Modified: Tue, 14 Jul 2026 02:31:35 GMT  
		Size: 23.6 MB (23636524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:515d0443a99b367ea0a9ba2494d0daa70af528770bc94776100714a5fb69a46a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958299827198d19ae3148641e3921e1114aa97694070e5d6749ec0f50969aa5b`

```dockerfile
```

-	Layers:
	-	`sha256:920e8c253138e2d5cb047ab8e6d9deecff16dabcd7eb31b7951a449952c3283f`  
		Last Modified: Tue, 14 Jul 2026 02:31:34 GMT  
		Size: 4.1 MB (4121728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7098fe7713ab60765c48dd8968ce951d8acfbc32bbc9597125949b74daa9007`  
		Last Modified: Tue, 14 Jul 2026 02:31:34 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:274c5e8e7d378c58a8592265f8e59e42926cee7cf3e8558023ee0f5a5a87a16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74700821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ead45a2fac09a2b75f1e2b7ee23ed0f6cc52651eb4df727ad586ce3bf3004eb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d55fb9b26fe05c252426cc0684a09e4988c7de0b6ecf0f06d3cc249201d6f092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5848f14f6cf2917a5489f1df40b005651091da050114084b84cb3920632c3b6d`

```dockerfile
```

-	Layers:
	-	`sha256:2717975326389f536a330d62df93d8e936a363754726e57d1d74cfbe54b37776`  
		Last Modified: Wed, 05 Aug 2026 00:47:37 GMT  
		Size: 4.1 MB (4121132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f47cd90441745ea5eeb757c89868de6d637159b1a8e2fad884504502b1cd370`  
		Last Modified: Wed, 05 Aug 2026 00:47:37 GMT  
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
$ docker pull buildpack-deps@sha256:a029a34f19bc93c35577ac531eb89c5089427416d8afb80c102d9abf35ff838d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80155076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04759bbed2f579897f0a5959ad9ebdaf9a1b856398e1fef19c95d2b6f1947ebe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:51:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83863de742cad030811407b90530c7828802e9f11207386bf85f9d35cecf7503`  
		Last Modified: Tue, 14 Jul 2026 03:51:33 GMT  
		Size: 27.0 MB (27021065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8ca915092dd684c83e0adab4e78d16daa31ad395aea42cd36f3aaf98c3c59a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4131199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0896e543929fec5c0cc298259c46976cfbb160a9dd860fea324a9589f66634c6`

```dockerfile
```

-	Layers:
	-	`sha256:c809e3eb0f76698ed22e0c00218be42bc07322b4dfb54cce057340b93525c7f2`  
		Last Modified: Tue, 14 Jul 2026 03:51:32 GMT  
		Size: 4.1 MB (4124075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3abdcf511f40201866731b7fe7465e6afc666189c3ccea4633da81782b757641`  
		Last Modified: Tue, 14 Jul 2026 03:51:32 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:2b6f828f67a93d805363b3829a349ef105cc993c6b6113c9d04803aebc24d5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72766084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5471878dcb2124f14b6e43c9fe3b03d18db4c5d3b586a7fcf718180d265a1e24`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:32:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b6761664ee64309406635b6031c9fbc23849478cf77b4c50cc52c5a5a142dc8`  
		Last Modified: Tue, 14 Jul 2026 00:28:46 GMT  
		Size: 47.8 MB (47797790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56e13f8ba5640653be74c77c11bec4a12b57a50d949a7c24cdcd88f8c959bb5`  
		Last Modified: Wed, 15 Jul 2026 17:33:59 GMT  
		Size: 25.0 MB (24968294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2775563fac9d27326b164cb3938085d7aebaca3f71335f9a156fceafcc89b21a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4119862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f045c34a26e48e77ae11aa05484876c6651cd194f95d28f45ab42f0f312541b`

```dockerfile
```

-	Layers:
	-	`sha256:a0cecda60400cd72e645dbc3e542e06708ec8401acd755372a75fae5234457f3`  
		Last Modified: Wed, 15 Jul 2026 17:33:56 GMT  
		Size: 4.1 MB (4112739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e62b667fc6e7653fff923c3389a938c80298a4ea4e879c3c2dc26aa93a285d65`  
		Last Modified: Wed, 15 Jul 2026 17:33:55 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:27cf38d7738742f2d43a203db382399fa360273e8cffcfab96c0fb36bf9e697b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76185986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2276d18b963c596aa11950a7db49fdfd307810904f5e0ff928e5fc8c65e7a453`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b239a9d975f9d9fa57e1220f0c69c47026f4fbd5094809de5f822f2097b9c`  
		Last Modified: Wed, 05 Aug 2026 01:08:39 GMT  
		Size: 26.8 MB (26804560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3906a882bc5cd03f927e3d898d6a147dd2d358fd7951fa03d0a73119113eb861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f94d5f2a8dbc54cab85222e9d0c751f587411621bb750d0545099617f816ead`

```dockerfile
```

-	Layers:
	-	`sha256:7c7a64ba9bd199a7a2d195f1a1531e32d91ef3ae199e718fd7b3d314695fa3f1`  
		Last Modified: Wed, 05 Aug 2026 01:08:39 GMT  
		Size: 4.1 MB (4121637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3615716f0dfa4f12347e874657e7adc06c8934f85985349d12360b719617302`  
		Last Modified: Wed, 05 Aug 2026 01:08:38 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
