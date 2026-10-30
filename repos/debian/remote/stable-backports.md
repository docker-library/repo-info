## `debian:stable-backports`

```console
$ docker pull debian@sha256:0707db394785e7841a5f59b328fbf597f39f505ea668bb93df0dd479edfbe050
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
$ docker pull debian@sha256:bf62cc31accddf72657cf3eac32cabc05d513415ad0429ba004b68ebba0d2445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49408120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc55e7fe14c97e350cb59150287854ae2868ca8396a1763503c35e9644702f3c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1793059200'
# Wed, 28 Oct 2026 01:13:33 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8dc552be1ce33ad90d463bb43c58f81f72520e02a43701a612c8b8436f8f936f`  
		Last Modified: Wed, 28 Oct 2026 00:11:10 GMT  
		Size: 49.4 MB (49407896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841539b4776faee6eb4ebbb7a75cd0aecdcc883fc179ecd0ec3f4aafc333094c`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d54622352d36b1606993c512562db7be26c6a02141407088577a6ead42110fc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d9dd3faa7e16788533fade469b56668d19ed0ed322a0c9b4a736fce645d25c`

```dockerfile
```

-	Layers:
	-	`sha256:b3e47ff10708590f03e6c82244781591c2ac11f690d6c6792507948c1c78dd7b`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38cc8038890f56228571f4bd3dd55ce6a52e47e9d41bc87736e4db03dd84c704`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:a22c77727fe38edb66e2221b3de4a68db094a01c08b87613be6fcbcdb3a5c5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47576353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d269e497594a5ec6895efbcdd2b358522762f4ceca71716f3006e3c1fda19126`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1793059200'
# Wed, 28 Oct 2026 01:13:06 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0a947c64b4b300986572dc1d5fe5c93acdd83d2ef21a9880d124d4b76b1d90c4`  
		Last Modified: Wed, 28 Oct 2026 00:10:01 GMT  
		Size: 47.6 MB (47576128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edd981b80382de615238312a09f1b3c7dc322a5da62467cdbb5c3119afb39d8`  
		Last Modified: Wed, 28 Oct 2026 01:13:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7d82b29ccb5d4c5348c9df413074f7a6f9e985d8753fefbc77ccd47a3f7b6b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129ddf8cff75452a0c62bbfafd798c04790360b1cd8fef776eed2ef96433a3ff`

```dockerfile
```

-	Layers:
	-	`sha256:663fac08e3cbacc65347fd6c489f20ca842ff2cc5517fca814a8bd8251b84e72`  
		Last Modified: Wed, 28 Oct 2026 01:13:13 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f40441a01ebae29435d6ac588e563d4008b0008ee67582b2d8615ecae1cd5531`  
		Last Modified: Wed, 28 Oct 2026 01:13:13 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:971e16d862f5ebc9299af1f986e5fd3ffd30cbf3ab9d5d53b49bef902fddf212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45829603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40469eddbed3e2752de96fc53aa58981d19cc2155a82160fdadb99170684fe10`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1793059200'
# Wed, 28 Oct 2026 01:13:31 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:afab83826c3a0bc2d275e748ed46b190f8f7648b062c93203d08395c13b9c2fc`  
		Last Modified: Wed, 28 Oct 2026 00:11:22 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b83ad1a656127b5b001a1c7e10c88c18ab3a943d829db841e01871df47733a`  
		Last Modified: Wed, 28 Oct 2026 01:13:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e3b09cda2ffaa6040f754dafcda081e381fa40dee38cd44d40776f8715129dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e238e81779f6bef638a6d367dd6a362431e737457f4f1687cb70b6287d6f6db`

```dockerfile
```

-	Layers:
	-	`sha256:cbb72dd10d23040dded94755c798c368001972f6810f87617b66641e4f4f5a14`  
		Last Modified: Wed, 28 Oct 2026 01:13:38 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc7de289af6516081646c85ef0acc1d52c27563a2694cabfe62a479c1266f14e`  
		Last Modified: Wed, 28 Oct 2026 01:13:38 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:f7051893b07395be7c1c3a77e74db962677ff131a0e955b7a840821603725ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49776403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb5ba72d99f01e2090bf8682a349c454d21afa8008d02b3caa22ca0a38fcc7a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1793059200'
# Wed, 28 Oct 2026 01:13:17 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8f9a6b3946164dc8c2e86342c1bca79a69f6f190a8b9696f92736335044dffdf`  
		Last Modified: Wed, 28 Oct 2026 00:10:38 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7393b9d3cebdf1c949b5ecf0d20422d35144345f1c6003541a600542ffb2673a`  
		Last Modified: Wed, 28 Oct 2026 01:13:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:3515eae20da52480d3960b3d986ff5adf8e18138e09f9573f40e8d06d5f3c4fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437c036b092aa4660ff5b85c949b58e700b5759d49e53ec3163c9a31716e613f`

```dockerfile
```

-	Layers:
	-	`sha256:9a89761dd7000ea649d5e29634006aa285aa90a223a9d940b402b1405f6110e2`  
		Last Modified: Wed, 28 Oct 2026 01:13:24 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:241889839a309b91c50c42fcb28d7d7fe8bbccc018236e97b8fae720eb037232`  
		Last Modified: Wed, 28 Oct 2026 01:13:24 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:6647dcd432e3f667eda19910d60635ac6a3530daeffc71203a01b1293c2a91b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50921788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c073982b9eb669d249c55abe00edb30116cdce0b890d7120266632bca10438`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1793059200'
# Wed, 28 Oct 2026 01:13:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e5712b5cdaf6d989e90bfdd2c00c5c98666d1296866e7389fe645e359933f15a`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 50.9 MB (50921563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19091278fe67f50c04710fff54fdd5f10714a8d9255f343850f3a14e23d67755`  
		Last Modified: Wed, 28 Oct 2026 01:13:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:aa5629c65e196599a6144f63f00af103ff71c9193d6d63e0e260825211283b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e060d0fb2d0973e114515033cb6192405c98ac7245bba01888a500f71d6e6a2`

```dockerfile
```

-	Layers:
	-	`sha256:4c61f6992b0b9828957c19ae5081f18d94adcbcd7896e6ece49d76d3d72874f0`  
		Last Modified: Wed, 28 Oct 2026 01:13:42 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cda9f10a22cac90dbca2282d65bc930077984e79675dc3b9a2f05b7cf80ceaa`  
		Last Modified: Wed, 28 Oct 2026 01:13:42 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:10d756b77e2c1e6c4030d6674f7078c8ea7051622fcedaf275ecdc5d859bc38a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53222470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1c7175671e3b9fea87348fb5210291c8e681f5c9d6bf9ef86cae3964a166a9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1793059200'
# Wed, 28 Oct 2026 01:25:44 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4e19a7006efdb115cc043c4334899aca56f544f0999b3ac9960ddb46bf990c38`  
		Last Modified: Wed, 28 Oct 2026 00:23:10 GMT  
		Size: 53.2 MB (53222246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722f1d9560acbf7496797b53a8020496da207f15ab646d1f38c43b6398c9a5d6`  
		Last Modified: Wed, 28 Oct 2026 01:26:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f3c4b061ca64a469b40a8b0325211e72b24e56f0e1332342693d0550d56318fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1bd6c7472c885c46b79a0a73bf761e63effa5190d0f58ad61cdc988f321d42`

```dockerfile
```

-	Layers:
	-	`sha256:59dfd33313e94f8fbfcfc77a137ce1b1464716ece3684ef43914740bf3ed2da3`  
		Last Modified: Wed, 28 Oct 2026 01:26:19 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fd0689a6cebdd12341bb1e5e915a2c3f5e4b00e74ca7356f49dcbc9e6705955`  
		Last Modified: Wed, 28 Oct 2026 01:26:18 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:383ab016d5f618f46cacc3a13037e9174e146187d0eef046ecd281b8fe61a748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47891764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba24b96da9428f11969b3fba594787ae3947116b96eaa211009b7101e072813`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1793059200'
# Fri, 30 Oct 2026 09:01:45 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9d924bd60c86d7c78accc40bd01b73b855edec5d6d502ec982d0f667445094c9`  
		Last Modified: Wed, 28 Oct 2026 18:29:28 GMT  
		Size: 47.9 MB (47891541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088f5e6922a6e2fd275fc17a9c35ade6ef3d352f582c13d8bef3290bdfc44129`  
		Last Modified: Fri, 30 Oct 2026 09:02:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:84ca98271a6289bfee48dac6c94cafebc46022b9bf18b4f9744032df50c64e8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7f63cfe807aa63631aeb8d149bae06fb7ebd89d3dada57fe4c405783995e43`

```dockerfile
```

-	Layers:
	-	`sha256:c42ce18d5dd3cfb0ae6af6fed9e0e2dd7ac26f1a37cfd4d2f7036f7d5e6bb231`  
		Last Modified: Fri, 30 Oct 2026 09:02:43 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc6b56e7d8192af10ccc4d9799d55ce54718d8903011de6809f1a74ae9836765`  
		Last Modified: Fri, 30 Oct 2026 09:02:42 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:ea91b3eb256206fe5a3b57010d7e78be5a025187576022ed8f9e3fefa80d6fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49476055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2019324d1e25423133ee76ca9ebf2455b49bc5f32097aabf414499a38aef988e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1793059200'
# Wed, 28 Oct 2026 01:12:09 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d3dd873293874a99f4a1c1ae4689a64d10ca2eed094f96e730305cf19bd5ef68`  
		Last Modified: Wed, 28 Oct 2026 00:10:06 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f710ce794d7e5bea74a7d45f71646a32f5eaf27f485066c00cf972141195ca`  
		Last Modified: Wed, 28 Oct 2026 01:12:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ffdf3a99fde7a9cfc87e725b8ce754fcf5536f6facbbad0a450dd03b9099fcbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bac106d11ea6369f4f31761214f8ee22b837e7b48d9edd6d41c18d965ca601d`

```dockerfile
```

-	Layers:
	-	`sha256:559b4c01987fed61bd4144557050607139d18f02ccdb4076200e1a9370d7911c`  
		Last Modified: Wed, 28 Oct 2026 01:12:20 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dcdc3e3a7c369ba1c97b4f06595b7824d1330ead69d1bdd1449d35257397d7f`  
		Last Modified: Wed, 28 Oct 2026 01:12:20 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
