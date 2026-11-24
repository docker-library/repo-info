## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:775687999efbdd785f17c1adc773d62ef86503beac63d916704a63c511df2143
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

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c3731dbff7972bb3c1d782335fe7aeb8b4c091ff491144f3fea37efb59397a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79585585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57cc0376905ce47a33853e3dc866c8d705fdd701808ea87979c0116d9116074`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:39:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b4bf59dc11d7745e5ddcfcb9b9a074170e9b2ccc7ede1d4670741b1fa0d98245`  
		Last Modified: Tue, 24 Nov 2026 03:40:37 GMT  
		Size: 50.9 MB (50936743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de6b24fe48c1cd81c1befb37d00d2abbe8f9b1386596d24f87aac96d757087d`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 28.6 MB (28648842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3b08f5aa301d9387f23b0f0ced3eeae1021451af9eaea44d256d7d6b60c62d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7b1a839cf2e3054a8550adea51fd2531281f47d2b32b362aa4a35738d10aeb`

```dockerfile
```

-	Layers:
	-	`sha256:20d6702a7557a5a2a813736647034800dc402119f8d2a51e3f2cf67a4ac8adbc`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 4.1 MB (4089389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c31f124baa723a61bd493b9337e007302c665542a7a9e5736680284f7ad1275`  
		Last Modified: Tue, 24 Nov 2026 04:39:29 GMT  
		Size: 6.8 KB (6760 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4b7e1231a5b0ea4f3221848b7eadf3c260ca82f06ebaa1f552b6cb6259687ef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72569579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10768fbe55b5f71b38d5e364f3dd56ee073447e0459de0e0d8b58e6da1b6678e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 05:16:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:15f7d8845a2966c0d4009c970edb646e84bf944f70c55d612c7ab26026dc690c`  
		Last Modified: Tue, 24 Nov 2026 03:40:39 GMT  
		Size: 46.9 MB (46858051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739024664fc98c4cad27ff33ccd71d7511ee41d4052be9a7760d04f0daa22c27`  
		Last Modified: Tue, 24 Nov 2026 05:16:22 GMT  
		Size: 25.7 MB (25711528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:069e648d3cb49e1fe01f07078a0a715109d18aeae8bbb77234c2cc8372d0bf08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4097910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76164aecc2e6387f94d5e6768e8b67b2417639b2f4e087f712c8a493dc9d651a`

```dockerfile
```

-	Layers:
	-	`sha256:5633ea4000a1f723ccb4f866fc73b281a1ee43a9db0d26ce7dd4268b76c705f6`  
		Last Modified: Tue, 24 Nov 2026 05:16:22 GMT  
		Size: 4.1 MB (4091086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd5de59973bf7c01ecc3966ea4b156bd40b8275f767863a916cc6b032c1dc5e5`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 6.8 KB (6824 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:09ed5b577744820ff13ac92560de90c76b45b22b082e4a76600e35ba86172e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77493540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4898c4a0b11cc5dfed45f475d4e75d67d2e3d8a059d6cf711f75ed3d18929251`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:43:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e0251d745f256ccdf7e2644516fa7dcb9490b66fb6c78c0179db84762ba3a203`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 50.1 MB (50059613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afadab468b21c12cf81914472f5a2f1fe467e4c34110a9cd5f2b16cdfc3ea200`  
		Last Modified: Tue, 24 Nov 2026 04:43:41 GMT  
		Size: 27.4 MB (27433927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f6935c1a319805ea5b09316f2a8855dc4412f40d183c0c0be35fb4740061daa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d89a2bc312a210fb22d4bd670f6e2ca8b70c144676fc2c54dc9b1db1d1474e`

```dockerfile
```

-	Layers:
	-	`sha256:a73cc00590695baf000f416a99d3d40b778bb3b45cdbbb8a4d6a75b2e2682264`  
		Last Modified: Tue, 24 Nov 2026 04:43:40 GMT  
		Size: 4.1 MB (4092266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5e77a7b5777456bf618a290e729fd82ee96d7bb26e6690719d00e7a260028d9`  
		Last Modified: Tue, 24 Nov 2026 04:43:40 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:80c26fbbb63dc15bb7fdb16cfb28ada22fdd827931e35c0a9db7d771e4117196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81780521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f45420e3e8f877b88d203c256134126e89e10dbbaa5267f8e6692d240663e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:95b9c91a07cce4096de861d03d4aee07ac0ec481852d0a91ee07530ac54eac64`  
		Last Modified: Tue, 24 Nov 2026 03:40:42 GMT  
		Size: 52.0 MB (52015015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2c44aab2c9ad7e86708670b706440ea5fa3af7b9d038b561160e5c22f70a04`  
		Last Modified: Tue, 24 Nov 2026 04:41:18 GMT  
		Size: 29.8 MB (29765506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:350adf3c1f44c87f46c31e1a9571e9309d4e50c02a05fe63dc79676c714e4189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a61ddd28bfd916fd64d01170174572c703740124e2ccde77f89c2413f8979c5`

```dockerfile
```

-	Layers:
	-	`sha256:ff4bcb5d28962fa3c0671ba98a6c71c1b6fd10b665581ce1f22f9b1407cbe94c`  
		Last Modified: Tue, 24 Nov 2026 04:41:17 GMT  
		Size: 4.1 MB (4086369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a7580118ecbd712cbe40ef5a5ad980b2055c84328a95449ec6f9f4757a4cea2`  
		Last Modified: Tue, 24 Nov 2026 04:41:17 GMT  
		Size: 6.7 KB (6739 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f8f1f176f291d59d04c9181d87b4d5d48c613fe852f3f369ad915e915041d084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86108508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f54794623d27c5e60daf35e91882eabc5efde62d40c100e24b8692477ebc7c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 06:51:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4ebf0fbcdccc51c74cfbde249b871cea750097c0d83a090f6131b12b826a125c`  
		Last Modified: Tue, 24 Nov 2026 03:41:07 GMT  
		Size: 55.5 MB (55543208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a9431370af78b9e5954b48e62965caaa77180aa5e2479421e9276b756446da`  
		Last Modified: Tue, 24 Nov 2026 06:52:09 GMT  
		Size: 30.6 MB (30565300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:11c25d3d34f128783345bb9d6b0b85074bbcaa8c9136c2ebc0a2e76880977ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4100360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dbe1d2c17aad499d106f664e555beb84bce849031b62e686080a1987672455c`

```dockerfile
```

-	Layers:
	-	`sha256:e73143497c0f29b81205e3415903b1038eb9e8b325f3c890cb00eda96eb8e677`  
		Last Modified: Tue, 24 Nov 2026 06:52:08 GMT  
		Size: 4.1 MB (4093567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f70948a03e5d16abdbe89974d9ea278c3e385a7dca9e9d0c0f6dc2ead766c17`  
		Last Modified: Tue, 24 Nov 2026 06:52:08 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8c003cd9e929752532900a2cfad2b569095c2fd44e09c1390db3c7d81e81a4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75513866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c43ac684437c8b08270267600e94002003305405b01f0aaa9a649faeb4670b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1793827419'
# Sat, 07 Nov 2026 04:17:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2a44daf47e48828d223ca6b4fc154f1c7ee2ca485885d87ea4f5dcc10b1b5a17`  
		Last Modified: Thu, 05 Nov 2026 07:24:48 GMT  
		Size: 48.0 MB (47998145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41287effa0e06eddb28da33c86eae36e643e313113302af50d32ee5da49633e`  
		Last Modified: Sat, 07 Nov 2026 04:19:35 GMT  
		Size: 27.5 MB (27515721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:088b309a79ba5f9deb51effc4a1f54cea2e8771885b1de1fe8f87fffbb81471b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4073007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a468ab1d8546751ea668d832d6b6132ce80a329ab53b70d2beaac0b4c59e15`

```dockerfile
```

-	Layers:
	-	`sha256:7e4076675f267dfc48721bd4b59f9cc82046348d5ecacd0ce85d7599661dae1d`  
		Last Modified: Sat, 07 Nov 2026 04:19:32 GMT  
		Size: 4.1 MB (4066215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56f58350f379925e1c5715f9f1a476e5cd24b3f6480ca02c5650e63f1d6531c5`  
		Last Modified: Sat, 07 Nov 2026 04:19:30 GMT  
		Size: 6.8 KB (6792 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:f5d48992d9d02624c108996ff82eb94c69da42cb4fcf3cc5737d96663f6cca52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77792176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2283a0d0dedcd9c2ad7ee460541f95739e75b81fe1b4780f6ea248ca4ecd49d9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:53:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:91e68e6c1616381c30fc94dbb11d38e18f243cca44e507b1722a83aafb5cd542`  
		Last Modified: Tue, 24 Nov 2026 03:39:08 GMT  
		Size: 50.0 MB (49961333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fce3bd81cc1ef6e2dafedf27edd1972b4fc22addc139175f9267f2d5a213a33`  
		Last Modified: Tue, 24 Nov 2026 04:53:25 GMT  
		Size: 27.8 MB (27830843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:081efdc00d42e71757d7c77fea14b70d2a311e7166c918b94d8ced367e0263f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4098305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c250e68f507c14c282f5e05832b73bf572a37a3f510e9bceda427771711ef7`

```dockerfile
```

-	Layers:
	-	`sha256:ad28b211d497997399d4a4acd6dd639ded01c9babb845464967f43eea14a5209`  
		Last Modified: Tue, 24 Nov 2026 04:53:25 GMT  
		Size: 4.1 MB (4091544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bdf43b7e6c9e2899016be8211b093eaefdec5b32d4801b993faa3f42ce65e76`  
		Last Modified: Tue, 24 Nov 2026 04:53:25 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
