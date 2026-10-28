## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:0615c7b86717e9ea6eb9b8b0e31fe51d51b32e9cc2201085109adfa39a7f9cde
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:539e995db363492a9acfe6a22242fbacf550506016942838b1f9067331c9a4ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158961792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde7b24b05e0b94626a0f57a17f0aa27b86b177d61be088f8d595041c299658f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:46:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:28:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:3d602fe6e83e5691b73ab5466fa03dded2a529d6f5a370782662dda052c92fad`  
		Last Modified: Wed, 21 Oct 2026 01:28:22 GMT  
		Size: 80.6 MB (80612880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d8a856744afe6a8cf23b8b706c19e620c898e07ba553b69d96aeca40b5bd7ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8301765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9715119b133ab7446d0484b8c091532b0f09aee96be06c5dec922f4de16c2731`

```dockerfile
```

-	Layers:
	-	`sha256:b0e8f2c79cb5fdf12acf0ef1ed741f7ac6ed0bbb79e04665c3196c600de9425f`  
		Last Modified: Wed, 21 Oct 2026 01:28:20 GMT  
		Size: 8.3 MB (8294511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af6876639d67509afc53340653cf1f8a83292f1cc041d02a2d7adfd5c1dae268`  
		Last Modified: Wed, 21 Oct 2026 01:28:19 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:73d94da52688bc89581ef793d1017abc37084156569dc835a7645416bd981899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146243191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e311803026be217cae599a40322e40c7fb7124728e08cb0d074e569db923b3a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 02:21:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4f8c8c9832ba5ab44b1cb736fe733a2663fb538ecc67b64e0a78250794d28137`  
		Last Modified: Wed, 28 Oct 2026 00:10:52 GMT  
		Size: 46.0 MB (46006728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbdac6a50e441fddec66db56e671f3bd4b0bd332067e055f6b30571ca7534ae`  
		Last Modified: Wed, 28 Oct 2026 02:21:36 GMT  
		Size: 25.6 MB (25631085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3807fcb52ced060599928200bf3683ffee06ef8c781e0f98ca59102f36dbec00`  
		Last Modified: Wed, 28 Oct 2026 03:47:41 GMT  
		Size: 74.6 MB (74605378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a14049aa39639dacaed3cb1db3caea752959da722de41a37d9aa755f28121479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8310164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacad3b0adb5f8dea1f27e7880085711d5369cf998207f49ead5f62909b5739a`

```dockerfile
```

-	Layers:
	-	`sha256:d8e664e9cd411f5547ff77dee95c72acf511aea3a21826dff6cfd9c70d045cdb`  
		Last Modified: Wed, 28 Oct 2026 03:47:39 GMT  
		Size: 8.3 MB (8302846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1ef5d545916150d58febb6afd77e568dff069c94fb8f93b58f44d70a2dba615`  
		Last Modified: Wed, 28 Oct 2026 03:47:39 GMT  
		Size: 7.3 KB (7318 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0fa6ea71acae6b10f9755d3eed0222d337e1ec20999cdf9111091cefd6e93858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156090823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70e42ab00f3a290f73afe8e52be41152e710de0292d8b1b3e98eb59bafe16ab`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26000dc41a1c54f7e37df3ed2559cbdd938d3e840049d2fa8e784530215c9230`  
		Last Modified: Wed, 28 Oct 2026 01:43:26 GMT  
		Size: 27.4 MB (27368863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a631551ffe898213f271b65134be8dfd9e4a7e387db2f9f740ee6408fface2c4`  
		Last Modified: Wed, 28 Oct 2026 02:35:17 GMT  
		Size: 79.6 MB (79552745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bcbdc73fc213c08f72c073de72468420a01dcd7bc7a591a57eec50641f476b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8319745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4964b0de376fc381e59377367f917e5d848fee7fa43ea38de95715d354ec39f`

```dockerfile
```

-	Layers:
	-	`sha256:cb93cf3527ece21558eb636e39f032301cf73e1c0bdddea5f76cef5ced9aa8fa`  
		Last Modified: Wed, 28 Oct 2026 02:35:16 GMT  
		Size: 8.3 MB (8312411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ae94826c2f7ce5bbd3664dd4ae8695d4824f6eb207afab130defc56c6f4cf8c`  
		Last Modified: Wed, 28 Oct 2026 02:35:15 GMT  
		Size: 7.3 KB (7334 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1e3dba534e7414890e8c2ac64b0e89a242d455b2e3692c3cbfbd8d158d51b242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163146842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e012b5ec3fcf9ec865f8727177feb99c1a38990c4b92bdc0818c1d9253a42a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:48:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:d3b0bdf587a4c61d52c001566cd13a70f11271cccfe379bda7fe332b00e4fa91`  
		Last Modified: Wed, 21 Oct 2026 01:24:54 GMT  
		Size: 82.5 MB (82539407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3e2d988f9033c8281597b375a98d0799e6505867dc765c7aecb04c476c75503d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8297151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0920cb3995dadc0428b91f3e25f14e5d7401451f17ebf56acd54149b70b7f216`

```dockerfile
```

-	Layers:
	-	`sha256:7f10ec569f7fcff830e600ba60ae2d4f9d44b1e5b421c672ac8feb71919fdc14`  
		Last Modified: Wed, 21 Oct 2026 01:24:52 GMT  
		Size: 8.3 MB (8289919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db3e17aeb8217f0d67c6e6524037c15cbd22d179b080b9424556a440d31913f5`  
		Last Modified: Wed, 21 Oct 2026 01:24:51 GMT  
		Size: 7.2 KB (7232 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:301a76c32d7f04f832fc2d0445038c0375732bba432c00ecc4f06d197f89d2a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171559297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ababd2cb581c90df9a80f6c3b277ecc1ef01f5751e2a183ec934c1cdeb0f9e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 04:21:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:05:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:dd40917f0668d8e74c8d4fbe184f96b5dac0d9907b4541cf0452cf6b1456b97d`  
		Last Modified: Wed, 21 Oct 2026 12:06:20 GMT  
		Size: 86.5 MB (86532393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:02728bab67e354e2ad5980c0c3f1b9c2c93f968e9635929f87d22ce68375955d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8309201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5cf333149fbab4578b18eb64019414675c1b461f3ab6322dc64339515bcb01`

```dockerfile
```

-	Layers:
	-	`sha256:63145c2aa9073d924a21cc74430c35f920926f096d1eeac0aa54bed8ae6c7da6`  
		Last Modified: Wed, 21 Oct 2026 12:06:18 GMT  
		Size: 8.3 MB (8301915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ce989e5a8ad6912b91d22544e53226886284c125856ca1ef4ecdc41765b8228`  
		Last Modified: Wed, 21 Oct 2026 12:06:17 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8d93fcb7d63a2c153ce40f4de1b5ed5302e7ed23c3abdc86eb7f621ef5051783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152813069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b652b0b3e9b33a91ad8282b8c4904b812789be24a1493239ca94570c91dc744c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1792531975'
# Thu, 22 Oct 2026 05:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 03:57:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:29af863f47901f0573d3798e2d1e207aa2429f06d14b2d1c48747fc578d89be6`  
		Last Modified: Tue, 20 Oct 2026 23:35:20 GMT  
		Size: 47.2 MB (47229749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7950d5578fe85c450babdcea1474b50a7b9919ee831d6cae6b5afdba749683`  
		Last Modified: Thu, 22 Oct 2026 05:12:58 GMT  
		Size: 27.6 MB (27580769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a916a6b8ec734128e62813052874a990d39d5aff71a5f5dccc1dd8fa14789716`  
		Last Modified: Sat, 24 Oct 2026 04:01:45 GMT  
		Size: 78.0 MB (78002551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ddd89c480c96cbdaff4f025d4a1287834325a09014aaed44d697cd7503d5a8aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8290877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d84798ea4e44e5a3d3b8f7a20d8118e0f66482658b5bf5fb69edef12a3e13d6`

```dockerfile
```

-	Layers:
	-	`sha256:67da79500fe2a46a474f4ee496ddddc14391576454424ed1a6908da6fc41c72f`  
		Last Modified: Sat, 24 Oct 2026 04:01:34 GMT  
		Size: 8.3 MB (8283591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:786cf7c9496474f0395405f7fe51c2421876b1b530015ae52c0ff70af827abaf`  
		Last Modified: Sat, 24 Oct 2026 04:01:32 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0c042b68b0e8c69b589b32b138ba22e99534f7f834cc6ca23c81fcb49e06f26d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157103936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce4383265c51bc4e4f2981911e9a6f587cb227e421e7e6fbd6215957ff89950`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 01:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:79edc23f4d007a5d68321da0f6f635fc09ff99d74360878ee17602fef353d3d4`  
		Last Modified: Wed, 21 Oct 2026 01:56:32 GMT  
		Size: 80.4 MB (80369666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a738d8e49a087d14be7da5445072a197b318775a54b84f1fc92450dc6a44399b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8301813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b5c11021821ffc06ff951ab19c38dd9c8ace86a77bc457ebba3110690b8f4e`

```dockerfile
```

-	Layers:
	-	`sha256:e7d4751acf41b6e38a579055ee42072e40e455f437e033dd87e2e0ab8f7173c8`  
		Last Modified: Wed, 21 Oct 2026 01:56:31 GMT  
		Size: 8.3 MB (8294559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60a42262368c16c0ebe8626b5cd73597f6313459b827dd9080366a7299335619`  
		Last Modified: Wed, 21 Oct 2026 01:56:30 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json
